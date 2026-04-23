package com.listenglish.service;

import com.listenglish.dto.VideoIngestRequest;
import com.listenglish.entity.SubtitleSegment;
import com.listenglish.entity.Video;
import com.listenglish.repository.SubtitleSegmentRepository;
import com.listenglish.repository.VideoRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.List;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.*;

/**
 * Tests UNITARIOS del servicio de ingesta.
 *
 * --- ¿Qué son tests unitarios? ---
 * Prueban UNA clase en aislamiento. Sus dependencias (repositorios) son
 * reemplazadas por "mocks" — objetos falsos que simulan el comportamiento real.
 *
 * Ventajas vs tests de integración:
 * - Muy rápidos (milisegundos, sin BD, sin Docker)
 * - Verifican la lógica de negocio de forma precisa
 * - Fácil de probar casos de error y edge cases
 *
 * Desventajas:
 * - No detectan problemas de integración (¿el SQL es correcto? ¿los índices funcionan?)
 * - Por eso necesitamos AMBOS tipos de tests.
 *
 * --- Anotaciones ---
 *
 * @ExtendWith(MockitoExtension.class):
 *   Activa Mockito como extensión de JUnit 5. Procesa las anotaciones @Mock
 *   y @InjectMocks automáticamente. Sin esto, los mocks serían null.
 *
 * @Mock:
 *   Crea un objeto falso del tipo indicado. Todos sus métodos devuelven
 *   valores por defecto (null, 0, lista vacía) a menos que se configure
 *   con `when(...).thenReturn(...)`.
 */
@ExtendWith(MockitoExtension.class)
class VideoIngestionServiceTest {

    @Mock
    private VideoRepository videoRepository;

    @Mock
    private SubtitleSegmentRepository subtitleSegmentRepository;

    private VideoIngestionService service;

    @BeforeEach
    void setUp() {
        // Creamos el servicio manualmente pasando los mocks.
        // Esto funciona porque usamos inyección por constructor.
        // Con @InjectMocks también funcionaría, pero ser explícito es más claro.
        service = new VideoIngestionService(videoRepository, subtitleSegmentRepository);
    }

    @Test
    void ingest_conRequestValida_guardaVideoYSegmentos() {
        // ARRANGE: preparar los datos y configurar los mocks
        var request = new VideoIngestRequest(
                "dQw4w9WgXcQ",
                "Never Gonna Give You Up",
                "Rick Astley",
                213,
                "british",
                List.of(
                        new VideoIngestRequest.SegmentRequest("Never gonna give you up", 0.5, 3.2),
                        new VideoIngestRequest.SegmentRequest("Never gonna let you down", 3.5, 6.1)
                )
        );

        // Simulamos que el vídeo NO existe todavía
        when(videoRepository.findByYoutubeId("dQw4w9WgXcQ")).thenReturn(Optional.empty());

        // Simulamos que save() devuelve un Video con id=1
        Video savedVideo = new Video("dQw4w9WgXcQ", "Never Gonna Give You Up", "Rick Astley", 213);
        // Usamos reflexión para setear el id (es privado y no tiene setter)
        setId(savedVideo, 1L);
        when(videoRepository.save(any(Video.class))).thenReturn(savedVideo);

        // Simulamos que save() de segmentos devuelve el segmento con un id
        SubtitleSegment seg1 = new SubtitleSegment(savedVideo, "Never gonna give you up",
                java.math.BigDecimal.valueOf(0.5), java.math.BigDecimal.valueOf(3.2));
        setId(seg1, 10L);
        SubtitleSegment seg2 = new SubtitleSegment(savedVideo, "Never gonna let you down",
                java.math.BigDecimal.valueOf(3.5), java.math.BigDecimal.valueOf(6.1));
        setId(seg2, 11L);
        when(subtitleSegmentRepository.save(any(SubtitleSegment.class)))
                .thenReturn(seg1, seg2);

        // ACT: ejecutar el método bajo prueba
        var response = service.ingest(request);

        // ASSERT: verificar el resultado
        assertThat(response.videoId()).isEqualTo(1L);
        assertThat(response.youtubeId()).isEqualTo("dQw4w9WgXcQ");
        assertThat(response.segmentsIngested()).isEqualTo(2);

        // Verificar que se llamó a save() exactamente una vez para el vídeo
        verify(videoRepository, times(1)).save(any(Video.class));

        // Verificar que se guardaron exactamente 2 segmentos
        verify(subtitleSegmentRepository, times(2)).save(any(SubtitleSegment.class));

        // Verificar que se actualizó el search_vector de cada segmento
        verify(subtitleSegmentRepository, times(1)).updateSearchVector(10L);
        verify(subtitleSegmentRepository, times(1)).updateSearchVector(11L);
    }

    @Test
    void ingest_conYoutubeIdDuplicado_lanzaExcepcion() {
        var request = new VideoIngestRequest(
                "existente123",
                "Título",
                "Canal",
                100,
                "american",
                List.of()
        );

        // Simulamos que el vídeo YA existe
        when(videoRepository.findByYoutubeId("existente123"))
                .thenReturn(Optional.of(new Video("existente123", "Otro título", "Canal", 100)));

        // assertThatThrownBy verifica que se lanza exactamente la excepción esperada
        assertThatThrownBy(() -> service.ingest(request))
                .isInstanceOf(VideoIngestionService.VideoAlreadyExistsException.class)
                .hasMessageContaining("existente123");

        // Verificar que nunca se intentó guardar nada en la BD
        verify(videoRepository, never()).save(any());
        verify(subtitleSegmentRepository, never()).save(any());
    }

    @Test
    void ingest_sinDurationSeconds_calculaDesdeFinalUltimoSegmento() {
        var request = new VideoIngestRequest(
                "abc123",
                "Título",
                "Canal",
                null,  // durationSeconds = null
                "american",
                List.of(
                        new VideoIngestRequest.SegmentRequest("First sentence", 0.0, 5.0),
                        new VideoIngestRequest.SegmentRequest("Second sentence", 5.5, 12.7)
                )
        );

        when(videoRepository.findByYoutubeId(any())).thenReturn(Optional.empty());

        // Capturamos el argumento que se pasa a videoRepository.save()
        // para verificar qué durationSeconds se calculó
        ArgumentCaptor<Video> videoCaptor = ArgumentCaptor.forClass(Video.class);

        Video savedVideo = new Video("abc123", "Título", "Canal", 13);
        setId(savedVideo, 2L);
        when(videoRepository.save(videoCaptor.capture())).thenReturn(savedVideo);

        SubtitleSegment mockSeg = new SubtitleSegment(savedVideo, "txt",
                java.math.BigDecimal.ZERO, java.math.BigDecimal.ONE);
        setId(mockSeg, 20L);
        when(subtitleSegmentRepository.save(any())).thenReturn(mockSeg);

        service.ingest(request);

        // El último segmento termina en 12.7 → Math.ceil(12.7) = 13
        assertThat(videoCaptor.getValue().getDurationSeconds()).isEqualTo(13);
    }

    @Test
    void ingest_conListaDeSegmentosVacia_guardaVideoSinSegmentos() {
        var request = new VideoIngestRequest(
                "novideo123",
                "Vídeo sin segmentos",
                "Canal",
                60,
                null,
                List.of()
        );

        when(videoRepository.findByYoutubeId(any())).thenReturn(Optional.empty());
        Video savedVideo = new Video("novideo123", "Vídeo sin segmentos", "Canal", 60);
        setId(savedVideo, 3L);
        when(videoRepository.save(any())).thenReturn(savedVideo);

        var response = service.ingest(request);

        assertThat(response.segmentsIngested()).isEqualTo(0);
        verify(subtitleSegmentRepository, never()).save(any());
        verify(subtitleSegmentRepository, never()).updateSearchVector(anyLong());
    }

    // Utilidad de test: setea el id de una entidad usando reflexión.
    // En producción el id lo asigna la BD; en tests necesitamos controlarlo.
    // La reflexión permite acceder a campos privados, lo cual es aceptable en tests.
    private void setId(Object entity, Long id) {
        try {
            var field = entity.getClass().getDeclaredField("id");
            field.setAccessible(true);
            field.set(entity, id);
        } catch (Exception e) {
            throw new RuntimeException("No se pudo setear el id en el test", e);
        }
    }
}
