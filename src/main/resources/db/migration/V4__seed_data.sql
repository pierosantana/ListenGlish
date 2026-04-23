-- Seed: 21 vídeos y 7.200+ segmentos de transcripciones reales
-- TRUNCATE + RESTART IDENTITY garantiza IDs limpios en cualquier entorno.
TRUNCATE subtitle_segment, video RESTART IDENTITY CASCADE;

INSERT INTO video (id, youtube_id, title, channel, duration_seconds, language, accent) VALUES
  (54, 'iG9CE55wbtY', 'Do schools kill creativity?', 'TED', 1165, 'en', 'british'),
  (76, 'iCvmsMzlF7o', 'The power of vulnerability', 'TED', 1214, 'en', 'american'),
  (77, 'D9Ihs241zeg', 'The danger of a single story', 'TED', 1115, 'en', 'nigerian'),
  (78, 'qp0HIF3SfI4', 'How great leaders inspire action', 'TED', 1079, 'en', 'american'),
  (79, 'Ks-_Mh1QhMc', 'Your body language may shape who you are', 'TED', 1249, 'en', 'american'),
  (80, 'eIho2S0ZahI', 'How to speak so that people want to listen', 'TED', 591, 'en', 'british'),
  (81, 'rrkrvAUbU9Y', 'The puzzle of motivation', 'TED', 1110, 'en', 'american'),
  (82, '1UufaK3pQMg', 'Is this how AI might destroy humanity?', 'BBC World Service', 488, 'en', NULL),
  (83, '8S0FDjFBj8o', 'How to sound smart in your TEDx Talk', 'TEDx Talks', 355, 'en', 'american'),
  (84, 'y2zZISLiIB4', 'Great Leaders INSPIRE Others To Do Great Things', 'Simon Sinek', 126, 'en', 'american'),
  (85, 't260757b_vU', 'Stop Rambling: The 3-2-1 Speaking Trick That Makes You Sound Like A CEO', 'BigDeal by Codie Sanchez', 1553, 'en', 'american'),
  (86, 'uOcKF-aLHyw', 'How to Get Whatever You Want', 'GrindBuddy', 279, 'en', 'american'),
  (87, 'gfGJdaHFjhs', 'How to Avoid Distractions & Stay Focused', 'Huberman Lab', 738, 'en', 'american'),
  (88, 'TQMbvJNRpLE', 'How to Achieve Your Most Ambitious Goals', 'TEDx Talks', 1066, 'en', 'american'),
  (89, 'H14bBuluwB8', 'Grit: The Power of Passion and Perseverance', 'TED', 366, 'en', 'american'),
  (90, 'orQKfIXMiA8', 'You Need to Be Bored. Here''s Why.', 'Harvard Business Review', 345, 'en', 'american'),
  (91, 'X1L1Hd3xfrU', 'How reading changes the way your brain works', 'BBC World Service', 352, 'en', 'british'),
  (92, 'o_XVt5rdpFY', 'The secrets of learning a new language', 'TED', 644, 'en', 'american'),
  (93, 'oO8w6XcXJUs', 'Elon Musk Full Interview', 'Real Time with Bill Maher', 1266, 'en', 'american'),
  (94, 'oX7OduG1YmI', 'The Future Mark Zuckerberg Is Trying To Build', 'Cleo Abram', 2829, 'en', 'american'),
  (95, 'Pkj-BLHs6dE', 'Jensen Huang of Nvidia on the Future of AI', 'DealBook Summit', 1689, 'en', 'american');

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (227, 54, 'Good morning. How are you?', 27.103, 29.678, NULL),
  (228, 54, '(Audience) Good.', 29.702, 31.105, NULL),
  (229, 54, 'It''s been great, hasn''t it?', 31.129, 32.797, NULL),
  (230, 54, 'I''ve been blown away by the whole thing.', 33.408, 35.729, NULL),
  (231, 54, 'In fact, I''m leaving.', 35.753, 37.245, NULL),
  (232, 54, '(Laughter)', 37.269, 41.175, NULL),
  (233, 54, 'There have been three themes
running through the conference,', 43.096, 46.663, NULL),
  (234, 54, 'which are relevant
to what I want to talk about.', 46.687, 48.973, NULL),
  (235, 54, 'One is the extraordinary
evidence of human creativity', 48.997, 53.467, NULL),
  (236, 54, 'in all of the presentations that we''ve had', 53.491, 55.904, NULL),
  (237, 54, 'and in all of the people here;', 55.928, 57.880, NULL),
  (238, 54, 'just the variety of it
and the range of it.', 57.904, 60.555, NULL),
  (239, 54, 'The second is that it''s put us in a place', 61.158, 63.301, NULL),
  (240, 54, 'where we have no idea
what''s going to happen', 63.325, 65.822, NULL),
  (241, 54, 'in terms of the future.', 65.846, 67.237, NULL),
  (242, 54, 'No idea how this may play out.', 67.261, 70.246, NULL),
  (243, 54, 'I have an interest in education.', 70.270, 71.892, NULL),
  (244, 54, 'Actually, what I find is,
everybody has an interest in education.', 71.916, 76.328, NULL),
  (245, 54, 'Don''t you?', 76.352, 77.669, NULL),
  (246, 54, 'I find this very interesting.', 77.693, 79.095, NULL),
  (247, 54, 'If you''re at a dinner party,
and you say you work in education --', 79.119, 83.077, NULL),
  (248, 54, 'actually, you''re not often
at dinner parties, frankly.', 83.101, 85.846, NULL),
  (249, 54, '(Laughter)', 85.870, 89.666, NULL),
  (250, 54, 'If you work in education,
you''re not asked.', 89.690, 92.118, NULL),
  (251, 54, '(Laughter)', 92.142, 95.321, NULL),
  (252, 54, 'And you''re never asked back, curiously.
That''s strange to me.', 95.345, 99.304, NULL),
  (253, 54, 'But if you are, and you say to somebody,', 99.328, 101.544, NULL),
  (254, 54, 'you know, they say, "What do you do?"', 101.568, 103.346, NULL),
  (255, 54, 'and you say you work in education,', 103.370, 105.058, NULL),
  (256, 54, 'you can see the blood run from their face.', 105.082, 107.131, NULL),
  (257, 54, 'They''re like, "Oh my God. Why me?"', 107.155, 108.840, NULL),
  (258, 54, '(Laughter)', 108.864, 111.140, NULL),
  (259, 54, '"My one night out all week."', 111.164, 112.688, NULL),
  (260, 54, '(Laughter)', 112.712, 115.322, NULL),
  (261, 54, 'But if you ask about their education,
they pin you to the wall,', 115.346, 118.587, NULL),
  (262, 54, 'because it''s one of those things
that goes deep with people, am I right?', 118.611, 122.018, NULL),
  (263, 54, 'Like religion and money and other things.', 122.042, 125.535, NULL),
  (264, 54, 'So I have a big interest in education,
and I think we all do.', 125.559, 130.001, NULL),
  (265, 54, 'We have a huge vested interest in it,', 130.025, 131.827, NULL),
  (266, 54, 'partly because it''s education
that''s meant to take us into this future', 131.851, 135.171, NULL),
  (267, 54, 'that we can''t grasp.', 135.195, 136.849, NULL),
  (268, 54, 'If you think of it,', 136.873, 138.039, NULL),
  (269, 54, 'children starting school this year
will be retiring in 2065.', 138.063, 144.185, NULL),
  (270, 54, 'Nobody has a clue,', 145.272, 146.843, NULL),
  (271, 54, 'despite all the expertise that''s been
on parade for the past four days,', 146.867, 150.426, NULL),
  (272, 54, 'what the world will look like
in five years'' time.', 150.450, 152.976, NULL),
  (273, 54, 'And yet, we''re meant
to be educating them for it.', 153.000, 155.294, NULL),
  (274, 54, 'So the unpredictability,
I think, is extraordinary.', 155.318, 157.868, NULL),
  (275, 54, 'And the third part of this
is that we''ve all agreed, nonetheless,', 157.892, 161.320, NULL),
  (276, 54, 'on the really extraordinary
capacities that children have --', 161.344, 166.649, NULL),
  (277, 54, 'their capacities for innovation.', 166.673, 169.008, NULL),
  (278, 54, 'I mean, Sirena last night
was a marvel, wasn''t she?', 169.032, 171.821, NULL),
  (279, 54, 'Just seeing what she could do.', 171.845, 173.515, NULL),
  (280, 54, 'And she''s exceptional, but I think
she''s not, so to speak,', 173.539, 179.088, NULL),
  (281, 54, 'exceptional in the whole of childhood.', 179.112, 182.017, NULL),
  (282, 54, 'What you have there is a person
of extraordinary dedication', 182.041, 184.872, NULL),
  (283, 54, 'who found a talent.', 184.896, 186.067, NULL),
  (284, 54, 'And my contention is,
all kids have tremendous talents,', 186.091, 188.677, NULL),
  (285, 54, 'and we squander them, pretty ruthlessly.', 188.701, 191.095, NULL),
  (286, 54, 'So I want to talk about education,', 191.119, 192.976, NULL),
  (287, 54, 'and I want to talk about creativity.', 193.000, 194.872, NULL),
  (288, 54, 'My contention is that creativity now
is as important in education as literacy,', 194.896, 200.992, NULL),
  (289, 54, 'and we should treat it
with the same status.', 201.016, 203.803, NULL),
  (290, 54, '(Applause)', 203.827, 204.939, NULL),
  (291, 54, 'Thank you.', 204.963, 206.152, NULL),
  (292, 54, '(Applause)', 206.176, 210.461, NULL),
  (293, 54, 'That was it, by the way.
Thank you very much.', 210.485, 212.771, NULL),
  (294, 54, '(Laughter)', 212.795, 214.910, NULL),
  (295, 54, 'So, 15 minutes left.', 214.934, 216.611, NULL),
  (296, 54, '(Laughter)', 216.635, 219.792, NULL),
  (297, 54, '"Well, I was born ... "', 219.816, 221.487, NULL),
  (298, 54, '(Laughter)', 221.511, 224.982, NULL),
  (299, 54, 'I heard a great story recently --
I love telling it --', 225.006, 227.656, NULL),
  (300, 54, 'of a little girl
who was in a drawing lesson.', 227.680, 230.051, NULL),
  (301, 54, 'She was six, and she was
at the back, drawing,', 230.075, 232.250, NULL),
  (302, 54, 'and the teacher said this girl
hardly ever paid attention,', 232.274, 235.034, NULL),
  (303, 54, 'and in this drawing lesson, she did.', 235.058, 236.844, NULL),
  (304, 54, 'The teacher was fascinated.', 236.868, 238.208, NULL),
  (305, 54, 'She went over to her,
and she said, "What are you drawing?"', 238.232, 241.021, NULL),
  (306, 54, 'And the girl said,
"I''m drawing a picture of God."', 241.045, 243.536, NULL),
  (307, 54, 'And the teacher said, "But nobody
knows what God looks like."', 244.642, 247.960, NULL),
  (308, 54, 'And the girl said,
"They will in a minute."', 247.984, 250.072, NULL),
  (309, 54, '(Laughter)', 250.096, 256.878, NULL),
  (310, 54, 'When my son was four in England --', 261.662, 264.389, NULL),
  (311, 54, 'actually, he was four
everywhere, to be honest.', 264.413, 266.604, NULL),
  (312, 54, '(Laughter)', 266.628, 268.380, NULL),
  (313, 54, 'If we''re being strict about it,
wherever he went, he was four that year.', 268.404, 271.791, NULL),
  (314, 54, 'He was in the Nativity play.
Do you remember the story?', 271.815, 274.453, NULL),
  (315, 54, '(Laughter)', 274.477, 275.696, NULL),
  (316, 54, 'No, it was big, it was a big story.', 275.720, 277.547, NULL),
  (317, 54, 'Mel Gibson did the sequel,
you may have seen it.', 277.571, 279.876, NULL),
  (318, 54, '(Laughter)', 279.900, 281.161, NULL),
  (319, 54, '"Nativity II."', 281.185, 282.746, NULL),
  (320, 54, 'But James got the part of Joseph,
which we were thrilled about.', 282.770, 286.654, NULL),
  (321, 54, 'We considered this to be
one of the lead parts.', 286.678, 289.584, NULL),
  (322, 54, 'We had the place crammed
full of agents in T-shirts:', 289.608, 292.095, NULL),
  (323, 54, '"James Robinson IS Joseph!"', 292.119, 293.533, NULL),
  (324, 54, '(Laughter)', 293.557, 294.590, NULL),
  (325, 54, 'He didn''t have to speak, but you know
the bit where the three kings come in?', 294.614, 298.242, NULL),
  (326, 54, 'They come in bearing gifts,
gold, frankincense and myrrh.', 298.266, 300.951, NULL),
  (327, 54, 'This really happened.', 300.975, 302.133, NULL),
  (328, 54, 'We were sitting there, and I think
they just went out of sequence,', 302.157, 305.273, NULL),
  (329, 54, 'because we talked to the little boy
afterward and said,', 305.297, 307.876, NULL),
  (330, 54, '"You OK with that?" They said,
"Yeah, why? Was that wrong?"', 307.900, 310.696, NULL),
  (331, 54, 'They just switched.', 310.720, 311.876, NULL),
  (332, 54, 'The three boys came in, four-year-olds
with tea towels on their heads.', 311.900, 315.210, NULL),
  (333, 54, 'They put these boxes down, and the first
boy said, "I bring you gold."', 315.234, 318.556, NULL),
  (334, 54, 'And the second boy said,
"I bring you myrrh."', 318.580, 320.854, NULL),
  (335, 54, 'And the third boy said, "Frank sent this."', 320.878, 322.960, NULL),
  (336, 54, '(Laughter)', 322.984, 328.461, NULL),
  (337, 54, 'What these things have in common
is that kids will take a chance.', 335.711, 338.801, NULL),
  (338, 54, 'If they don''t know, they''ll have a go.', 338.825, 342.307, NULL),
  (339, 54, 'Am I right? They''re not
frightened of being wrong.', 342.331, 345.360, NULL),
  (340, 54, 'I don''t mean to say that being wrong
is the same thing as being creative.', 345.924, 349.431, NULL),
  (341, 54, 'What we do know is,
if you''re not prepared to be wrong,', 349.886, 352.976, NULL),
  (342, 54, 'you''ll never come up
with anything original --', 353.000, 355.367, NULL),
  (343, 54, 'if you''re not prepared to be wrong.', 355.391, 357.971, NULL),
  (344, 54, 'And by the time they get to be adults,
most kids have lost that capacity.', 357.995, 362.438, NULL),
  (345, 54, 'They have become
frightened of being wrong.', 362.462, 364.926, NULL),
  (346, 54, 'And we run our companies like this.', 364.950, 366.640, NULL),
  (347, 54, 'We stigmatize mistakes.', 366.664, 368.316, NULL),
  (348, 54, 'And we''re now running
national education systems', 368.340, 370.642, NULL),
  (349, 54, 'where mistakes are the worst
thing you can make.', 370.666, 373.205, NULL),
  (350, 54, 'And the result is that
we are educating people', 373.800, 376.908, NULL),
  (351, 54, 'out of their creative capacities.', 376.932, 379.274, NULL),
  (352, 54, 'Picasso once said this, he said
that all children are born artists.', 379.298, 383.725, NULL),
  (353, 54, 'The problem is to remain
an artist as we grow up.', 383.749, 386.971, NULL),
  (354, 54, 'I believe this passionately,
that we don''t grow into creativity,', 386.995, 390.227, NULL),
  (355, 54, 'we grow out of it.', 390.251, 391.956, NULL),
  (356, 54, 'Or rather, we get educated out of it.', 391.980, 393.863, NULL),
  (357, 54, 'So why is this?', 394.607, 396.510, NULL),
  (358, 54, 'I lived in Stratford-on-Avon
until about five years ago.', 397.124, 399.907, NULL),
  (359, 54, 'In fact, we moved from Stratford
to Los Angeles.', 399.931, 402.184, NULL),
  (360, 54, 'So you can imagine
what a seamless transition this was.', 402.912, 405.536, NULL),
  (361, 54, '(Laughter)', 405.560, 406.976, NULL),
  (362, 54, 'Actually, we lived in a place
called Snitterfield,', 407.000, 409.376, NULL),
  (363, 54, 'just outside Stratford,', 409.400, 410.651, NULL),
  (364, 54, 'which is where
Shakespeare''s father was born.', 410.675, 413.310, NULL),
  (365, 54, 'Are you struck by a new thought? I was.', 413.334, 415.457, NULL),
  (366, 54, 'You don''t think of Shakespeare
having a father, do you?', 415.481, 418.076, NULL),
  (367, 54, 'Do you?', 418.100, 419.473, NULL),
  (368, 54, 'Because you don''t think
of Shakespeare being a child, do you?', 419.497, 422.388, NULL),
  (369, 54, 'Shakespeare being seven?', 422.412, 423.676, NULL),
  (370, 54, 'I never thought of it.', 423.700, 424.876, NULL),
  (371, 54, 'I mean, he was seven at some point.', 424.900, 426.592, NULL),
  (372, 54, 'He was in somebody''s
English class, wasn''t he?', 426.616, 428.882, NULL),
  (373, 54, '(Laughter)', 428.906, 435.693, NULL),
  (374, 54, 'How annoying would that be?', 435.717, 437.046, NULL),
  (375, 54, '(Laughter)', 437.070, 440.070, NULL),
  (376, 54, '"Must try harder."', 444.939, 446.279, NULL),
  (377, 54, '(Laughter)', 446.303, 449.703, NULL),
  (378, 54, 'Being sent to bed by his dad,
to Shakespeare, "Go to bed, now!"', 450.559, 453.540, NULL),
  (379, 54, 'To William Shakespeare.', 453.564, 454.722, NULL),
  (380, 54, '"And put the pencil down!"', 454.746, 456.017, NULL),
  (381, 54, '(Laughter)', 456.041, 457.116, NULL),
  (382, 54, '"And stop speaking like that."', 457.140, 458.617, NULL),
  (383, 54, '(Laughter)', 458.641, 462.220, NULL),
  (384, 54, '"It''s confusing everybody."', 462.244, 463.568, NULL),
  (385, 54, '(Laughter)', 463.592, 468.862, NULL),
  (386, 54, 'Anyway, we moved
from Stratford to Los Angeles,', 468.886, 474.072, NULL),
  (387, 54, 'and I just want to say a word
about the transition.', 474.096, 476.572, NULL),
  (388, 54, 'Actually, my son didn''t want to come.', 476.596, 478.398, NULL),
  (389, 54, 'I''ve got two kids;
he''s 21 now, my daughter''s 16.', 478.422, 480.817, NULL),
  (390, 54, 'He didn''t want to come to Los Angeles.', 480.841, 483.044, NULL),
  (391, 54, 'He loved it, but he had
a girlfriend in England.', 483.068, 486.856, NULL),
  (392, 54, 'This was the love of his life, Sarah.', 486.880, 489.737, NULL),
  (393, 54, 'He''d known her for a month.', 489.761, 491.136, NULL),
  (394, 54, '(Laughter)', 491.160, 492.510, NULL),
  (395, 54, 'Mind you, they''d had
their fourth anniversary,', 492.534, 495.813, NULL),
  (396, 54, 'because it''s a long time when you''re 16.', 495.837, 497.773, NULL),
  (397, 54, 'He was really upset on the plane.', 497.797, 499.438, NULL),
  (398, 54, 'He said, "I''ll never find
another girl like Sarah."', 499.462, 501.869, NULL),
  (399, 54, 'And we were rather pleased
about that, frankly --', 501.893, 504.207, NULL),
  (400, 54, '(Laughter)', 504.231, 508.464, NULL),
  (401, 54, 'because she was the main reason
we were leaving the country.', 512.434, 515.380, NULL),
  (402, 54, '(Laughter)', 515.404, 518.404, NULL),
  (403, 54, 'But something strikes you
when you move to America', 521.141, 523.503, NULL),
  (404, 54, 'and travel around the world:', 523.527, 524.894, NULL),
  (405, 54, 'every education system on earth
has the same hierarchy of subjects.', 524.918, 528.565, NULL),
  (406, 54, 'Every one. Doesn''t matter where you go.', 528.589, 530.492, NULL),
  (407, 54, 'You''d think it would be
otherwise, but it isn''t.', 530.516, 532.786, NULL),
  (408, 54, 'At the top are mathematics and languages,
then the humanities.', 532.810, 535.791, NULL),
  (409, 54, 'At the bottom are the arts.
Everywhere on earth.', 535.815, 538.106, NULL),
  (410, 54, 'And in pretty much every system, too,
there''s a hierarchy within the arts.', 538.130, 542.495, NULL),
  (411, 54, 'Art and music are normally given
a higher status in schools', 542.519, 545.376, NULL),
  (412, 54, 'than drama and dance.', 545.400, 546.828, NULL),
  (413, 54, 'There isn''t an education
system on the planet', 546.852, 548.959, NULL),
  (414, 54, 'that teaches dance every day to children', 548.983, 550.902, NULL),
  (415, 54, 'the way we teach them mathematics.', 550.926, 552.576, NULL),
  (416, 54, 'Why?', 552.600, 553.758, NULL),
  (417, 54, 'Why not?', 553.782, 554.949, NULL),
  (418, 54, 'I think this is rather important.', 554.973, 556.567, NULL),
  (419, 54, 'I think math is very important,
but so is dance.', 556.591, 558.855, NULL),
  (420, 54, 'Children dance all the time
if they''re allowed to, we all do.', 558.879, 561.759, NULL),
  (421, 54, 'We all have bodies, don''t we?
Did I miss a meeting?', 561.783, 564.233, NULL),
  (422, 54, '(Laughter)', 564.257, 567.621, NULL),
  (423, 54, 'Truthfully, what happens is,
as children grow up,', 567.645, 569.966, NULL),
  (424, 54, 'we start to educate them progressively
from the waist up.', 569.990, 572.704, NULL),
  (425, 54, 'And then we focus on their heads.', 572.728, 574.354, NULL),
  (426, 54, 'And slightly to one side.', 574.378, 575.868, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (427, 54, 'If you were to visit education as an alien', 577.044, 579.115, NULL),
  (428, 54, 'and say "What''s it for, public education?"', 579.139, 582.120, NULL),
  (429, 54, 'I think you''d have to conclude,
if you look at the output,', 582.144, 584.871, NULL),
  (430, 54, 'who really succeeds by this,', 584.895, 586.252, NULL),
  (431, 54, 'who does everything they should,', 586.276, 587.976, NULL),
  (432, 54, 'who gets all the brownie points,
who are the winners --', 588.000, 590.731, NULL),
  (433, 54, 'I think you''d have to conclude
the whole purpose of public education', 590.755, 593.993, NULL),
  (434, 54, 'throughout the world', 594.017, 595.215, NULL),
  (435, 54, 'is to produce university professors.', 595.239, 597.218, NULL),
  (436, 54, 'Isn''t it?', 597.718, 598.886, NULL),
  (437, 54, 'They''re the people who come out the top.', 598.910, 600.894, NULL),
  (438, 54, 'And I used to be one, so there.', 600.918, 602.737, NULL),
  (439, 54, '(Laughter)', 602.761, 606.458, NULL),
  (440, 54, 'And I like university professors,', 606.482, 608.082, NULL),
  (441, 54, 'but, you know, we shouldn''t hold them up', 608.106, 610.021, NULL),
  (442, 54, 'as the high-water mark
of all human achievement.', 610.045, 612.976, NULL),
  (443, 54, 'They''re just a form of life.', 613.000, 615.113, NULL),
  (444, 54, 'Another form of life.', 615.137, 616.560, NULL),
  (445, 54, 'But they''re rather curious.', 616.584, 617.981, NULL),
  (446, 54, 'And I say this out of affection for them:', 618.005, 619.969, NULL),
  (447, 54, 'there''s something curious
about professors.', 619.993, 622.068, NULL),
  (448, 54, 'In my experience -- not all of them,
but typically -- they live in their heads.', 622.092, 625.838, NULL),
  (449, 54, 'They live up there
and slightly to one side.', 625.862, 628.005, NULL),
  (450, 54, 'They''re disembodied, you know,
in a kind of literal way.', 628.495, 631.931, NULL),
  (451, 54, 'They look upon their body as a form
of transport for their heads.', 631.955, 635.105, NULL),
  (452, 54, '(Laughter)', 635.129, 641.176, NULL),
  (453, 54, 'Don''t they?', 641.200, 642.577, NULL),
  (454, 54, 'It''s a way of getting
their head to meetings.', 642.601, 644.746, NULL),
  (455, 54, '(Laughter)', 644.770, 649.998, NULL),
  (456, 54, 'If you want real evidence
of out-of-body experiences, by the way,', 650.022, 653.944, NULL),
  (457, 54, 'get yourself along to a residential
conference of senior academics', 653.968, 657.443, NULL),
  (458, 54, 'and pop into the discotheque
on the final night.', 657.467, 659.818, NULL),
  (459, 54, '(Laughter)', 659.842, 662.454, NULL),
  (460, 54, 'And there, you will see it.', 662.478, 663.834, NULL),
  (461, 54, 'Grown men and women
writhing uncontrollably, off the beat.', 663.858, 668.351, NULL),
  (462, 54, '(Laughter)', 668.375, 670.867, NULL),
  (463, 54, 'Waiting until it ends, so they can
go home and write a paper about it.', 670.891, 674.216, NULL),
  (464, 54, '(Laughter)', 674.240, 676.221, NULL),
  (465, 54, 'Our education system is predicated
on the idea of academic ability.', 676.245, 680.106, NULL),
  (466, 54, 'And there''s a reason.', 680.130, 681.301, NULL),
  (467, 54, 'Around the world, there were
no public systems of education,', 681.325, 684.954, NULL),
  (468, 54, 'really, before the 19th century.', 684.978, 687.085, NULL),
  (469, 54, 'They all came into being
to meet the needs of industrialism.', 687.109, 690.356, NULL),
  (470, 54, 'So the hierarchy is rooted on two ideas.', 690.380, 692.432, NULL),
  (471, 54, 'Number one, that the most useful
subjects for work are at the top.', 692.456, 697.018, NULL),
  (472, 54, 'So you were probably steered benignly away
from things at school', 697.042, 700.075, NULL),
  (473, 54, 'when you were a kid,', 700.099, 701.251, NULL),
  (474, 54, 'things you liked,', 701.275, 702.428, NULL),
  (475, 54, 'on the grounds you would never
get a job doing that.', 702.452, 704.894, NULL),
  (476, 54, 'Is that right?', 704.918, 706.069, NULL),
  (477, 54, '"Don''t do music, you''re not
going to be a musician;', 706.093, 708.505, NULL),
  (478, 54, 'don''t do art, you won''t be an artist."', 708.529, 710.380, NULL),
  (479, 54, 'Benign advice -- now, profoundly mistaken.', 710.404, 713.150, NULL),
  (480, 54, 'The whole world
is engulfed in a revolution.', 713.174, 715.319, NULL),
  (481, 54, 'And the second is academic ability,', 715.343, 717.440, NULL),
  (482, 54, 'which has really come to dominate
our view of intelligence,', 717.464, 720.283, NULL),
  (483, 54, 'because the universities design
the system in their image.', 720.307, 723.046, NULL),
  (484, 54, 'If you think of it,', 723.070, 724.221, NULL),
  (485, 54, 'the whole system of public education
around the world is a protracted process', 724.245, 727.909, NULL),
  (486, 54, 'of university entrance.', 727.933, 729.084, NULL),
  (487, 54, 'And the consequence is
that many highly talented,', 729.108, 731.401, NULL),
  (488, 54, 'brilliant, creative people
think they''re not,', 731.425, 733.943, NULL),
  (489, 54, 'because the thing
they were good at at school', 733.967, 736.100, NULL),
  (490, 54, 'wasn''t valued,
or was actually stigmatized.', 736.124, 738.426, NULL),
  (491, 54, 'And I think we can''t afford
to go on that way.', 738.450, 740.679, NULL),
  (492, 54, 'In the next 30 years, according to UNESCO,', 740.703, 742.990, NULL),
  (493, 54, 'more people worldwide will be
graduating through education', 743.014, 746.420, NULL),
  (494, 54, 'than since the beginning of history.', 746.444, 748.639, NULL),
  (495, 54, 'More people.', 748.663, 749.820, NULL),
  (496, 54, 'And it''s the combination
of all the things we''ve talked about:', 749.844, 752.765, NULL),
  (497, 54, 'technology and its
transformational effect on work,', 752.789, 755.182, NULL),
  (498, 54, 'and demography and the huge
explosion in population.', 755.206, 757.684, NULL),
  (499, 54, 'Suddenly, degrees aren''t worth anything.', 757.708, 760.145, NULL),
  (500, 54, 'Isn''t that true?', 760.169, 761.846, NULL),
  (501, 54, 'When I was a student,
if you had a degree, you had a job.', 761.870, 764.851, NULL),
  (502, 54, 'If you didn''t have a job,
it''s because you didn''t want one.', 764.875, 767.673, NULL),
  (503, 54, 'And I didn''t want one, frankly.', 767.697, 770.031, NULL),
  (504, 54, '(Laughter)', 770.055, 771.646, NULL),
  (505, 54, 'But now kids with degrees
are often heading home', 771.670, 775.475, NULL),
  (506, 54, 'to carry on playing video games,', 775.499, 777.293, NULL),
  (507, 54, 'because you need an MA
where the previous job required a BA,', 777.317, 780.365, NULL),
  (508, 54, 'and now you need a PhD for the other.', 780.389, 782.176, NULL),
  (509, 54, 'It''s a process of academic inflation.', 782.200, 783.976, NULL),
  (510, 54, 'And it indicates the whole structure
of education is shifting beneath our feet.', 784.000, 787.756, NULL),
  (511, 54, 'We need to radically rethink
our view of intelligence.', 787.780, 790.322, NULL),
  (512, 54, 'We know three things about intelligence.', 790.346, 792.270, NULL),
  (513, 54, 'One, it''s diverse.', 792.294, 793.445, NULL),
  (514, 54, 'We think about the world in all the ways
that we experience it.', 793.469, 796.450, NULL),
  (515, 54, 'We think visually, we think in sound,
we think kinesthetically.', 796.474, 799.451, NULL),
  (516, 54, 'We think in abstract terms,
we think in movement.', 799.475, 801.796, NULL),
  (517, 54, 'Secondly, intelligence is dynamic.', 801.820, 803.816, NULL),
  (518, 54, 'If you look at the interactions
of a human brain,', 804.673, 806.976, NULL),
  (519, 54, 'as we heard yesterday
from a number of presentations,', 807.000, 810.023, NULL),
  (520, 54, 'intelligence is wonderfully interactive.', 810.047, 812.205, NULL),
  (521, 54, 'The brain isn''t divided into compartments.', 812.229, 814.467, NULL),
  (522, 54, 'In fact, creativity --', 814.872, 816.446, NULL),
  (523, 54, 'which I define as the process of having
original ideas that have value --', 816.470, 820.490, NULL),
  (524, 54, 'more often than not comes about', 820.514, 822.444, NULL),
  (525, 54, 'through the interaction of different
disciplinary ways of seeing things.', 822.468, 826.025, NULL),
  (526, 54, 'By the way, there''s a shaft of nerves
that joins the two halves of the brain,', 827.472, 831.103, NULL),
  (527, 54, 'called the corpus callosum.', 831.127, 832.425, NULL),
  (528, 54, 'It''s thicker in women.', 832.449, 833.670, NULL),
  (529, 54, 'Following off from Helen yesterday,', 834.471, 836.194, NULL),
  (530, 54, 'this is probably why women
are better at multitasking.', 836.218, 839.229, NULL),
  (531, 54, 'Because you are, aren''t you?', 839.253, 841.078, NULL),
  (532, 54, 'There''s a raft of research,
but I know it from my personal life.', 841.102, 844.436, NULL),
  (533, 54, 'If my wife is cooking a meal
at home, which is not often ...', 844.865, 847.800, NULL),
  (534, 54, 'thankfully.', 849.224, 850.390, NULL),
  (535, 54, '(Laughter)', 850.414, 853.104, NULL),
  (536, 54, 'No, she''s good at some things.', 853.128, 854.580, NULL),
  (537, 54, 'But if she''s cooking,
she''s dealing with people on the phone,', 854.604, 857.499, NULL),
  (538, 54, 'she''s talking to the kids,
she''s painting the ceiling --', 857.523, 860.170, NULL),
  (539, 54, '(Laughter)', 860.194, 861.209, NULL),
  (540, 54, 'she''s doing open-heart surgery over here.', 861.233, 863.258, NULL),
  (541, 54, 'If I''m cooking, the door
is shut, the kids are out,', 863.282, 866.280, NULL),
  (542, 54, 'the phone''s on the hook,', 866.304, 867.543, NULL),
  (543, 54, 'if she comes in, I get annoyed.', 867.567, 869.257, NULL),
  (544, 54, 'I say, "Terry, please,
I''m trying to fry an egg in here."', 869.281, 872.071, NULL),
  (545, 54, '(Laughter)', 872.095, 878.825, NULL),
  (546, 54, '"Give me a break."', 879.254, 880.454, NULL),
  (547, 54, '(Laughter)', 880.478, 882.198, NULL),
  (548, 54, 'Actually, do you know
that old philosophical thing,', 882.222, 884.721, NULL),
  (549, 54, '"If a tree falls in a forest,
and nobody hears it, did it happen?"', 884.745, 888.228, NULL),
  (550, 54, 'Remember that old chestnut?', 888.252, 889.581, NULL),
  (551, 54, 'I saw a great T-shirt
recently, which said,', 889.605, 892.515, NULL),
  (552, 54, '"If a man speaks his mind in a forest,
and no woman hears him,', 892.539, 895.976, NULL),
  (553, 54, 'is he still wrong?"', 896.000, 897.396, NULL),
  (554, 54, '(Laughter)', 897.420, 903.026, NULL),
  (555, 54, 'And the third thing about intelligence is,', 905.089, 907.128, NULL),
  (556, 54, 'it''s distinct.', 907.152, 908.521, NULL),
  (557, 54, 'I''m doing a new book at the moment
called "Epiphany,"', 909.114, 911.618, NULL),
  (558, 54, 'which is based on a series
of interviews with people', 911.642, 914.083, NULL),
  (559, 54, 'about how they discovered their talent.', 914.107, 915.971, NULL),
  (560, 54, 'I''m fascinated by
how people got to be there.', 915.995, 918.116, NULL),
  (561, 54, 'It''s really prompted by a conversation
I had with a wonderful woman', 918.140, 921.331, NULL),
  (562, 54, 'who maybe most people
have never heard of, Gillian Lynne.', 921.355, 924.032, NULL),
  (563, 54, 'Have you heard of her? Some have.', 924.056, 925.652, NULL),
  (564, 54, 'She''s a choreographer,
and everybody knows her work.', 925.676, 928.128, NULL),
  (565, 54, 'She did "Cats" and "Phantom of the Opera."', 928.152, 930.168, NULL),
  (566, 54, 'She''s wonderful.', 930.192, 931.343, NULL),
  (567, 54, 'I used to be on the board
of The Royal Ballet, as you can see.', 931.367, 934.314, NULL),
  (568, 54, '(Laughter)', 934.338, 936.267, NULL),
  (569, 54, 'Gillian and I had lunch one day.
I said, "How did you get to be a dancer?"', 936.291, 939.816, NULL),
  (570, 54, 'It was interesting.', 939.840, 940.991, NULL),
  (571, 54, 'When she was at school,
she was really hopeless.', 941.015, 943.262, NULL),
  (572, 54, 'And the school, in the ''30s,
wrote to her parents and said,', 943.286, 946.075, NULL),
  (573, 54, '"We think Gillian
has a learning disorder."', 946.099, 948.134, NULL),
  (574, 54, 'She couldn''t concentrate;
she was fidgeting.', 948.158, 950.256, NULL),
  (575, 54, 'I think now they''d say she had ADHD.', 950.280, 952.157, NULL),
  (576, 54, 'Wouldn''t you?', 952.181, 953.480, NULL),
  (577, 54, 'But this was the 1930s, and ADHD
hadn''t been invented at this point.', 953.504, 957.681, NULL),
  (578, 54, 'It wasn''t an available condition.', 957.705, 959.745, NULL),
  (579, 54, '(Laughter)', 959.769, 962.984, NULL),
  (580, 54, 'People weren''t aware they could have that.', 963.008, 965.050, NULL),
  (581, 54, '(Laughter)', 965.074, 967.499, NULL),
  (582, 54, 'Anyway, she went to see this specialist.', 967.523, 971.699, NULL),
  (583, 54, 'So, this oak-paneled room,
and she was there with her mother,', 971.723, 975.430, NULL),
  (584, 54, 'and she was led and sat
on this chair at the end,', 975.454, 977.781, NULL),
  (585, 54, 'and she sat on her hands for 20 minutes,', 977.805, 979.750, NULL),
  (586, 54, 'while this man talked to her mother', 979.774, 981.455, NULL),
  (587, 54, 'about all the problems
Gillian was having at school,', 981.479, 983.943, NULL),
  (588, 54, 'because she was disturbing people,
her homework was always late, and so on.', 983.967, 987.516, NULL),
  (589, 54, 'Little kid of eight.', 987.540, 988.691, NULL),
  (590, 54, 'In the end, the doctor went
and sat next to Gillian and said,', 988.715, 991.626, NULL),
  (591, 54, '"I''ve listened to all these
things your mother''s told me.', 991.650, 994.363, NULL),
  (592, 54, 'I need to speak to her privately.', 994.387, 995.981, NULL),
  (593, 54, 'Wait here. We''ll be back.
We won''t be very long,"', 996.005, 998.321, NULL),
  (594, 54, 'and they went and left her.', 998.345, 1000.995, NULL),
  (595, 54, 'But as they went out of the room,', 1001.019, 1002.659, NULL),
  (596, 54, 'he turned on the radio
that was sitting on his desk.', 1002.683, 1005.539, NULL),
  (597, 54, 'And when they got out of the room,', 1005.563, 1007.201, NULL),
  (598, 54, 'he said to her mother,
"Just stand and watch her."', 1007.225, 1009.603, NULL),
  (599, 54, 'And the minute they left the room,', 1009.627, 1012.139, NULL),
  (600, 54, 'she was on her feet, moving to the music.', 1012.163, 1014.758, NULL),
  (601, 54, 'And they watched for a few minutes,
and he turned to her mother and said,', 1014.782, 1018.285, NULL),
  (602, 54, '"Mrs. Lynne, Gillian isn''t sick.', 1018.309, 1020.288, NULL),
  (603, 54, 'She''s a dancer.', 1020.312, 1021.976, NULL),
  (604, 54, 'Take her to a dance school."', 1023.338, 1024.724, NULL),
  (605, 54, 'I said, "What happened?"', 1024.748, 1025.976, NULL),
  (606, 54, 'She said, "She did. I can''t tell you
how wonderful it was.', 1026.000, 1028.976, NULL),
  (607, 54, 'We walked in this room,
and it was full of people like me --', 1029.000, 1031.829, NULL),
  (608, 54, 'people who couldn''t sit still,', 1031.853, 1034.075, NULL),
  (609, 54, 'people who had to move to think."', 1034.099, 1037.006, NULL),
  (610, 54, 'Who had to move to think.', 1037.030, 1038.862, NULL),
  (611, 54, 'They did ballet, they did tap, jazz;
they did modern; they did contemporary.', 1038.886, 1042.496, NULL),
  (612, 54, 'She was eventually auditioned
for the Royal Ballet School.', 1042.520, 1045.266, NULL),
  (613, 54, 'She became a soloist; she had
a wonderful career at the Royal Ballet.', 1045.290, 1048.543, NULL),
  (614, 54, 'She eventually graduated
from the Royal Ballet School,', 1048.567, 1051.122, NULL),
  (615, 54, 'founded the Gillian Lynne Dance Company,', 1051.146, 1053.074, NULL),
  (616, 54, 'met Andrew Lloyd Webber.', 1053.098, 1054.335, NULL),
  (617, 54, 'She''s been responsible for', 1054.359, 1055.655, NULL),
  (618, 54, 'some of the most successful
musical theater productions in history,', 1055.679, 1058.827, NULL),
  (619, 54, 'she''s given pleasure to millions,', 1058.851, 1060.447, NULL),
  (620, 54, 'and she''s a multimillionaire.', 1060.471, 1061.878, NULL),
  (621, 54, 'Somebody else might have put her
on medication and told her to calm down.', 1061.902, 1065.612, NULL),
  (622, 54, '(Applause)', 1065.636, 1072.418, NULL),
  (623, 54, 'What I think it comes to is this:', 1073.603, 1075.176, NULL),
  (624, 54, 'Al Gore spoke the other night', 1075.200, 1076.976, NULL),
  (625, 54, 'about ecology and the revolution
that was triggered by Rachel Carson.', 1077.000, 1081.519, NULL),
  (626, 54, 'I believe our only hope for the future', 1082.257, 1084.369, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (627, 54, 'is to adopt a new conception
of human ecology,', 1084.393, 1088.268, NULL),
  (628, 54, 'one in which we start
to reconstitute our conception', 1088.292, 1090.819, NULL),
  (629, 54, 'of the richness of human capacity.', 1090.843, 1093.104, NULL),
  (630, 54, 'Our education system has mined our minds', 1093.128, 1096.499, NULL),
  (631, 54, 'in the way that we strip-mine the earth
for a particular commodity.', 1096.523, 1099.964, NULL),
  (632, 54, 'And for the future, it won''t serve us.', 1100.377, 1102.799, NULL),
  (633, 54, 'We have to rethink
the fundamental principles', 1102.823, 1104.976, NULL),
  (634, 54, 'on which we''re educating our children.', 1105.000, 1107.063, NULL),
  (635, 54, 'There was a wonderful quote
by Jonas Salk, who said,', 1107.087, 1109.761, NULL),
  (636, 54, '"If all the insects
were to disappear from the Earth,', 1109.785, 1114.882, NULL),
  (637, 54, 'within 50 years,
all life on Earth would end.', 1114.906, 1117.689, NULL),
  (638, 54, 'If all human beings
disappeared from the Earth,', 1118.770, 1121.807, NULL),
  (639, 54, 'within 50 years,
all forms of life would flourish."', 1121.831, 1124.465, NULL),
  (640, 54, 'And he''s right.', 1125.378, 1126.663, NULL),
  (641, 54, 'What TED celebrates is the gift
of the human imagination.', 1127.390, 1131.121, NULL),
  (642, 54, 'We have to be careful now
that we use this gift wisely,', 1131.533, 1135.767, NULL),
  (643, 54, 'and that we avert some of the scenarios
that we''ve talked about.', 1135.791, 1139.020, NULL),
  (644, 54, 'And the only way we''ll do it
is by seeing our creative capacities', 1139.044, 1142.799, NULL),
  (645, 54, 'for the richness they are', 1142.823, 1144.610, NULL),
  (646, 54, 'and seeing our children
for the hope that they are.', 1144.634, 1147.816, NULL),
  (647, 54, 'And our task is to educate
their whole being,', 1147.840, 1150.238, NULL),
  (648, 54, 'so they can face this future.', 1150.262, 1151.675, NULL),
  (649, 54, 'By the way -- we may not see this future,', 1151.699, 1154.204, NULL),
  (650, 54, 'but they will.', 1154.228, 1155.791, NULL),
  (651, 54, 'And our job is to help them
make something of it.', 1155.815, 1158.533, NULL),
  (652, 54, 'Thank you very much.', 1158.557, 1159.742, NULL),
  (653, 54, '(Applause)', 1159.766, 1165.213, NULL),
  (738, 76, 'So, I''ll start with this: a couple
years ago, an event planner called me', 16.860, 20.321, NULL),
  (739, 76, 'because I was going
to do a speaking event.', 20.345, 22.394, NULL),
  (740, 76, 'And she called, and she said,', 22.418, 24.108, NULL),
  (741, 76, '"I''m really struggling with how
to write about you on the little flyer."', 24.132, 27.704, NULL),
  (742, 76, 'And I thought,
"Well, what''s the struggle?"', 27.728, 29.776, NULL),
  (743, 76, 'And she said, "Well, I saw you speak,', 30.488, 32.392, NULL),
  (744, 76, 'and I''m going to call you
a researcher, I think,', 32.416, 34.901, NULL),
  (745, 76, 'but I''m afraid if I call you
a researcher, no one will come,', 34.925, 37.813, NULL),
  (746, 76, 'because they''ll think
you''re boring and irrelevant."', 37.837, 40.296, NULL),
  (747, 76, '(Laughter)', 40.320, 41.321, NULL),
  (748, 76, 'And I was like, "Okay."', 41.345, 42.921, NULL),
  (749, 76, 'And she said, "But the thing
I liked about your talk', 42.945, 45.423, NULL),
  (750, 76, 'is you''re a storyteller.', 45.447, 46.663, NULL),
  (751, 76, 'So I think what I''ll do
is just call you a storyteller."', 46.687, 49.401, NULL),
  (752, 76, 'And of course, the academic,
insecure part of me', 49.990, 52.966, NULL),
  (753, 76, 'was like, "You''re going
to call me a what?"', 52.990, 55.300, NULL),
  (754, 76, 'And she said, "I''m going
to call you a storyteller."', 55.324, 57.872, NULL),
  (755, 76, 'And I was like, "Why not ''magic pixie''?"', 57.896, 60.745, NULL),
  (756, 76, '(Laughter)', 60.769, 63.248, NULL),
  (757, 76, 'I was like, "Let me think
about this for a second."', 63.648, 66.926, NULL),
  (758, 76, 'I tried to call deep on my courage.', 67.291, 69.830, NULL),
  (759, 76, 'And I thought, you know,
I am a storyteller.', 69.854, 72.966, NULL),
  (760, 76, 'I''m a qualitative researcher.', 72.990, 74.394, NULL),
  (761, 76, 'I collect stories; that''s what I do.', 74.418, 76.139, NULL),
  (762, 76, 'And maybe stories
are just data with a soul.', 76.656, 79.561, NULL),
  (763, 76, 'And maybe I''m just a storyteller.', 79.585, 81.966, NULL),
  (764, 76, 'And so I said, "You know what?', 81.990, 83.649, NULL),
  (765, 76, 'Why don''t you just say
I''m a researcher-storyteller."', 83.673, 86.314, NULL),
  (766, 76, 'And she went, "Ha ha.
There''s no such thing."', 86.338, 89.966, NULL),
  (767, 76, '(Laughter)', 89.990, 91.673, NULL),
  (768, 76, 'So I''m a researcher-storyteller,
and I''m going to talk to you today --', 91.697, 95.674, NULL),
  (769, 76, 'we''re talking about
expanding perception --', 95.698, 97.747, NULL),
  (770, 76, 'and so I want to talk to you
and tell some stories', 97.771, 100.153, NULL),
  (771, 76, 'about a piece of my research
that fundamentally expanded my perception', 100.177, 105.336, NULL),
  (772, 76, 'and really actually changed
the way that I live and love', 105.360, 108.249, NULL),
  (773, 76, 'and work and parent.', 108.273, 109.447, NULL),
  (774, 76, 'And this is where my story starts.', 110.093, 112.225, NULL),
  (775, 76, 'When I was a young researcher,
doctoral student,', 112.990, 115.673, NULL),
  (776, 76, 'my first year, I had
a research professor who said to us,', 115.697, 119.674, NULL),
  (777, 76, '"Here''s the thing, if you cannot
measure it, it does not exist."', 119.698, 123.644, NULL),
  (778, 76, 'And I thought he was just
sweet-talking me.', 125.374, 127.966, NULL),
  (779, 76, 'I was like, "Really?"
and he was like, "Absolutely."', 128.339, 130.776, NULL),
  (780, 76, 'And so you have to understand', 130.800, 133.053, NULL),
  (781, 76, 'that I have a bachelor''s
and a master''s in social work,', 133.077, 135.657, NULL),
  (782, 76, 'and I was getting my Ph.D. in social work,
so my entire academic career', 135.681, 139.055, NULL),
  (783, 76, 'was surrounded by people who kind of
believed in the "life''s messy, love it."', 139.079, 144.696, NULL),
  (784, 76, 'And I''m more of the, "life''s messy,
clean it up, organize it', 145.474, 150.902, NULL),
  (785, 76, 'and put it into a bento box."', 150.926, 152.703, NULL),
  (786, 76, '(Laughter)', 152.727, 154.703, NULL),
  (787, 76, 'And so to think that I had found my way,
to found a career that takes me --', 155.020, 160.331, NULL),
  (788, 76, 'really, one of the big sayings
in social work is,', 160.355, 163.688, NULL),
  (789, 76, '"Lean into the discomfort of the work."', 163.712, 165.807, NULL),
  (790, 76, 'And I''m like, knock discomfort
upside the head', 166.537, 169.069, NULL),
  (791, 76, 'and move it over and get all A''s.', 169.093, 171.371, NULL),
  (792, 76, 'That was my mantra.', 171.395, 173.307, NULL),
  (793, 76, 'So I was very excited about this.', 174.990, 176.966, NULL),
  (794, 76, 'And so I thought, you know what,
this is the career for me,', 176.990, 179.966, NULL),
  (795, 76, 'because I am interested
in some messy topics.', 179.990, 182.966, NULL),
  (796, 76, 'But I want to be able
to make them not messy.', 182.990, 185.361, NULL),
  (797, 76, 'I want to understand them.', 185.385, 186.707, NULL),
  (798, 76, 'I want to hack into these things
that I know are important', 186.731, 190.308, NULL),
  (799, 76, 'and lay the code out for everyone to see.', 190.332, 192.308, NULL),
  (800, 76, 'So where I started was with connection.', 192.990, 195.649, NULL),
  (801, 76, 'Because, by the time
you''re a social worker for 10 years,', 195.673, 199.085, NULL),
  (802, 76, 'what you realize is that connection
is why we''re here.', 199.109, 203.816, NULL),
  (803, 76, 'It''s what gives purpose
and meaning to our lives.', 203.840, 206.220, NULL),
  (804, 76, 'This is what it''s all about.', 207.076, 208.862, NULL),
  (805, 76, 'It doesn''t matter whether
you talk to people', 208.886, 210.983, NULL),
  (806, 76, 'who work in social justice,
mental health and abuse and neglect,', 211.007, 214.099, NULL),
  (807, 76, 'what we know is that connection,
the ability to feel connected, is --', 214.123, 219.464, NULL),
  (808, 76, 'neurobiologically
that''s how we''re wired --', 219.948, 221.966, NULL),
  (809, 76, 'it''s why we''re here.', 221.990, 223.369, NULL),
  (810, 76, 'So I thought, you know what,
I''m going to start with connection.', 223.393, 226.406, NULL),
  (811, 76, 'Well, you know that situation', 227.067, 228.964, NULL),
  (812, 76, 'where you get an evaluation
from your boss,', 228.988, 231.496, NULL),
  (813, 76, 'and she tells you 37 things
that you do really awesome,', 231.520, 234.306, NULL),
  (814, 76, 'and one "opportunity for growth?"', 234.330, 236.704, NULL),
  (815, 76, '(Laughter)', 236.728, 238.537, NULL),
  (816, 76, 'And all you can think about
is that opportunity for growth, right?', 239.196, 242.664, NULL),
  (817, 76, 'Well, apparently this is the way
my work went as well,', 242.688, 245.386, NULL),
  (818, 76, 'because, when you ask people about love,
they tell you about heartbreak.', 245.410, 250.387, NULL),
  (819, 76, 'When you ask people about belonging,', 250.411, 253.045, NULL),
  (820, 76, 'they''ll tell you their most excruciating
experiences of being excluded.', 253.069, 257.021, NULL),
  (821, 76, 'And when you ask people about connection,', 257.045, 259.546, NULL),
  (822, 76, 'the stories they told me
were about disconnection.', 259.570, 262.108, NULL),
  (823, 76, 'So very quickly -- really about six weeks
into this research --', 263.118, 266.143, NULL),
  (824, 76, 'I ran into this unnamed thing
that absolutely unraveled connection', 266.167, 272.189, NULL),
  (825, 76, 'in a way that I didn''t understand
or had never seen.', 272.213, 274.673, NULL),
  (826, 76, 'And so I pulled back out of the research', 275.109, 277.086, NULL),
  (827, 76, 'and thought, I need
to figure out what this is.', 277.110, 279.340, NULL),
  (828, 76, 'And it turned out to be shame.', 279.364, 281.543, NULL),
  (829, 76, 'And shame is really easily understood
as the fear of disconnection:', 283.212, 286.490, NULL),
  (830, 76, 'Is there something about me that,
if other people know it or see it,', 287.213, 291.769, NULL),
  (831, 76, 'that I won''t be worthy of connection?', 291.793, 294.959, NULL),
  (832, 76, 'The things I can tell you about it:', 295.593, 297.275, NULL),
  (833, 76, 'It''s universal; we all have it.', 297.299, 298.966, NULL),
  (834, 76, 'The only people who don''t experience shame', 298.990, 300.990, NULL),
  (835, 76, 'have no capacity for human
empathy or connection.', 301.014, 303.348, NULL),
  (836, 76, 'No one wants to talk about it,', 303.372, 304.966, NULL),
  (837, 76, 'and the less you talk about it,
the more you have it.', 304.990, 307.561, NULL),
  (838, 76, 'What underpinned this shame,
this "I''m not good enough," --', 309.005, 314.171, NULL),
  (839, 76, 'which, we all know that feeling:', 314.195, 315.799, NULL),
  (840, 76, '"I''m not blank enough.
I''m not thin enough,', 315.823, 317.872, NULL),
  (841, 76, 'rich enough, beautiful enough,
smart enough, promoted enough."', 317.896, 321.150, NULL),
  (842, 76, 'The thing that underpinned this
was excruciating vulnerability.', 321.174, 326.150, NULL),
  (843, 76, 'This idea of, in order
for connection to happen,', 326.862, 330.966, NULL),
  (844, 76, 'we have to allow ourselves
to be seen, really seen.', 330.990, 334.736, NULL),
  (845, 76, 'And you know how I feel
about vulnerability. I hate vulnerability.', 336.061, 339.259, NULL),
  (846, 76, 'And so I thought, this is my chance
to beat it back with my measuring stick.', 339.283, 343.781, NULL),
  (847, 76, 'I''m going in, I''m going
to figure this stuff out,', 343.805, 346.496, NULL),
  (848, 76, 'I''m going to spend a year,
I''m going to totally deconstruct shame,', 346.520, 349.830, NULL),
  (849, 76, 'I''m going to understand
how vulnerability works,', 349.854, 352.132, NULL),
  (850, 76, 'and I''m going to outsmart it.', 352.156, 353.591, NULL),
  (851, 76, 'So I was ready, and I was really excited.', 354.640, 356.910, NULL),
  (852, 76, 'As you know,
it''s not going to turn out well.', 360.239, 362.382, NULL),
  (853, 76, '(Laughter)', 362.406, 364.919, NULL),
  (854, 76, 'You know this.', 364.943, 366.537, NULL),
  (855, 76, 'So, I could tell you a lot about shame,', 366.561, 368.450, NULL),
  (856, 76, 'but I''d have to borrow
everyone else''s time.', 368.474, 370.571, NULL),
  (857, 76, 'But here''s what I can tell you
that it boils down to --', 370.595, 373.452, NULL),
  (858, 76, 'and this may be one of the most important
things that I''ve ever learned', 373.476, 376.858, NULL),
  (859, 76, 'in the decade of doing this research.', 376.882, 378.746, NULL),
  (860, 76, 'My one year turned into six years:', 380.068, 384.260, NULL),
  (861, 76, 'Thousands of stories, hundreds
of long interviews, focus groups.', 384.284, 388.966, NULL),
  (862, 76, 'At one point, people were
sending me journal pages', 388.990, 391.371, NULL),
  (863, 76, 'and sending me their stories --', 391.395, 393.232, NULL),
  (864, 76, 'thousands of pieces of data in six years.', 393.256, 397.248, NULL),
  (865, 76, 'And I kind of got a handle on it.', 397.272, 398.966, NULL),
  (866, 76, 'I kind of understood, this is
what shame is, this is how it works.', 398.990, 402.089, NULL),
  (867, 76, 'I wrote a book, I published a theory,
but something was not okay --', 403.452, 409.699, NULL),
  (868, 76, 'and what it was is that, if I roughly
took the people I interviewed', 409.723, 413.879, NULL),
  (869, 76, 'and divided them into people who really
have a sense of worthiness --', 413.903, 420.475, NULL),
  (870, 76, 'that''s what this comes down to,
a sense of worthiness --', 420.499, 423.261, NULL),
  (871, 76, 'they have a strong sense
of love and belonging --', 423.285, 426.507, NULL),
  (872, 76, 'and folks who struggle for it,', 426.531, 428.182, NULL),
  (873, 76, 'and folks who are always wondering
if they''re good enough.', 428.206, 431.306, NULL),
  (874, 76, 'There was only one variable that separated', 431.330, 433.569, NULL),
  (875, 76, 'the people who have a strong sense
of love and belonging', 433.593, 436.333, NULL),
  (876, 76, 'and the people who really struggle for it.', 436.357, 438.616, NULL),
  (877, 76, 'And that was, the people who have
a strong sense of love and belonging', 438.640, 442.358, NULL),
  (878, 76, 'believe they''re worthy
of love and belonging.', 442.382, 444.786, NULL),
  (879, 76, 'That''s it.', 445.704, 446.854, NULL),
  (880, 76, 'They believe they''re worthy.', 447.505, 448.993, NULL),
  (881, 76, 'And to me, the hard part of the one thing
that keeps us out of connection', 450.736, 456.554, NULL),
  (882, 76, 'is our fear that we''re not
worthy of connection,', 456.578, 459.793, NULL),
  (883, 76, 'was something that,
personally and professionally,', 459.817, 462.220, NULL),
  (884, 76, 'I felt like I needed to understand better.', 462.244, 464.466, NULL),
  (885, 76, 'So what I did is I took
all of the interviews', 464.807, 469.784, NULL),
  (886, 76, 'where I saw worthiness,
where I saw people living that way,', 469.808, 472.626, NULL),
  (887, 76, 'and just looked at those.', 472.650, 474.538, NULL),
  (888, 76, 'What do these people have in common?', 475.314, 477.362, NULL),
  (889, 76, 'I have a slight office supply addiction,
but that''s another talk.', 477.386, 482.029, NULL),
  (890, 76, 'So I had a manila folder,
and I had a Sharpie,', 482.053, 485.530, NULL),
  (891, 76, 'and I was like, what am I going
to call this research?', 485.554, 488.174, NULL),
  (892, 76, 'And the first words that came
to my mind were "whole-hearted."', 488.198, 491.188, NULL),
  (893, 76, 'These are whole-hearted people,
living from this deep sense of worthiness.', 491.807, 495.323, NULL),
  (894, 76, 'So I wrote at the top
of the manila folder,', 495.347, 498.203, NULL),
  (895, 76, 'and I started looking at the data.', 498.227, 500.156, NULL),
  (896, 76, 'In fact, I did it first in a four-day,
very intensive data analysis,', 500.180, 506.173, NULL),
  (897, 76, 'where I went back, pulled the interviews,
the stories, pulled the incidents.', 506.197, 509.774, NULL),
  (898, 76, 'What''s the theme? What''s the pattern?', 509.798, 511.577, NULL),
  (899, 76, 'My husband left town with the kids', 512.370, 515.347, NULL),
  (900, 76, 'because I always go into this
Jackson Pollock crazy thing,', 515.371, 518.348, NULL),
  (901, 76, 'where I''m just writing
and in my researcher mode.', 518.372, 522.117, NULL),
  (902, 76, 'And so here''s what I found.', 523.625, 525.172, NULL),
  (903, 76, 'What they had in common
was a sense of courage.', 528.114, 530.966, NULL),
  (904, 76, 'And I want to separate courage
and bravery for you for a minute.', 531.624, 534.721, NULL),
  (905, 76, 'Courage, the original
definition of courage,', 534.745, 537.186, NULL),
  (906, 76, 'when it first came
into the English language --', 537.210, 539.449, NULL),
  (907, 76, 'it''s from the Latin word "cor,"
meaning "heart" --', 539.473, 541.826, NULL),
  (908, 76, 'and the original definition was to tell
the story of who you are', 541.850, 544.861, NULL),
  (909, 76, 'with your whole heart.', 544.885, 546.299, NULL),
  (910, 76, 'And so these folks had, very simply,
the courage to be imperfect.', 547.059, 551.233, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (911, 76, 'They had the compassion to be kind
to themselves first and then to others,', 553.632, 558.609, NULL),
  (912, 76, 'because, as it turns out,', 558.633, 559.832, NULL),
  (913, 76, 'we can''t practice compassion
with other people', 559.856, 562.090, NULL),
  (914, 76, 'if we can''t treat ourselves kindly.', 562.114, 563.857, NULL),
  (915, 76, 'And the last was they had connection,
and -- this was the hard part --', 564.259, 568.656, NULL),
  (916, 76, 'as a result of authenticity,', 568.680, 571.657, NULL),
  (917, 76, 'they were willing to let go
of who they thought they should be', 571.681, 574.966, NULL),
  (918, 76, 'in order to be who they were,
which you have to absolutely do that', 574.990, 579.594, NULL),
  (919, 76, 'for connection.', 579.618, 580.791, NULL),
  (920, 76, 'The other thing that they had
in common was this:', 583.323, 587.323, NULL),
  (921, 76, 'They fully embraced vulnerability.', 590.910, 593.990, NULL),
  (922, 76, 'They believed that what made them
vulnerable made them beautiful.', 595.679, 602.330, NULL),
  (923, 76, 'They didn''t talk about vulnerability
being comfortable,', 606.141, 609.966, NULL),
  (924, 76, 'nor did they really talk
about it being excruciating --', 609.990, 612.816, NULL),
  (925, 76, 'as I had heard it earlier
in the shame interviewing.', 612.840, 615.318, NULL),
  (926, 76, 'They just talked about it being necessary.', 615.342, 617.572, NULL),
  (927, 76, 'They talked about the willingness
to say, "I love you" first ...', 618.633, 622.609, NULL),
  (928, 76, 'the willingness to do something
where there are no guarantees ...', 624.378, 629.751, NULL),
  (929, 76, 'the willingness to breathe
through waiting for the doctor to call', 631.283, 635.618, NULL),
  (930, 76, 'after your mammogram.', 635.642, 636.925, NULL),
  (931, 76, 'They''re willing to invest
in a relationship', 638.631, 641.896, NULL),
  (932, 76, 'that may or may not work out.', 641.920, 643.370, NULL),
  (933, 76, 'They thought this was fundamental.', 644.465, 646.335, NULL),
  (934, 76, 'I personally thought it was betrayal.', 647.442, 650.061, NULL),
  (935, 76, 'I could not believe I had pledged
allegiance to research, where our job --', 650.847, 655.443, NULL),
  (936, 76, 'you know, the definition of research
is to control and predict,', 655.467, 659.531, NULL),
  (937, 76, 'to study phenomena for the explicit
reason to control and predict.', 659.555, 664.198, NULL),
  (938, 76, 'And now my mission to control and predict', 664.222, 668.588, NULL),
  (939, 76, 'had turned up the answer
that the way to live is with vulnerability', 668.612, 672.181, NULL),
  (940, 76, 'and to stop controlling and predicting.', 672.205, 674.303, NULL),
  (941, 76, 'This led to a little breakdown --', 674.327, 676.104, NULL),
  (942, 76, '(Laughter)', 676.902, 681.966, NULL),
  (943, 76, '-- which actually looked more like this.', 681.990, 684.966, NULL),
  (944, 76, '(Laughter)', 684.990, 686.483, NULL),
  (945, 76, 'And it did.', 686.507, 688.484, NULL),
  (946, 76, 'I call it a breakdown; my therapist
calls it a spiritual awakening.', 688.508, 691.688, NULL),
  (947, 76, '(Laughter)', 691.712, 692.946, NULL),
  (948, 76, 'A spiritual awakening
sounds better than breakdown,', 692.970, 695.387, NULL),
  (949, 76, 'but I assure you, it was a breakdown.', 695.411, 697.188, NULL),
  (950, 76, 'And I had to put my data away
and go find a therapist.', 697.212, 700.116, NULL),
  (951, 76, 'Let me tell you something:
you know who you are', 700.140, 702.371, NULL),
  (952, 76, 'when you call your friends and say,
"I think I need to see somebody.', 702.395, 705.635, NULL),
  (953, 76, 'Do you have any recommendations?"', 705.659, 707.465, NULL),
  (954, 76, 'Because about five
of my friends were like,', 707.489, 709.538, NULL),
  (955, 76, '"Wooo, I wouldn''t want
to be your therapist."', 709.562, 711.706, NULL),
  (956, 76, '(Laughter)', 711.730, 714.468, NULL),
  (957, 76, 'I was like, "What does that mean?"', 714.492, 716.469, NULL),
  (958, 76, 'And they''re like,
"I''m just saying, you know.', 716.493, 719.700, NULL),
  (959, 76, 'Don''t bring your measuring stick."', 719.724, 721.701, NULL),
  (960, 76, '(Laughter)', 721.725, 724.461, NULL),
  (961, 76, 'I was like, "Okay."', 724.485, 725.685, NULL),
  (962, 76, 'So I found a therapist.', 726.545, 728.379, NULL),
  (963, 76, 'My first meeting with her, Diana --', 728.403, 730.306, NULL),
  (964, 76, 'I brought in my list of the way
the whole-hearted live, and I sat down.', 732.109, 736.403, NULL),
  (965, 76, 'And she said, "How are you?"', 736.427, 738.236, NULL),
  (966, 76, 'And I said, "I''m great. I''m okay."', 738.260, 741.855, NULL),
  (967, 76, 'She said, "What''s going on?"', 741.879, 743.403, NULL),
  (968, 76, 'And this is a therapist
who sees therapists,', 743.427, 746.046, NULL),
  (969, 76, 'because we have to go to those,
because their B.S. meters are good.', 746.070, 751.283, NULL),
  (970, 76, '(Laughter)', 751.307, 753.283, NULL),
  (971, 76, 'And so I said, "Here''s the thing,
I''m struggling."', 753.736, 757.569, NULL),
  (972, 76, 'And she said, "What''s the struggle?"', 757.593, 759.403, NULL),
  (973, 76, 'And I said, "Well, I have
a vulnerability issue.', 760.442, 762.703, NULL),
  (974, 76, 'And I know that vulnerability
is the core of shame and fear', 762.727, 768.082, NULL),
  (975, 76, 'and our struggle for worthiness,', 768.106, 769.703, NULL),
  (976, 76, 'but it appears that it''s also
the birthplace of joy, of creativity,', 769.727, 775.403, NULL),
  (977, 76, 'of belonging, of love.', 775.427, 777.403, NULL),
  (978, 76, 'And I think I have a problem,
and I need some help."', 777.776, 783.212, NULL),
  (979, 76, 'And I said, "But here''s the thing:
no family stuff, no childhood shit."', 783.236, 788.403, NULL),
  (980, 76, '(Laughter)', 788.427, 790.403, NULL),
  (981, 76, '"I just need some strategies."', 790.427, 793.403, NULL),
  (982, 76, '(Laughter)', 793.427, 797.403, NULL),
  (983, 76, '(Applause)', 797.427, 801.012, NULL),
  (984, 76, 'Thank you.', 801.036, 802.598, NULL),
  (985, 76, 'So she goes like this.', 804.283, 805.760, NULL),
  (986, 76, '(Laughter)', 807.427, 809.783, NULL),
  (987, 76, 'And then I said, "It''s bad, right?"', 809.807, 812.403, NULL),
  (988, 76, 'And she said, "It''s neither good nor bad."', 812.427, 815.403, NULL),
  (989, 76, '(Laughter)', 815.427, 817.260, NULL),
  (990, 76, '"It just is what it is."', 817.284, 818.918, NULL),
  (991, 76, 'And I said, "Oh my God,
this is going to suck."', 819.664, 822.403, NULL),
  (992, 76, '(Laughter)', 822.427, 824.379, NULL),
  (993, 76, 'And it did, and it didn''t.', 825.593, 827.847, NULL),
  (994, 76, 'And it took about a year.', 827.871, 829.934, NULL),
  (995, 76, 'And you know how there are people', 829.958, 831.974, NULL),
  (996, 76, 'that, when they realize that vulnerability
and tenderness are important,', 831.998, 836.022, NULL),
  (997, 76, 'that they surrender and walk into it.', 836.046, 838.077, NULL),
  (998, 76, 'A: that''s not me,', 839.231, 841.191, NULL),
  (999, 76, 'and B: I don''t even hang out
with people like that.', 841.215, 843.612, NULL),
  (1000, 76, '(Laughter)', 843.636, 846.403, NULL),
  (1001, 76, 'For me, it was a yearlong street fight.', 846.427, 848.514, NULL),
  (1002, 76, 'It was a slugfest.', 849.752, 850.926, NULL),
  (1003, 76, 'Vulnerability pushed, I pushed back.', 851.339, 853.173, NULL),
  (1004, 76, 'I lost the fight,', 853.593, 856.680, NULL),
  (1005, 76, 'but probably won my life back.', 856.704, 858.403, NULL),
  (1006, 76, 'And so then I went back into the research', 858.727, 860.703, NULL),
  (1007, 76, 'and spent the next couple of years', 860.727, 862.403, NULL),
  (1008, 76, 'really trying to understand
what they, the whole-hearted,', 862.427, 865.403, NULL),
  (1009, 76, 'what choices they were making,
and what we are doing with vulnerability.', 865.427, 871.403, NULL),
  (1010, 76, 'Why do we struggle with it so much?', 871.427, 873.767, NULL),
  (1011, 76, 'Am I alone in struggling
with vulnerability?', 873.791, 875.952, NULL),
  (1012, 76, 'No.', 877.190, 878.403, NULL),
  (1013, 76, 'So this is what I learned.', 878.427, 879.888, NULL),
  (1014, 76, 'We numb vulnerability --', 881.959, 883.626, NULL),
  (1015, 76, 'when we''re waiting for the call.', 884.680, 886.267, NULL),
  (1016, 76, 'It was funny, I sent something out
on Twitter and on Facebook', 886.291, 889.180, NULL),
  (1017, 76, 'that says, "How would you
define vulnerability?', 889.204, 891.478, NULL),
  (1018, 76, 'What makes you feel vulnerable?"', 891.502, 893.050, NULL),
  (1019, 76, 'And within an hour and a half,
I had 150 responses.', 893.074, 895.798, NULL),
  (1020, 76, 'Because I wanted to know what''s out there.', 895.822, 898.795, NULL),
  (1021, 76, 'Having to ask my husband for help
because I''m sick, and we''re newly married;', 901.204, 906.227, NULL),
  (1022, 76, 'initiating sex with my husband;', 906.251, 908.258, NULL),
  (1023, 76, 'initiating sex with my wife;', 908.282, 910.996, NULL),
  (1024, 76, 'being turned down; asking someone out;', 911.020, 913.998, NULL),
  (1025, 76, 'waiting for the doctor to call back;', 914.022, 916.061, NULL),
  (1026, 76, 'getting laid off; laying off people.', 916.085, 918.427, NULL),
  (1027, 76, 'This is the world we live in.', 918.451, 919.855, NULL),
  (1028, 76, 'We live in a vulnerable world.', 920.962, 923.930, NULL),
  (1029, 76, 'And one of the ways we deal
with it is we numb vulnerability.', 923.954, 926.890, NULL),
  (1030, 76, 'And I think there''s evidence --', 927.688, 929.403, NULL),
  (1031, 76, 'and it''s not the only reason
this evidence exists,', 929.427, 931.808, NULL),
  (1032, 76, 'but I think it''s a huge cause --', 931.832, 933.941, NULL),
  (1033, 76, 'We are the most in-debt ...', 933.965, 936.854, NULL),
  (1034, 76, 'obese ...', 938.538, 939.760, NULL),
  (1035, 76, 'addicted and medicated
adult cohort in U.S. history.', 940.910, 945.069, NULL),
  (1036, 76, 'The problem is -- and I learned this
from the research --', 948.315, 951.585, NULL),
  (1037, 76, 'that you cannot selectively numb emotion.', 951.609, 954.752, NULL),
  (1038, 76, 'You can''t say, here''s the bad stuff.', 955.291, 957.624, NULL),
  (1039, 76, 'Here''s vulnerability,
here''s grief, here''s shame,', 958.427, 960.803, NULL),
  (1040, 76, 'here''s fear, here''s disappointment.', 960.827, 962.503, NULL),
  (1041, 76, 'I don''t want to feel these.', 962.527, 964.403, NULL),
  (1042, 76, 'I''m going to have a couple of beers
and a banana nut muffin.', 964.427, 967.309, NULL),
  (1043, 76, '(Laughter)', 967.333, 970.019, NULL),
  (1044, 76, 'I don''t want to feel these.', 970.043, 971.912, NULL),
  (1045, 76, 'And I know that''s knowing laughter.', 971.936, 973.912, NULL),
  (1046, 76, 'I hack into your lives for a living.', 973.936, 976.403, NULL),
  (1047, 76, 'God.', 976.427, 978.403, NULL),
  (1048, 76, '(Laughter)', 978.427, 980.974, NULL),
  (1049, 76, 'You can''t numb those hard feelings', 980.998, 983.756, NULL),
  (1050, 76, 'without numbing
the other affects, our emotions.', 983.780, 986.414, NULL),
  (1051, 76, 'You cannot selectively numb.', 986.438, 987.890, NULL),
  (1052, 76, 'So when we numb those,', 987.914, 990.521, NULL),
  (1053, 76, 'we numb joy,', 990.545, 993.068, NULL),
  (1054, 76, 'we numb gratitude,', 993.092, 994.403, NULL),
  (1055, 76, 'we numb happiness.', 994.427, 995.727, NULL),
  (1056, 76, 'And then, we are miserable,', 997.148, 1000.271, NULL),
  (1057, 76, 'and we are looking
for purpose and meaning,', 1000.295, 1002.304, NULL),
  (1058, 76, 'and then we feel vulnerable,', 1002.328, 1003.760, NULL),
  (1059, 76, 'so then we have a couple of beers
and a banana nut muffin.', 1003.784, 1006.592, NULL),
  (1060, 76, 'And it becomes this dangerous cycle.', 1006.616, 1009.982, NULL),
  (1061, 76, 'One of the things that I think
we need to think about', 1011.087, 1014.220, NULL),
  (1062, 76, 'is why and how we numb.', 1014.244, 1016.220, NULL),
  (1063, 76, 'And it doesn''t just have to be addiction.', 1016.928, 1019.008, NULL),
  (1064, 76, 'The other thing we do is we make
everything that''s uncertain certain.', 1020.477, 1023.850, NULL),
  (1065, 76, 'Religion has gone from a belief
in faith and mystery to certainty.', 1025.427, 1030.513, NULL),
  (1066, 76, '"I''m right, you''re wrong. Shut up."', 1030.537, 1032.219, NULL),
  (1067, 76, 'That''s it.', 1034.187, 1035.403, NULL),
  (1068, 76, 'Just certain.', 1036.611, 1037.881, NULL),
  (1069, 76, 'The more afraid we are,
the more vulnerable we are,', 1038.340, 1040.756, NULL),
  (1070, 76, 'the more afraid we are.', 1040.780, 1042.165, NULL),
  (1071, 76, 'This is what politics looks like today.', 1042.189, 1044.196, NULL),
  (1072, 76, 'There''s no discourse anymore.', 1044.220, 1045.895, NULL),
  (1073, 76, 'There''s no conversation.', 1045.919, 1047.403, NULL),
  (1074, 76, 'There''s just blame.', 1047.807, 1049.031, NULL),
  (1075, 76, 'You know how blame
is described in the research?', 1049.055, 1051.372, NULL),
  (1076, 76, 'A way to discharge pain and discomfort.', 1052.553, 1055.052, NULL),
  (1077, 76, 'We perfect.', 1057.616, 1058.806, NULL),
  (1078, 76, 'If there''s anyone who wants their life
to look like this, it would be me,', 1058.830, 1062.608, NULL),
  (1079, 76, 'but it doesn''t work.', 1062.632, 1063.859, NULL),
  (1080, 76, 'Because what we do is we take fat
from our butts and put it in our cheeks.', 1063.883, 1067.503, NULL),
  (1081, 76, '(Laughter)', 1067.527, 1070.966, NULL),
  (1082, 76, 'Which just, I hope in 100 years,
people will look back and go, "Wow."', 1070.990, 1074.403, NULL),
  (1083, 76, '(Laughter)', 1074.427, 1076.950, NULL),
  (1084, 76, 'And we perfect,
most dangerously, our children.', 1076.974, 1080.403, NULL),
  (1085, 76, 'Let me tell you what we think
about children.', 1080.427, 1082.570, NULL),
  (1086, 76, 'They''re hardwired for struggle
when they get here.', 1082.594, 1085.403, NULL),
  (1087, 76, 'And when you hold those perfect
little babies in your hand,', 1085.427, 1088.309, NULL),
  (1088, 76, 'our job is not to say,
"Look at her, she''s perfect.', 1088.333, 1091.291, NULL),
  (1089, 76, 'My job is just to keep her perfect --', 1091.315, 1093.211, NULL),
  (1090, 76, 'make sure she makes the tennis team
by fifth grade and Yale by seventh."', 1093.235, 1096.642, NULL),
  (1091, 76, 'That''s not our job.', 1096.666, 1097.903, NULL),
  (1092, 76, 'Our job is to look and say,', 1097.927, 1099.536, NULL),
  (1093, 76, '"You know what? You''re imperfect,
and you''re wired for struggle,', 1099.560, 1102.576, NULL),
  (1094, 76, 'but you are worthy of love and belonging."', 1102.600, 1104.600, NULL),
  (1095, 76, 'That''s our job.', 1105.501, 1106.688, NULL),
  (1096, 76, 'Show me a generation
of kids raised like that,', 1107.104, 1109.334, NULL),
  (1097, 76, 'and we''ll end the problems,
I think, that we see today.', 1109.358, 1111.959, NULL),
  (1098, 76, 'We pretend that what we do
doesn''t have an effect on people.', 1111.983, 1117.435, NULL),
  (1099, 76, 'We do that in our personal lives.', 1118.871, 1120.505, NULL),
  (1100, 76, 'We do that corporate --', 1120.529, 1121.752, NULL),
  (1101, 76, 'whether it''s a bailout, an oil spill ...', 1121.776, 1123.886, NULL),
  (1102, 76, 'a recall.', 1125.386, 1126.546, NULL),
  (1103, 76, 'We pretend like what we''re doing', 1126.570, 1128.547, NULL),
  (1104, 76, 'doesn''t have a huge impact
on other people.', 1128.571, 1130.657, NULL),
  (1105, 76, 'I would say to companies,
this is not our first rodeo, people.', 1131.427, 1134.701, NULL),
  (1106, 76, 'We just need you to be authentic
and real and say ...', 1135.769, 1138.436, NULL),
  (1107, 76, '"We''re sorry. We''ll fix it."', 1139.919, 1142.063, NULL),
  (1108, 76, 'But there''s another way,
and I''ll leave you with this.', 1145.535, 1148.307, NULL),
  (1109, 76, 'This is what I have found:', 1148.331, 1149.712, NULL),
  (1110, 76, 'To let ourselves be seen,
deeply seen, vulnerably seen ...', 1149.736, 1154.259, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (1111, 76, 'to love with our whole hearts,
even though there''s no guarantee --', 1156.891, 1161.280, NULL),
  (1112, 76, 'and that''s really hard,', 1161.304, 1162.558, NULL),
  (1113, 76, 'and I can tell you as a parent,
that''s excruciatingly difficult --', 1162.582, 1165.923, NULL),
  (1114, 76, 'to practice gratitude and joy
in those moments of terror,', 1168.495, 1172.677, NULL),
  (1115, 76, 'when we''re wondering,
"Can I love you this much?', 1172.701, 1175.014, NULL),
  (1116, 76, 'Can I believe in this this passionately?', 1175.038, 1177.224, NULL),
  (1117, 76, 'Can I be this fierce about this?"', 1177.248, 1179.178, NULL),
  (1118, 76, 'just to be able to stop and, instead of
catastrophizing what might happen,', 1179.202, 1182.779, NULL),
  (1119, 76, 'to say, "I''m just so grateful,', 1182.803, 1184.780, NULL),
  (1120, 76, 'because to feel this vulnerable
means I''m alive."', 1184.804, 1187.204, NULL),
  (1121, 76, 'And the last, which I think
is probably the most important,', 1188.748, 1192.410, NULL),
  (1122, 76, 'is to believe that we''re enough.', 1192.434, 1194.084, NULL),
  (1123, 76, 'Because when we work from a place,
I believe, that says, "I''m enough" ...', 1194.664, 1198.513, NULL),
  (1124, 76, 'then we stop screaming
and start listening,', 1200.743, 1204.711, NULL),
  (1125, 76, 'we''re kinder and gentler
to the people around us,', 1204.735, 1207.062, NULL),
  (1126, 76, 'and we''re kinder and gentler to ourselves.', 1207.086, 1209.235, NULL),
  (1127, 76, 'That''s all I have. Thank you.', 1210.125, 1211.603, NULL),
  (1128, 76, '(Applause)', 1211.627, 1214.220, NULL),
  (1129, 77, 'I''m a storyteller.', 12.160, 14.136, NULL),
  (1130, 77, 'And I would like to tell you
a few personal stories', 14.160, 17.136, NULL),
  (1131, 77, 'about what I like to call
"the danger of the single story."', 17.160, 22.136, NULL),
  (1132, 77, 'I grew up on a university campus
in eastern Nigeria.', 22.906, 26.136, NULL),
  (1133, 77, 'My mother says that I started
reading at the age of two,', 26.318, 29.627, NULL),
  (1134, 77, 'although I think four
is probably close to the truth.', 29.651, 32.667, NULL),
  (1135, 77, 'So I was an early reader,', 33.913, 35.724, NULL),
  (1136, 77, 'and what I read were British
and American children''s books.', 35.748, 39.136, NULL),
  (1137, 77, 'I was also an early writer,', 39.866, 42.136, NULL),
  (1138, 77, 'and when I began to write,
at about the age of seven,', 42.160, 46.136, NULL),
  (1139, 77, 'stories in pencil
with crayon illustrations', 46.160, 48.208, NULL),
  (1140, 77, 'that my poor mother was obligated to read,', 48.232, 51.764, NULL),
  (1141, 77, 'I wrote exactly the kinds
of stories I was reading:', 51.788, 55.356, NULL),
  (1142, 77, 'All my characters were
white and blue-eyed,', 55.380, 60.136, NULL),
  (1143, 77, 'they played in the snow,', 60.160, 62.467, NULL),
  (1144, 77, 'they ate apples,', 62.491, 64.578, NULL),
  (1145, 77, '(Laughter)', 64.602, 65.999, NULL),
  (1146, 77, 'and they talked a lot about the weather,', 66.173, 68.184, NULL),
  (1147, 77, 'how lovely it was
that the sun had come out.', 68.208, 70.336, NULL),
  (1148, 77, '(Laughter)', 70.569, 72.533, NULL),
  (1149, 77, 'Now, this despite the fact
that I lived in Nigeria.', 72.557, 75.691, NULL),
  (1150, 77, 'I had never been outside Nigeria.', 75.715, 77.493, NULL),
  (1151, 77, 'We didn''t have snow, we ate mangoes,', 79.303, 82.564, NULL),
  (1152, 77, 'and we never talked about the weather,', 82.588, 84.436, NULL),
  (1153, 77, 'because there was no need to.', 84.460, 86.136, NULL),
  (1154, 77, 'My characters also drank
a lot of ginger beer,', 86.429, 89.136, NULL),
  (1155, 77, 'because the characters
in the British books I read', 89.160, 91.541, NULL),
  (1156, 77, 'drank ginger beer.', 91.565, 93.136, NULL),
  (1157, 77, 'Never mind that I had no idea
what ginger beer was.', 93.461, 96.136, NULL),
  (1158, 77, '(Laughter)', 96.160, 97.691, NULL),
  (1159, 77, 'And for many years afterwards,', 97.715, 99.165, NULL),
  (1160, 77, 'I would have a desperate desire
to taste ginger beer.', 99.189, 102.136, NULL),
  (1161, 77, 'But that is another story.', 102.636, 104.136, NULL),
  (1162, 77, 'What this demonstrates, I think,', 104.160, 106.643, NULL),
  (1163, 77, 'is how impressionable
and vulnerable we are', 106.667, 109.521, NULL),
  (1164, 77, 'in the face of a story,', 109.545, 111.136, NULL),
  (1165, 77, 'particularly as children.', 111.160, 112.545, NULL),
  (1166, 77, 'Because all I had read were books
in which characters were foreign,', 113.799, 117.569, NULL),
  (1167, 77, 'I had become convinced that books', 117.593, 119.712, NULL),
  (1168, 77, 'by their very nature
had to have foreigners in them', 119.736, 122.906, NULL),
  (1169, 77, 'and had to be about things with which
I could not personally identify.', 122.930, 126.649, NULL),
  (1170, 77, 'Now, things changed
when I discovered African books.', 127.760, 130.379, NULL),
  (1171, 77, 'There weren''t many of them available,', 131.160, 133.136, NULL),
  (1172, 77, 'and they weren''t quite as easy to find
as the foreign books.', 133.160, 136.029, NULL),
  (1173, 77, 'But because of writers like
Chinua Achebe and Camara Laye,', 136.053, 139.136, NULL),
  (1174, 77, 'I went through a mental shift
in my perception of literature.', 139.160, 143.136, NULL),
  (1175, 77, 'I realized that people like me,', 143.160, 145.374, NULL),
  (1176, 77, 'girls with skin the color of chocolate,', 145.398, 147.405, NULL),
  (1177, 77, 'whose kinky hair could not form ponytails,', 147.429, 150.691, NULL),
  (1178, 77, 'could also exist in literature.', 150.715, 152.525, NULL),
  (1179, 77, 'I started to write
about things I recognized.', 152.842, 156.136, NULL),
  (1180, 77, 'Now, I loved those
American and British books I read.', 156.897, 160.136, NULL),
  (1181, 77, 'They stirred my imagination.
They opened up new worlds for me.', 160.160, 164.136, NULL),
  (1182, 77, 'But the unintended consequence', 164.160, 166.136, NULL),
  (1183, 77, 'was that I did not know
that people like me', 166.160, 168.208, NULL),
  (1184, 77, 'could exist in literature.', 168.232, 169.658, NULL),
  (1185, 77, 'So what the discovery of African writers
did for me was this:', 170.611, 174.136, NULL),
  (1186, 77, 'It saved me from having a single story
of what books are.', 174.160, 178.037, NULL),
  (1187, 77, 'I come from a conventional,
middle-class Nigerian family.', 179.160, 182.136, NULL),
  (1188, 77, 'My father was a professor.', 182.160, 184.136, NULL),
  (1189, 77, 'My mother was an administrator.', 184.545, 186.228, NULL),
  (1190, 77, 'And so we had, as was the norm,', 187.529, 190.331, NULL),
  (1191, 77, 'live-in domestic help, who would often
come from nearby rural villages.', 190.355, 194.704, NULL),
  (1192, 77, 'So, the year I turned eight,
we got a new house boy.', 195.342, 198.628, NULL),
  (1193, 77, 'His name was Fide.', 199.262, 200.516, NULL),
  (1194, 77, 'The only thing my mother told us about him
was that his family was very poor.', 201.818, 206.119, NULL),
  (1195, 77, 'My mother sent yams and rice,
and our old clothes, to his family.', 207.160, 212.136, NULL),
  (1196, 77, 'And when I didn''t finish my dinner,
my mother would say,', 212.160, 214.780, NULL),
  (1197, 77, '"Finish your food! Don''t you know?
People like Fide''s family have nothing."', 214.804, 219.136, NULL),
  (1198, 77, 'So I felt enormous pity for Fide''s family.', 219.160, 223.136, NULL),
  (1199, 77, 'Then one Saturday,
we went to his village to visit,', 223.736, 226.633, NULL),
  (1200, 77, 'and his mother showed us
a beautifully patterned basket', 226.657, 230.136, NULL),
  (1201, 77, 'made of dyed raffia
that his brother had made.', 230.160, 233.136, NULL),
  (1202, 77, 'I was startled.', 233.160, 235.136, NULL),
  (1203, 77, 'It had not occurred to me
that anybody in his family', 235.160, 238.136, NULL),
  (1204, 77, 'could actually make something.', 238.160, 241.136, NULL),
  (1205, 77, 'All I had heard about them
was how poor they were,', 241.160, 244.136, NULL),
  (1206, 77, 'so that it had become impossible for me
to see them as anything else but poor.', 244.160, 248.627, NULL),
  (1207, 77, 'Their poverty was my single story of them.', 249.303, 251.674, NULL),
  (1208, 77, 'Years later, I thought about this
when I left Nigeria', 253.160, 255.684, NULL),
  (1209, 77, 'to go to university in the United States.', 255.708, 258.390, NULL),
  (1210, 77, 'I was 19.', 258.501, 259.834, NULL),
  (1211, 77, 'My American roommate was shocked by me.', 260.581, 263.358, NULL),
  (1212, 77, 'She asked where I had learned
to speak English so well,', 264.160, 267.746, NULL),
  (1213, 77, 'and was confused when I said that Nigeria', 267.770, 269.858, NULL),
  (1214, 77, 'happened to have English
as its official language.', 269.882, 272.596, NULL),
  (1215, 77, 'She asked if she could listen
to what she called my "tribal music,"', 273.913, 278.136, NULL),
  (1216, 77, 'and was consequently very disappointed', 278.160, 280.136, NULL),
  (1217, 77, 'when I produced my tape of Mariah Carey.', 280.160, 282.136, NULL),
  (1218, 77, '(Laughter)', 282.160, 285.136, NULL),
  (1219, 77, 'She assumed that I did not know
how to use a stove.', 285.160, 288.853, NULL),
  (1220, 77, 'What struck me was this:', 289.942, 291.198, NULL),
  (1221, 77, 'She had felt sorry for me
even before she saw me.', 291.222, 294.297, NULL),
  (1222, 77, 'Her default position
toward me, as an African,', 294.688, 298.136, NULL),
  (1223, 77, 'was a kind of patronizing,
well-meaning pity.', 298.160, 301.196, NULL),
  (1224, 77, 'My roommate had a single story of Africa:', 302.160, 305.656, NULL),
  (1225, 77, 'a single story of catastrophe.', 305.783, 308.137, NULL),
  (1226, 77, 'In this single story,', 308.572, 309.858, NULL),
  (1227, 77, 'there was no possibility of Africans
being similar to her in any way,', 309.882, 314.136, NULL),
  (1228, 77, 'no possibility of feelings
more complex than pity,', 314.160, 317.136, NULL),
  (1229, 77, 'no possibility of a connection
as human equals.', 317.160, 321.136, NULL),
  (1230, 77, 'I must say that before I went to the U.S.,', 321.160, 323.283, NULL),
  (1231, 77, 'I didn''t consciously identify as African.', 323.307, 325.588, NULL),
  (1232, 77, 'But in the U.S., whenever Africa came up,
people turned to me.', 326.160, 329.136, NULL),
  (1233, 77, 'Never mind that I knew nothing
about places like Namibia.', 329.160, 331.906, NULL),
  (1234, 77, 'But I did come to embrace
this new identity,', 333.160, 335.256, NULL),
  (1235, 77, 'and in many ways I think
of myself now as African.', 335.280, 338.136, NULL),
  (1236, 77, 'Although I still get quite irritable
when Africa is referred to as a country,', 338.160, 342.136, NULL),
  (1237, 77, 'the most recent example being
my otherwise wonderful flight', 342.160, 346.136, NULL),
  (1238, 77, 'from Lagos two days ago,', 346.160, 347.445, NULL),
  (1239, 77, 'in which there was an announcement
on the Virgin flight', 347.469, 350.351, NULL),
  (1240, 77, 'about the charity work in "India,
Africa and other countries."', 350.375, 355.136, NULL),
  (1241, 77, '(Laughter)', 355.160, 356.477, NULL),
  (1242, 77, 'So, after I had spent some years
in the U.S. as an African,', 356.636, 360.136, NULL),
  (1243, 77, 'I began to understand
my roommate''s response to me.', 360.160, 363.334, NULL),
  (1244, 77, 'If I had not grown up in Nigeria,', 364.160, 366.185, NULL),
  (1245, 77, 'and if all I knew about Africa
were from popular images,', 366.209, 369.350, NULL),
  (1246, 77, 'I too would think that Africa
was a place of beautiful landscapes,', 369.374, 374.546, NULL),
  (1247, 77, 'beautiful animals,', 374.570, 376.136, NULL),
  (1248, 77, 'and incomprehensible people,', 376.160, 378.136, NULL),
  (1249, 77, 'fighting senseless wars,
dying of poverty and AIDS,', 378.160, 381.791, NULL),
  (1250, 77, 'unable to speak for themselves', 381.815, 384.136, NULL),
  (1251, 77, 'and waiting to be saved
by a kind, white foreigner.', 384.160, 388.315, NULL),
  (1252, 77, 'I would see Africans
in the same way that I,', 389.088, 391.257, NULL),
  (1253, 77, 'as a child, had seen Fide''s family.', 391.281, 393.984, NULL),
  (1254, 77, 'This single story of Africa ultimately
comes, I think, from Western literature.', 395.160, 399.136, NULL),
  (1255, 77, 'Now, here is a quote from the writing
of a London merchant called John Lok,', 399.160, 404.136, NULL),
  (1256, 77, 'who sailed to west Africa in 1561', 404.160, 407.136, NULL),
  (1257, 77, 'and kept a fascinating
account of his voyage.', 407.160, 410.823, NULL),
  (1258, 77, 'After referring to the black Africans
as "beasts who have no houses,"', 412.363, 416.136, NULL),
  (1259, 77, 'he writes, "They are also
people without heads,', 416.160, 420.136, NULL),
  (1260, 77, 'having their mouth and eyes
in their breasts."', 420.160, 424.128, NULL),
  (1261, 77, 'Now, I''ve laughed
every time I''ve read this.', 425.160, 427.256, NULL),
  (1262, 77, 'And one must admire
the imagination of John Lok.', 427.280, 430.660, NULL),
  (1263, 77, 'But what is important about his writing', 431.533, 433.399, NULL),
  (1264, 77, 'is that it represents the beginning', 433.423, 435.136, NULL),
  (1265, 77, 'of a tradition of telling
African stories in the West:', 435.160, 438.136, NULL),
  (1266, 77, 'A tradition of Sub-Saharan Africa
as a place of negatives,', 438.160, 441.527, NULL),
  (1267, 77, 'of difference, of darkness,', 441.639, 443.794, NULL),
  (1268, 77, 'of people who, in the words
of the wonderful poet Rudyard Kipling,', 443.818, 449.136, NULL),
  (1269, 77, 'are "half devil, half child."', 449.160, 451.101, NULL),
  (1270, 77, 'And so, I began to realize
that my American roommate', 452.371, 455.136, NULL),
  (1271, 77, 'must have throughout her life', 455.160, 457.136, NULL),
  (1272, 77, 'seen and heard different versions
of this single story,', 457.160, 461.136, NULL),
  (1273, 77, 'as had a professor,', 461.160, 463.136, NULL),
  (1274, 77, 'who once told me that my novel
was not "authentically African."', 463.160, 466.926, NULL),
  (1275, 77, 'Now, I was quite willing to contend', 468.029, 469.720, NULL),
  (1276, 77, 'that there were a number of things
wrong with the novel,', 469.744, 472.839, NULL),
  (1277, 77, 'that it had failed in a number of places,', 472.863, 476.136, NULL),
  (1278, 77, 'but I had not quite imagined
that it had failed', 476.160, 478.399, NULL),
  (1279, 77, 'at achieving something
called African authenticity.', 478.423, 481.136, NULL),
  (1280, 77, 'In fact, I did not know
what African authenticity was.', 481.160, 484.866, NULL),
  (1281, 77, 'The professor told me that my characters
were too much like him,', 486.160, 490.556, NULL),
  (1282, 77, 'an educated and middle-class man.', 490.580, 492.556, NULL),
  (1283, 77, 'My characters drove cars.', 492.580, 494.682, NULL),
  (1284, 77, 'They were not starving.', 494.706, 497.136, NULL),
  (1285, 77, 'Therefore they were not
authentically African.', 497.160, 500.087, NULL),
  (1286, 77, 'But I must quickly add
that I too am just as guilty', 501.160, 504.136, NULL),
  (1287, 77, 'in the question of the single story.', 504.160, 506.230, NULL),
  (1288, 77, 'A few years ago,
I visited Mexico from the U.S.', 507.160, 510.151, NULL),
  (1289, 77, 'The political climate in the U.S.
at the time was tense,', 511.160, 513.827, NULL),
  (1290, 77, 'and there were debates going on
about immigration.', 513.851, 517.136, NULL),
  (1291, 77, 'And, as often happens in America,', 517.160, 519.136, NULL),
  (1292, 77, 'immigration became
synonymous with Mexicans.', 519.160, 522.136, NULL),
  (1293, 77, 'There were endless stories of Mexicans', 522.858, 524.791, NULL),
  (1294, 77, 'as people who were
fleecing the healthcare system,', 524.815, 528.136, NULL),
  (1295, 77, 'sneaking across the border,', 528.160, 530.136, NULL),
  (1296, 77, 'being arrested at the border,
that sort of thing.', 530.160, 532.625, NULL),
  (1297, 77, 'I remember walking around
on my first day in Guadalajara,', 534.323, 538.136, NULL),
  (1298, 77, 'watching the people going to work,', 538.160, 540.136, NULL),
  (1299, 77, 'rolling up tortillas in the marketplace,', 540.160, 542.136, NULL),
  (1300, 77, 'smoking, laughing.', 542.160, 544.133, NULL),
  (1301, 77, 'I remember first feeling slight surprise.', 545.355, 548.136, NULL),
  (1302, 77, 'And then, I was overwhelmed with shame.', 548.160, 551.136, NULL),
  (1303, 77, 'I realized that I had been so immersed
in the media coverage of Mexicans', 551.501, 556.136, NULL),
  (1304, 77, 'that they had become one thing in my mind,', 556.160, 558.160, NULL),
  (1305, 77, 'the abject immigrant.', 558.184, 560.009, NULL),
  (1306, 77, 'I had bought into
the single story of Mexicans', 560.929, 563.351, NULL),
  (1307, 77, 'and I could not have
been more ashamed of myself.', 563.375, 565.882, NULL),
  (1308, 77, 'So that is how to create a single story,', 566.231, 568.778, NULL),
  (1309, 77, 'show a people as one thing,', 568.802, 571.136, NULL),
  (1310, 77, 'as only one thing,', 571.160, 573.136, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (1311, 77, 'over and over again,', 573.160, 575.136, NULL),
  (1312, 77, 'and that is what they become.', 575.160, 576.675, NULL),
  (1313, 77, 'It is impossible to talk
about the single story', 577.953, 580.399, NULL),
  (1314, 77, 'without talking about power.', 580.423, 582.112, NULL),
  (1315, 77, 'There is a word, an Igbo word,', 583.656, 585.404, NULL),
  (1316, 77, 'that I think about whenever I think about
the power structures of the world,', 585.428, 589.079, NULL),
  (1317, 77, 'and it is "nkali."', 589.103, 590.293, NULL),
  (1318, 77, 'It''s a noun that loosely translates
to "to be greater than another."', 590.492, 595.136, NULL),
  (1319, 77, 'Like our economic and political worlds,', 595.714, 598.642, NULL),
  (1320, 77, 'stories too are defined
by the principle of nkali:', 598.666, 603.136, NULL),
  (1321, 77, 'How they are told, who tells them,', 603.160, 605.136, NULL),
  (1322, 77, 'when they''re told,
how many stories are told,', 605.160, 608.397, NULL),
  (1323, 77, 'are really dependent on power.', 608.421, 610.628, NULL),
  (1324, 77, 'Power is the ability not just to tell
the story of another person,', 612.160, 615.303, NULL),
  (1325, 77, 'but to make it the definitive
story of that person.', 615.327, 619.136, NULL),
  (1326, 77, 'The Palestinian poet
Mourid Barghouti writes', 619.160, 621.256, NULL),
  (1327, 77, 'that if you want to dispossess a people,', 621.280, 624.136, NULL),
  (1328, 77, 'the simplest way to do it
is to tell their story', 624.160, 627.136, NULL),
  (1329, 77, 'and to start with, "secondly."', 627.160, 629.390, NULL),
  (1330, 77, 'Start the story with the arrows
of the Native Americans,', 630.644, 634.542, NULL),
  (1331, 77, 'and not with the arrival of the British,', 634.566, 637.136, NULL),
  (1332, 77, 'and you have an entirely different story.', 637.160, 640.137, NULL),
  (1333, 77, 'Start the story with
the failure of the African state,', 640.161, 644.593, NULL),
  (1334, 77, 'and not with the colonial
creation of the African state,', 644.617, 648.136, NULL),
  (1335, 77, 'and you have an entirely different story.', 648.160, 650.902, NULL),
  (1336, 77, 'I recently spoke at a university', 652.160, 654.136, NULL),
  (1337, 77, 'where a student told me
that it was such a shame', 654.160, 657.945, NULL),
  (1338, 77, 'that Nigerian men were physical abusers', 657.969, 661.088, NULL),
  (1339, 77, 'like the father character in my novel.', 661.112, 663.056, NULL),
  (1340, 77, 'I told him that I had just read a novel
called "American Psycho" --', 664.160, 668.136, NULL),
  (1341, 77, '(Laughter)', 668.160, 670.136, NULL),
  (1342, 77, '-- and that it was such a shame', 670.160, 672.136, NULL),
  (1343, 77, 'that young Americans
were serial murderers.', 672.160, 675.136, NULL),
  (1344, 77, '(Laughter)', 675.160, 679.136, NULL),
  (1345, 77, '(Applause)', 679.160, 685.136, NULL),
  (1346, 77, 'Now, obviously I said this
in a fit of mild irritation.', 685.160, 688.136, NULL),
  (1347, 77, '(Laughter)', 688.160, 690.136, NULL),
  (1348, 77, 'But it would never have
occurred to me to think', 690.160, 692.351, NULL),
  (1349, 77, 'that just because I had read a novel
in which a character was a serial killer', 692.375, 696.136, NULL),
  (1350, 77, 'that he was somehow
representative of all Americans.', 696.160, 700.136, NULL),
  (1351, 77, 'This is not because I am
a better person than that student,', 700.160, 703.136, NULL),
  (1352, 77, 'but because of America''s cultural
and economic power,', 703.160, 706.136, NULL),
  (1353, 77, 'I had many stories of America.', 706.160, 708.136, NULL),
  (1354, 77, 'I had read Tyler and Updike
and Steinbeck and Gaitskill.', 708.160, 712.136, NULL),
  (1355, 77, 'I did not have a single story of America.', 712.160, 714.720, NULL),
  (1356, 77, 'When I learned, some years ago,', 715.831, 717.537, NULL),
  (1357, 77, 'that writers were expected
to have had really unhappy childhoods', 717.561, 721.902, NULL),
  (1358, 77, 'to be successful,', 721.926, 724.136, NULL),
  (1359, 77, 'I began to think about how I could invent
horrible things my parents had done to me.', 724.160, 728.160, NULL),
  (1360, 77, '(Laughter)', 728.184, 730.136, NULL),
  (1361, 77, 'But the truth is that I had
a very happy childhood,', 730.160, 734.136, NULL),
  (1362, 77, 'full of laughter and love,
in a very close-knit family.', 734.160, 737.136, NULL),
  (1363, 77, 'But I also had grandfathers
who died in refugee camps.', 737.160, 740.371, NULL),
  (1364, 77, 'My cousin Polle died because
he could not get adequate healthcare.', 740.910, 745.136, NULL),
  (1365, 77, 'One of my closest friends,
Okoloma, died in a plane crash', 745.160, 748.136, NULL),
  (1366, 77, 'because our fire trucks
did not have water.', 748.160, 751.136, NULL),
  (1367, 77, 'I grew up under repressive
military governments', 751.160, 754.136, NULL),
  (1368, 77, 'that devalued education,', 754.160, 756.136, NULL),
  (1369, 77, 'so that sometimes, my parents
were not paid their salaries.', 756.160, 759.136, NULL),
  (1370, 77, 'And so, as a child, I saw jam
disappear from the breakfast table,', 759.160, 763.137, NULL),
  (1371, 77, 'then margarine disappeared,', 763.161, 765.658, NULL),
  (1372, 77, 'then bread became too expensive,', 765.682, 768.136, NULL),
  (1373, 77, 'then milk became rationed.', 768.160, 770.031, NULL),
  (1374, 77, 'And most of all, a kind
of normalized political fear', 771.160, 774.817, NULL),
  (1375, 77, 'invaded our lives.', 774.841, 776.523, NULL),
  (1376, 77, 'All of these stories make me who I am.', 777.983, 780.120, NULL),
  (1377, 77, 'But to insist on only
these negative stories', 780.617, 784.136, NULL),
  (1378, 77, 'is to flatten my experience', 784.160, 787.136, NULL),
  (1379, 77, 'and to overlook the many other
stories that formed me.', 787.160, 790.824, NULL),
  (1380, 77, 'The single story creates stereotypes,', 791.554, 794.136, NULL),
  (1381, 77, 'and the problem with stereotypes
is not that they are untrue,', 794.160, 799.136, NULL),
  (1382, 77, 'but that they are incomplete.', 799.160, 801.136, NULL),
  (1383, 77, 'They make one story become the only story.', 801.517, 804.120, NULL),
  (1384, 77, 'Of course, Africa is a continent
full of catastrophes:', 805.160, 807.732, NULL),
  (1385, 77, 'There are immense ones,
such as the horrific rapes in Congo', 807.756, 811.136, NULL),
  (1386, 77, 'and depressing ones,', 811.160, 812.786, NULL),
  (1387, 77, 'such as the fact that 5,000 people apply
for one job vacancy in Nigeria.', 812.810, 817.310, NULL),
  (1388, 77, 'But there are other stories
that are not about catastrophe,', 818.160, 821.723, NULL),
  (1389, 77, 'and it is very important, it is just
as important, to talk about them.', 821.747, 825.136, NULL),
  (1390, 77, 'I''ve always felt that it is impossible', 825.160, 827.136, NULL),
  (1391, 77, 'to engage properly
with a place or a person', 827.160, 830.136, NULL),
  (1392, 77, 'without engaging with all of the stories
of that place and that person.', 830.160, 834.136, NULL),
  (1393, 77, 'The consequence
of the single story is this:', 834.160, 837.740, NULL),
  (1394, 77, 'It robs people of dignity.', 837.764, 839.721, NULL),
  (1395, 77, 'It makes our recognition
of our equal humanity difficult.', 840.492, 844.136, NULL),
  (1396, 77, 'It emphasizes how we are different
rather than how we are similar.', 844.160, 848.324, NULL),
  (1397, 77, 'So what if before my Mexican trip,', 849.160, 851.649, NULL),
  (1398, 77, 'I had followed the immigration
debate from both sides,', 851.673, 855.136, NULL),
  (1399, 77, 'the U.S. and the Mexican?', 855.160, 857.136, NULL),
  (1400, 77, 'What if my mother had told us
that Fide''s family was poor', 857.160, 861.136, NULL),
  (1401, 77, 'and hardworking?', 861.160, 863.136, NULL),
  (1402, 77, 'What if we had an African
television network', 863.160, 865.256, NULL),
  (1403, 77, 'that broadcast diverse
African stories all over the world?', 865.280, 869.136, NULL),
  (1404, 77, 'What the Nigerian writer Chinua Achebe
calls "a balance of stories."', 869.160, 873.491, NULL),
  (1405, 77, 'What if my roommate knew
about my Nigerian publisher,', 873.515, 877.491, NULL),
  (1406, 77, 'Muhtar Bakare,', 877.515, 879.136, NULL),
  (1407, 77, 'a remarkable man who left
his job in a bank', 879.160, 881.208, NULL),
  (1408, 77, 'to follow his dream
and start a publishing house?', 881.232, 884.137, NULL),
  (1409, 77, 'Now, the conventional wisdom
was that Nigerians don''t read literature.', 884.161, 887.848, NULL),
  (1410, 77, 'He disagreed.', 887.872, 889.126, NULL),
  (1411, 77, 'He felt that people
who could read, would read,', 889.150, 892.236, NULL),
  (1412, 77, 'if you made literature affordable
and available to them.', 892.260, 896.136, NULL),
  (1413, 77, 'Shortly after he published my first novel,', 896.826, 899.136, NULL),
  (1414, 77, 'I went to a TV station
in Lagos to do an interview,', 899.160, 902.136, NULL),
  (1415, 77, 'and a woman who worked there
as a messenger came up to me and said,', 902.160, 905.351, NULL),
  (1416, 77, '"I really liked your novel.
I didn''t like the ending.', 905.375, 908.136, NULL),
  (1417, 77, 'Now, you must write a sequel,
and this is what will happen ..."', 908.160, 911.399, NULL),
  (1418, 77, '(Laughter)', 911.423, 914.137, NULL),
  (1419, 77, 'And she went on to tell me
what to write in the sequel.', 914.161, 917.137, NULL),
  (1420, 77, 'I was not only charmed, I was very moved.', 917.724, 920.136, NULL),
  (1421, 77, 'Here was a woman, part of the ordinary
masses of Nigerians,', 920.160, 923.136, NULL),
  (1422, 77, 'who were not supposed to be readers.', 923.160, 925.163, NULL),
  (1423, 77, 'She had not only read the book,', 926.061, 927.685, NULL),
  (1424, 77, 'but she had taken ownership of it', 927.709, 929.518, NULL),
  (1425, 77, 'and felt justified in telling me
what to write in the sequel.', 929.542, 932.645, NULL),
  (1426, 77, 'Now, what if my roommate knew
about my friend Funmi Iyanda,', 933.740, 937.136, NULL),
  (1427, 77, 'a fearless woman who hosts
a TV show in Lagos,', 937.160, 940.136, NULL),
  (1428, 77, 'and is determined to tell the stories
that we prefer to forget?', 940.160, 943.160, NULL),
  (1429, 77, 'What if my roommate knew
about the heart procedure', 943.855, 947.136, NULL),
  (1430, 77, 'that was performed in the Lagos
hospital last week?', 947.160, 950.136, NULL),
  (1431, 77, 'What if my roommate knew
about contemporary Nigerian music,', 950.160, 954.136, NULL),
  (1432, 77, 'talented people singing
in English and Pidgin,', 954.160, 957.136, NULL),
  (1433, 77, 'and Igbo and Yoruba and Ijo,', 957.160, 959.136, NULL),
  (1434, 77, 'mixing influences from Jay-Z to Fela', 959.160, 963.136, NULL),
  (1435, 77, 'to Bob Marley to their grandfathers.', 963.160, 965.342, NULL),
  (1436, 77, 'What if my roommate knew
about the female lawyer', 966.160, 968.399, NULL),
  (1437, 77, 'who recently went to court in Nigeria
to challenge a ridiculous law', 968.423, 972.136, NULL),
  (1438, 77, 'that required women to get
their husband''s consent', 972.160, 975.136, NULL),
  (1439, 77, 'before renewing their passports?', 975.160, 978.136, NULL),
  (1440, 77, 'What if my roommate knew about Nollywood,', 978.160, 981.136, NULL),
  (1441, 77, 'full of innovative people making
films despite great technical odds,', 981.160, 985.540, NULL),
  (1442, 77, 'films so popular', 985.564, 987.136, NULL),
  (1443, 77, 'that they really are the best example
of Nigerians consuming what they produce?', 987.160, 992.136, NULL),
  (1444, 77, 'What if my roommate knew about
my wonderfully ambitious hair braider,', 992.160, 995.446, NULL),
  (1445, 77, 'who has just started her own business
selling hair extensions?', 995.470, 999.136, NULL),
  (1446, 77, 'Or about the millions of other Nigerians
who start businesses and sometimes fail,', 999.160, 1003.136, NULL),
  (1447, 77, 'but continue to nurse ambition?', 1003.160, 1006.098, NULL),
  (1448, 77, 'Every time I am home I am confronted', 1007.160, 1009.136, NULL),
  (1449, 77, 'with the usual sources of irritation
for most Nigerians:', 1009.160, 1012.136, NULL),
  (1450, 77, 'our failed infrastructure,
our failed government,', 1012.160, 1015.604, NULL),
  (1451, 77, 'but also by the incredible resilience', 1015.628, 1017.683, NULL),
  (1452, 77, 'of people who thrive
despite the government,', 1017.707, 1021.136, NULL),
  (1453, 77, 'rather than because of it.', 1021.160, 1022.421, NULL),
  (1454, 77, 'I teach writing workshops
in Lagos every summer,', 1023.533, 1026.136, NULL),
  (1455, 77, 'and it is amazing to me
how many people apply,', 1026.160, 1029.136, NULL),
  (1456, 77, 'how many people are eager to write,', 1029.160, 1032.136, NULL),
  (1457, 77, 'to tell stories.', 1032.160, 1033.546, NULL),
  (1458, 77, 'My Nigerian publisher and I
have just started a non-profit', 1034.435, 1037.458, NULL),
  (1459, 77, 'called Farafina Trust,', 1037.482, 1039.136, NULL),
  (1460, 77, 'and we have big dreams
of building libraries', 1039.160, 1042.136, NULL),
  (1461, 77, 'and refurbishing libraries
that already exist', 1042.160, 1044.303, NULL),
  (1462, 77, 'and providing books for state schools', 1044.327, 1047.136, NULL),
  (1463, 77, 'that don''t have anything
in their libraries,', 1047.160, 1049.256, NULL),
  (1464, 77, 'and also of organizing lots
and lots of workshops,', 1049.280, 1051.661, NULL),
  (1465, 77, 'in reading and writing,', 1051.685, 1053.136, NULL),
  (1466, 77, 'for all the people who are eager
to tell our many stories.', 1053.160, 1056.359, NULL),
  (1467, 77, 'Stories matter.', 1056.486, 1058.136, NULL),
  (1468, 77, 'Many stories matter.', 1058.160, 1060.136, NULL),
  (1469, 77, 'Stories have been used
to dispossess and to malign,', 1060.160, 1064.136, NULL),
  (1470, 77, 'but stories can also be used
to empower and to humanize.', 1064.160, 1068.136, NULL),
  (1471, 77, 'Stories can break the dignity of a people,', 1068.802, 1071.136, NULL),
  (1472, 77, 'but stories can also repair
that broken dignity.', 1071.160, 1074.863, NULL),
  (1473, 77, 'The American writer
Alice Walker wrote this', 1076.160, 1078.208, NULL),
  (1474, 77, 'about her Southern relatives
who had moved to the North.', 1078.232, 1082.136, NULL),
  (1475, 77, 'She introduced them to a book about', 1082.160, 1084.136, NULL),
  (1476, 77, 'the Southern life
that they had left behind.', 1084.160, 1086.228, NULL),
  (1477, 77, '"They sat around,
reading the book themselves,', 1087.752, 1091.136, NULL),
  (1478, 77, 'listening to me read the book,
and a kind of paradise was regained."', 1091.160, 1096.688, NULL),
  (1479, 77, 'I would like to end with this thought:', 1097.739, 1100.601, NULL),
  (1480, 77, 'That when we reject the single story,', 1100.625, 1103.136, NULL),
  (1481, 77, 'when we realize that
there is never a single story', 1103.160, 1106.136, NULL),
  (1482, 77, 'about any place,', 1106.160, 1108.601, NULL),
  (1483, 77, 'we regain a kind of paradise.', 1108.625, 1110.136, NULL),
  (1484, 77, 'Thank you.', 1110.855, 1111.977, NULL),
  (1485, 77, '(Applause)', 1112.001, 1115.001, NULL),
  (1486, 78, 'How do you explain
when things don''t go as we assume?', 16.257, 20.223, NULL),
  (1487, 78, 'Or better, how do you explain', 20.257, 23.223, NULL),
  (1488, 78, 'when others are able to achieve things
that seem to defy all of the assumptions?', 23.257, 27.223, NULL),
  (1489, 78, 'For example:', 27.257, 29.223, NULL),
  (1490, 78, 'Why is Apple so innovative?', 29.257, 31.223, NULL),
  (1491, 78, 'Year after year, after year,', 31.257, 33.223, NULL),
  (1492, 78, 'they''re more innovative
than all their competition.', 33.257, 36.223, NULL),
  (1493, 78, 'And yet, they''re just a computer company.', 36.257, 38.223, NULL),
  (1494, 78, 'They''re just like everyone else.', 38.257, 40.223, NULL),
  (1495, 78, 'They have the same access
to the same talent,', 40.257, 42.457, NULL),
  (1496, 78, 'the same agencies,', 42.457, 43.457, NULL),
  (1497, 78, 'the same consultants, the same media.', 43.490, 45.357, NULL),
  (1498, 78, 'Then why is it that they seem
to have something different?', 45.390, 48.823, NULL),
  (1499, 78, 'Why is it that Martin Luther King
led the Civil Rights Movement?', 50.257, 54.223, NULL),
  (1500, 78, 'He wasn''t the only man
who suffered in pre-civil rights America,', 54.257, 58.223, NULL),
  (1501, 78, 'and he certainly wasn''t
the only great orator of the day.', 58.257, 60.990, NULL),
  (1502, 78, 'Why him?', 61.023, 62.223, NULL),
  (1503, 78, 'And why is it that the Wright brothers', 62.257, 65.223, NULL),
  (1504, 78, 'were able to figure out controlled,
powered man flight', 65.257, 68.223, NULL),
  (1505, 78, 'when there were certainly other teams', 68.257, 70.423, NULL),
  (1506, 78, 'who were better qualified,
better funded --', 70.423, 73.290, NULL),
  (1507, 78, 'and they didn''t achieve
powered man flight,', 73.323, 76.223, NULL),
  (1508, 78, 'and the Wright brothers beat them to it.', 76.257, 78.223, NULL),
  (1509, 78, 'There''s something else at play here.', 78.257, 80.157, NULL),
  (1510, 78, 'About three and a half years ago,
I made a discovery.', 81.390, 85.223, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (1511, 78, 'And this discovery profoundly changed
my view on how I thought the world worked,', 85.257, 91.223, NULL),
  (1512, 78, 'and it even profoundly changed the way
in which I operate in it.', 91.257, 95.257, NULL),
  (1513, 78, 'As it turns out, there''s a pattern.', 97.257, 100.223, NULL),
  (1514, 78, 'As it turns out, all the great inspiring
leaders and organizations in the world,', 100.257, 104.223, NULL),
  (1515, 78, 'whether it''s Apple or Martin Luther King
or the Wright brothers,', 104.257, 107.257, NULL),
  (1516, 78, 'they all think, act and communicate
the exact same way.', 107.290, 111.223, NULL),
  (1517, 78, 'And it''s the complete opposite
to everyone else.', 111.257, 115.223, NULL),
  (1518, 78, 'All I did was codify it,', 115.257, 117.223, NULL),
  (1519, 78, 'and it''s probably
the world''s simplest idea.', 117.257, 121.223, NULL),
  (1520, 78, 'I call it the golden circle.', 121.257, 123.257, NULL),
  (1521, 78, 'Why? How? What?', 131.557, 134.223, NULL),
  (1522, 78, 'This little idea explains', 134.257, 136.223, NULL),
  (1523, 78, 'why some organizations and some leaders
are able to inspire where others aren''t.', 136.257, 140.223, NULL),
  (1524, 78, 'Let me define the terms really quickly.', 140.257, 142.223, NULL),
  (1525, 78, 'Every single person, every single
organization on the planet', 142.257, 145.223, NULL),
  (1526, 78, 'knows what they do, 100 percent.', 145.257, 147.990, NULL),
  (1527, 78, 'Some know how they do it,', 149.257, 151.223, NULL),
  (1528, 78, 'whether you call it
your differentiated value proposition', 151.257, 153.957, NULL),
  (1529, 78, 'or your proprietary process or your USP.', 153.957, 156.223, NULL),
  (1530, 78, 'But very, very few people or organizations
know why they do what they do.', 156.257, 160.990, NULL),
  (1531, 78, 'And by "why" I don''t mean
"to make a profit."', 161.023, 163.223, NULL),
  (1532, 78, 'That''s a result. It''s always a result.', 163.257, 165.223, NULL),
  (1533, 78, 'By "why," I mean: What''s your purpose?', 165.257, 167.223, NULL),
  (1534, 78, 'What''s your cause? What''s your belief?', 167.257, 169.690, NULL),
  (1535, 78, 'Why does your organization exist?', 169.723, 173.223, NULL),
  (1536, 78, 'Why do you get out of bed in the morning?', 173.257, 175.623, NULL),
  (1537, 78, 'And why should anyone care?', 175.657, 178.223, NULL),
  (1538, 78, 'As a result, the way we think, we act,', 178.257, 180.157, NULL),
  (1539, 78, 'the way we communicate
is from the outside in, it''s obvious.', 180.190, 182.990, NULL),
  (1540, 78, 'We go from the clearest thing
to the fuzziest thing.', 183.023, 185.723, NULL),
  (1541, 78, 'But the inspired leaders
and the inspired organizations --', 185.757, 189.223, NULL),
  (1542, 78, 'regardless of their size,
regardless of their industry --', 189.257, 192.857, NULL),
  (1543, 78, 'all think, act and communicate
from the inside out.', 192.890, 195.990, NULL),
  (1544, 78, 'Let me give you an example.', 197.790, 199.223, NULL),
  (1545, 78, 'I use Apple because they''re easy
to understand and everybody gets it.', 199.257, 202.657, NULL),
  (1546, 78, 'If Apple were like everyone else,', 202.657, 205.223, NULL),
  (1547, 78, 'a marketing message from them
might sound like this:', 205.257, 208.757, NULL),
  (1548, 78, '"We make great computers.', 208.757, 210.257, NULL),
  (1549, 78, 'They''re beautifully designed,
simple to use and user friendly.', 211.257, 215.223, NULL),
  (1550, 78, 'Want to buy one?"', 215.257, 216.557, NULL),
  (1551, 78, '"Meh."', 217.457, 218.457, NULL),
  (1552, 78, 'That''s how most of us communicate.', 218.490, 220.223, NULL),
  (1553, 78, 'That''s how most marketing
and sales are done,', 220.257, 222.757, NULL),
  (1554, 78, 'that''s how we communicate interpersonally.', 222.757, 224.857, NULL),
  (1555, 78, 'We say what we do,', 224.890, 226.657, NULL),
  (1556, 78, 'we say how we''re different or better', 226.690, 228.457, NULL),
  (1557, 78, 'and we expect some sort of a behavior,', 228.490, 230.323, NULL),
  (1558, 78, 'a purchase, a vote, something like that.', 230.357, 232.323, NULL),
  (1559, 78, 'Here''s our new law firm:', 232.357, 233.623, NULL),
  (1560, 78, 'We have the best lawyers
with the biggest clients,', 233.657, 236.090, NULL),
  (1561, 78, 'we always perform for our clients.', 236.090, 237.723, NULL),
  (1562, 78, 'Here''s our new car:', 237.757, 239.223, NULL),
  (1563, 78, 'It gets great gas mileage,
it has leather seats.', 239.257, 241.890, NULL),
  (1564, 78, 'Buy our car.', 241.923, 243.090, NULL),
  (1565, 78, 'But it''s uninspiring.', 243.123, 244.223, NULL),
  (1566, 78, 'Here''s how Apple actually communicates.', 244.257, 246.890, NULL),
  (1567, 78, '"Everything we do,
we believe in challenging the status quo.', 248.257, 253.223, NULL),
  (1568, 78, 'We believe in thinking differently.', 253.257, 256.223, NULL),
  (1569, 78, 'The way we challenge the status quo', 256.923, 258.690, NULL),
  (1570, 78, 'is by making our products
beautifully designed,', 258.723, 261.223, NULL),
  (1571, 78, 'simple to use and user friendly.', 261.257, 263.223, NULL),
  (1572, 78, 'We just happen to make great computers.', 263.257, 265.890, NULL),
  (1573, 78, 'Want to buy one?"', 265.923, 266.990, NULL),
  (1574, 78, 'Totally different, right?', 268.157, 269.457, NULL),
  (1575, 78, 'You''re ready to buy a computer from me.', 269.490, 271.423, NULL),
  (1576, 78, 'I just reversed
the order of the information.', 271.457, 273.657, NULL),
  (1577, 78, 'What it proves to us is
that people don''t buy what you do;', 273.690, 277.557, NULL),
  (1578, 78, 'people buy why you do it.', 277.590, 279.990, NULL),
  (1579, 78, 'This explains why
every single person in this room', 279.990, 284.223, NULL),
  (1580, 78, 'is perfectly comfortable buying
a computer from Apple.', 284.257, 287.223, NULL),
  (1581, 78, 'But we''re also perfectly comfortable', 287.257, 289.223, NULL),
  (1582, 78, 'buying an MP3 player from Apple,
or a phone from Apple,', 289.257, 292.223, NULL),
  (1583, 78, 'or a DVR from Apple.', 292.257, 294.223, NULL),
  (1584, 78, 'As I said before,
Apple''s just a computer company.', 294.257, 296.790, NULL),
  (1585, 78, 'Nothing distinguishes them structurally
from any of their competitors.', 296.823, 300.223, NULL),
  (1586, 78, 'Their competitors are equally qualified
to make all of these products.', 300.257, 303.690, NULL),
  (1587, 78, 'In fact, they tried.', 303.723, 305.223, NULL),
  (1588, 78, 'A few years ago, Gateway
came out with flat-screen TVs.', 305.257, 308.223, NULL),
  (1589, 78, 'They''re eminently qualified
to make flat-screen TVs.', 308.257, 310.690, NULL),
  (1590, 78, 'They''ve been making
flat-screen monitors for years.', 310.723, 313.223, NULL),
  (1591, 78, 'Nobody bought one.', 313.257, 314.823, NULL),
  (1592, 78, 'Dell came out with MP3 players and PDAs,', 317.923, 323.223, NULL),
  (1593, 78, 'and they make great quality products,', 323.257, 325.223, NULL),
  (1594, 78, 'and they can make perfectly
well-designed products --', 325.257, 328.223, NULL),
  (1595, 78, 'and nobody bought one.', 328.257, 330.057, NULL),
  (1596, 78, 'In fact, talking about it now,
we can''t even imagine', 330.090, 332.523, NULL),
  (1597, 78, 'buying an MP3 player from Dell.', 332.557, 334.090, NULL),
  (1598, 78, 'Why would you buy one
from a computer company?', 334.123, 336.323, NULL),
  (1599, 78, 'But we do it every day.', 336.357, 337.957, NULL),
  (1600, 78, 'People don''t buy what you do;
they buy why you do it.', 337.990, 340.457, NULL),
  (1601, 78, 'The goal is not to do business
with everybody who needs what you have.', 340.490, 346.023, NULL),
  (1602, 78, 'The goal is to do business with people
who believe what you believe.', 346.057, 350.090, NULL),
  (1603, 78, 'Here''s the best part:', 351.257, 352.890, NULL),
  (1604, 78, 'None of what I''m telling you
is my opinion.', 352.923, 355.223, NULL),
  (1605, 78, 'It''s all grounded
in the tenets of biology.', 355.257, 358.223, NULL),
  (1606, 78, 'Not psychology, biology.', 358.257, 360.223, NULL),
  (1607, 78, 'If you look at a cross-section
of the human brain,', 360.257, 362.990, NULL),
  (1608, 78, 'from the top down,
the human brain is actually broken', 363.023, 365.657, NULL),
  (1609, 78, 'into three major components', 365.690, 367.223, NULL),
  (1610, 78, 'that correlate perfectly
with the golden circle.', 367.257, 370.223, NULL),
  (1611, 78, 'Our newest brain, our Homo sapien brain,', 370.257, 373.223, NULL),
  (1612, 78, 'our neocortex,', 373.257, 375.223, NULL),
  (1613, 78, 'corresponds with the "what" level.', 375.257, 377.223, NULL),
  (1614, 78, 'The neocortex is responsible', 377.257, 379.223, NULL),
  (1615, 78, 'for all of our rational
and analytical thought and language.', 379.257, 383.223, NULL),
  (1616, 78, 'The middle two sections make up
our limbic brains,', 383.257, 386.223, NULL),
  (1617, 78, 'and our limbic brains are responsible
for all of our feelings,', 386.257, 389.223, NULL),
  (1618, 78, 'like trust and loyalty.', 389.257, 392.223, NULL),
  (1619, 78, 'It''s also responsible
for all human behavior,', 392.257, 394.390, NULL),
  (1620, 78, 'all decision-making,', 394.423, 396.223, NULL),
  (1621, 78, 'and it has no capacity for language.', 396.257, 399.223, NULL),
  (1622, 78, 'In other words, when we communicate
from the outside in,', 399.257, 402.223, NULL),
  (1623, 78, 'yes, people can understand vast
amounts of complicated information', 402.257, 405.390, NULL),
  (1624, 78, 'like features and benefits
and facts and figures.', 405.423, 408.223, NULL),
  (1625, 78, 'It just doesn''t drive behavior.', 408.257, 410.223, NULL),
  (1626, 78, 'When we can communicate
from the inside out,', 410.257, 412.357, NULL),
  (1627, 78, 'we''re talking directly
to the part of the brain', 412.390, 414.623, NULL),
  (1628, 78, 'that controls behavior,', 414.623, 416.223, NULL),
  (1629, 78, 'and then we allow people to rationalize it
with the tangible things we say and do.', 416.257, 420.223, NULL),
  (1630, 78, 'This is where gut decisions come from.', 420.257, 422.823, NULL),
  (1631, 78, 'Sometimes you can give somebody
all the facts and figures,', 422.823, 426.223, NULL),
  (1632, 78, 'and they say, "I know
what all the facts and details say,', 426.257, 428.990, NULL),
  (1633, 78, 'but it just doesn''t feel right."', 428.990, 430.523, NULL),
  (1634, 78, 'Why would we use that verb,
it doesn''t "feel" right?', 430.557, 433.090, NULL),
  (1635, 78, 'Because the part of the brain
that controls decision-making', 433.123, 435.890, NULL),
  (1636, 78, 'doesn''t control language.', 435.923, 437.223, NULL),
  (1637, 78, 'The best we can muster up is,', 437.257, 438.723, NULL),
  (1638, 78, '"I don''t know. 
It just doesn''t feel right."', 438.757, 440.790, NULL),
  (1639, 78, 'Or sometimes you say you''re leading
with your heart or soul.', 440.823, 444.223, NULL),
  (1640, 78, 'I hate to break it to you,
those aren''t other body parts', 444.257, 446.923, NULL),
  (1641, 78, 'controlling your behavior.', 446.957, 448.223, NULL),
  (1642, 78, 'It''s all happening here
in your limbic brain,', 448.257, 450.390, NULL),
  (1643, 78, 'the part of the brain that controls
decision-making and not language.', 450.423, 453.723, NULL),
  (1644, 78, 'But if you don''t know
why you do what you do,', 453.723, 456.223, NULL),
  (1645, 78, 'and people respond
to why you do what you do,', 456.257, 459.223, NULL),
  (1646, 78, 'then how will you ever get people', 459.257, 462.223, NULL),
  (1647, 78, 'to vote for you,
or buy something from you,', 462.257, 464.290, NULL),
  (1648, 78, 'or, more importantly, be loyal', 464.323, 466.223, NULL),
  (1649, 78, 'and want to be a part
of what it is that you do.', 466.257, 469.223, NULL),
  (1650, 78, 'The goal is not just to sell
to people who need what you have;', 469.257, 472.323, NULL),
  (1651, 78, 'the goal is to sell to people
who believe what you believe.', 472.323, 475.223, NULL),
  (1652, 78, 'The goal is not just
to hire people who need a job;', 475.257, 479.223, NULL),
  (1653, 78, 'it''s to hire people
who believe what you believe.', 479.257, 482.223, NULL),
  (1654, 78, 'I always say that, you know,', 482.257, 484.390, NULL),
  (1655, 78, 'if you hire people just because they can
do a job, they''ll work for your money,', 484.390, 490.223, NULL),
  (1656, 78, 'but if they believe what you believe,', 490.257, 492.057, NULL),
  (1657, 78, 'they''ll work for you with blood
and sweat and tears.', 492.057, 494.523, NULL),
  (1658, 78, 'Nowhere else is there a better example
than with the Wright brothers.', 494.523, 498.223, NULL),
  (1659, 78, 'Most people don''t know
about Samuel Pierpont Langley.', 498.257, 501.857, NULL),
  (1660, 78, 'And back in the early 20th century,', 501.890, 504.223, NULL),
  (1661, 78, 'the pursuit of powered man flight
was like the dot com of the day.', 504.257, 507.390, NULL),
  (1662, 78, 'Everybody was trying it.', 507.423, 509.223, NULL),
  (1663, 78, 'And Samuel Pierpont Langley
had, what we assume,', 509.257, 512.223, NULL),
  (1664, 78, 'to be the recipe for success.', 512.257, 514.923, NULL),
  (1665, 78, 'Even now, you ask people,', 514.957, 516.657, NULL),
  (1666, 78, '"Why did your product
or why did your company fail?"', 516.690, 519.290, NULL),
  (1667, 78, 'and people always give
you the same permutation', 519.323, 521.590, NULL),
  (1668, 78, 'of the same three things:', 521.590, 523.023, NULL),
  (1669, 78, 'under-capitalized, the wrong people,
bad market conditions.', 523.057, 526.023, NULL),
  (1670, 78, 'It''s always the same three things,
so let''s explore that.', 526.057, 528.857, NULL),
  (1671, 78, 'Samuel Pierpont Langley', 529.690, 531.223, NULL),
  (1672, 78, 'was given 50,000 dollars
by the War Department', 531.257, 534.223, NULL),
  (1673, 78, 'to figure out this flying machine.', 534.257, 536.223, NULL),
  (1674, 78, 'Money was no problem.', 536.257, 537.823, NULL),
  (1675, 78, 'He held a seat at Harvard', 537.857, 540.223, NULL),
  (1676, 78, 'and worked at the Smithsonian
and was extremely well-connected;', 540.257, 543.257, NULL),
  (1677, 78, 'he knew all the big minds of the day.', 543.290, 545.223, NULL),
  (1678, 78, 'He hired the best minds money could find', 545.257, 549.223, NULL),
  (1679, 78, 'and the market conditions were fantastic.', 549.257, 551.223, NULL),
  (1680, 78, 'The New York Times
followed him around everywhere,', 551.257, 554.223, NULL),
  (1681, 78, 'and everyone was rooting for Langley.', 554.257, 556.223, NULL),
  (1682, 78, 'Then how come we''ve never heard
of Samuel Pierpont Langley?', 556.257, 559.257, NULL),
  (1683, 78, 'A few hundred miles away in Dayton, Ohio,', 559.757, 561.890, NULL),
  (1684, 78, 'Orville and Wilbur Wright,', 562.823, 564.223, NULL),
  (1685, 78, 'they had none of what we consider
to be the recipe for success.', 564.257, 568.223, NULL),
  (1686, 78, 'They had no money;', 568.257, 570.223, NULL),
  (1687, 78, 'they paid for their dream
with the proceeds from their bicycle shop.', 570.257, 573.490, NULL),
  (1688, 78, 'Not a single person
on the Wright brothers'' team', 573.523, 575.790, NULL),
  (1689, 78, 'had a college education,', 575.823, 577.223, NULL),
  (1690, 78, 'not even Orville or Wilbur.', 577.257, 579.223, NULL),
  (1691, 78, 'And The New York Times
followed them around nowhere.', 579.257, 582.223, NULL),
  (1692, 78, 'The difference was,', 582.257, 584.223, NULL),
  (1693, 78, 'Orville and Wilbur were driven by a cause,
by a purpose, by a belief.', 584.257, 588.223, NULL),
  (1694, 78, 'They believed that if they could
figure out this flying machine,', 588.257, 592.223, NULL),
  (1695, 78, 'it''ll change the course of the world.', 592.257, 594.057, NULL),
  (1696, 78, 'Samuel Pierpont Langley was different.', 595.657, 597.590, NULL),
  (1697, 78, 'He wanted to be rich,
and he wanted to be famous.', 597.623, 600.223, NULL),
  (1698, 78, 'He was in pursuit of the result.', 600.257, 602.223, NULL),
  (1699, 78, 'He was in pursuit of the riches.', 602.257, 604.223, NULL),
  (1700, 78, 'And lo and behold, look what happened.', 604.257, 606.223, NULL),
  (1701, 78, 'The people who believed
in the Wright brothers'' dream', 606.223, 609.790, NULL),
  (1702, 78, 'worked with them with blood
and sweat and tears.', 609.790, 612.223, NULL),
  (1703, 78, 'The others just worked for the paycheck.', 612.257, 614.223, NULL),
  (1704, 78, 'They tell stories of how every time
the Wright brothers went out,', 614.257, 617.457, NULL),
  (1705, 78, 'they would have to take
five sets of parts,', 617.490, 619.490, NULL),
  (1706, 78, 'because that''s how many times
they would crash before supper.', 619.523, 622.523, NULL),
  (1707, 78, 'And, eventually, on December 17th, 1903,', 623.923, 627.923, NULL),
  (1708, 78, 'the Wright brothers took flight,', 627.957, 630.223, NULL),
  (1709, 78, 'and no one was there
to even experience it.', 630.257, 632.290, NULL),
  (1710, 78, 'We found out about it a few days later.', 632.323, 634.423, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (1711, 78, 'And further proof that Langley
was motivated by the wrong thing:', 636.023, 640.023, NULL),
  (1712, 78, 'the day the Wright brothers took flight,', 640.057, 642.390, NULL),
  (1713, 78, 'he quit.', 642.423, 643.423, NULL),
  (1714, 78, 'He could have said,', 643.457, 645.223, NULL),
  (1715, 78, '"That''s an amazing discovery, guys,', 645.257, 647.223, NULL),
  (1716, 78, 'and I will improve
upon your technology," but he didn''t.', 647.257, 650.223, NULL),
  (1717, 78, 'He wasn''t first, he didn''t get rich,
he didn''t get famous, so he quit.', 650.257, 653.857, NULL),
  (1718, 78, 'People don''t buy what you do;
they buy why you do it.', 654.957, 657.457, NULL),
  (1719, 78, 'If you talk about what you believe,', 657.490, 659.223, NULL),
  (1720, 78, 'you will attract those
who believe what you believe.', 659.257, 662.223, NULL),
  (1721, 78, 'But why is it important to attract
those who believe what you believe?', 662.257, 665.590, NULL),
  (1722, 78, 'Something called the law
of diffusion of innovation,', 667.657, 670.223, NULL),
  (1723, 78, 'if you don''t know the law,
you know the terminology.', 670.223, 672.757, NULL),
  (1724, 78, 'The first 2.5% of our population
are our innovators.', 672.757, 677.223, NULL),
  (1725, 78, 'The next 13.5% of our population
are our early adopters.', 677.257, 681.457, NULL),
  (1726, 78, 'The next 34% are your early majority,', 682.523, 684.357, NULL),
  (1727, 78, 'your late majority and your laggards.', 684.390, 686.723, NULL),
  (1728, 78, 'The only reason these people
buy touch-tone phones', 687.690, 690.223, NULL),
  (1729, 78, 'is because you can''t buy
rotary phones anymore.', 690.257, 692.490, NULL),
  (1730, 78, '(Laughter)', 692.523, 694.223, NULL),
  (1731, 78, 'We all sit at various places
at various times on this scale,', 694.257, 697.223, NULL),
  (1732, 78, 'but what the law of diffusion
of innovation tells us', 697.257, 700.223, NULL),
  (1733, 78, 'is that if you want mass-market success
or mass-market acceptance of an idea,', 700.257, 705.223, NULL),
  (1734, 78, 'you cannot have it
until you achieve this tipping point', 705.257, 709.223, NULL),
  (1735, 78, 'between 15 and 18 percent
market penetration,', 709.257, 712.223, NULL),
  (1736, 78, 'and then the system tips.', 712.257, 715.223, NULL),
  (1737, 78, 'I love asking businesses,
"What''s your conversion on new business?"', 715.257, 718.490, NULL),
  (1738, 78, 'They love to tell you,
"It''s about 10 percent," proudly.', 718.523, 721.157, NULL),
  (1739, 78, 'Well, you can trip
over 10% of the customers.', 721.190, 723.323, NULL),
  (1740, 78, 'We all have about 10% who just "get it."', 723.357, 725.290, NULL),
  (1741, 78, 'That''s how we describe them, right?', 725.323, 727.023, NULL),
  (1742, 78, 'That''s like that gut feeling,
"Oh, they just get it."', 727.057, 729.523, NULL),
  (1743, 78, 'The problem is: How do you
find the ones that get it', 729.557, 731.990, NULL),
  (1744, 78, 'before doing business
versus the ones who don''t get it?', 732.023, 734.657, NULL),
  (1745, 78, 'So it''s this here, this little gap
that you have to close,', 734.690, 738.223, NULL),
  (1746, 78, 'as Jeffrey Moore calls it,
"Crossing the Chasm" --', 738.257, 740.623, NULL),
  (1747, 78, 'because, you see, the early majority
will not try something', 740.657, 744.223, NULL),
  (1748, 78, 'until someone else has tried it first.', 744.257, 748.223, NULL),
  (1749, 78, 'And these guys, the innovators
and the early adopters,', 748.257, 751.223, NULL),
  (1750, 78, 'they''re comfortable
making those gut decisions.', 751.257, 753.457, NULL),
  (1751, 78, 'They''re more comfortable
making those intuitive decisions', 753.457, 756.223, NULL),
  (1752, 78, 'that are driven by what
they believe about the world', 756.257, 760.223, NULL),
  (1753, 78, 'and not just what product is available.', 760.257, 762.223, NULL),
  (1754, 78, 'These are the people who stood
in line for six hours', 762.257, 764.890, NULL),
  (1755, 78, 'to buy an iPhone when they first came out,', 764.923, 767.057, NULL),
  (1756, 78, 'when you could have bought one
off the shelf the next week.', 767.090, 770.223, NULL),
  (1757, 78, 'These are the people
who spent 40,000 dollars', 770.257, 772.390, NULL),
  (1758, 78, 'on flat-screen TVs
when they first came out,', 772.423, 775.223, NULL),
  (1759, 78, 'even though the technology
was substandard.', 775.257, 777.557, NULL),
  (1760, 78, 'And, by the way, they didn''t do it
because the technology was so great;', 778.257, 782.223, NULL),
  (1761, 78, 'they did it for themselves.', 782.257, 784.223, NULL),
  (1762, 78, 'It''s because they wanted to be first.', 784.257, 786.223, NULL),
  (1763, 78, 'People don''t buy what you do;
they buy why you do it', 786.257, 788.723, NULL),
  (1764, 78, 'and what you do simply proves
what you believe.', 788.757, 792.223, NULL),
  (1765, 78, 'In fact, people will do the things
that prove what they believe.', 792.257, 796.223, NULL),
  (1766, 78, 'The reason that person bought the iPhone
in the first six hours,', 796.257, 801.223, NULL),
  (1767, 78, 'stood in line for six hours,', 801.257, 803.223, NULL),
  (1768, 78, 'was because of what they believed
about the world,', 803.257, 805.623, NULL),
  (1769, 78, 'and how they wanted everybody to see them:', 805.657, 807.657, NULL),
  (1770, 78, 'they were first.', 807.690, 808.723, NULL),
  (1771, 78, 'People don''t buy what you do;
they buy why you do it.', 808.757, 811.223, NULL),
  (1772, 78, 'So let me give you a famous example,', 811.257, 813.223, NULL),
  (1773, 78, 'a famous failure and a famous success
of the law of diffusion of innovation.', 813.257, 817.823, NULL),
  (1774, 78, 'First, the famous failure.', 817.857, 819.223, NULL),
  (1775, 78, 'It''s a commercial example.', 819.257, 821.223, NULL),
  (1776, 78, 'As we said before, the recipe for success', 821.257, 823.490, NULL),
  (1777, 78, 'is money and the right people
and the right market conditions.', 823.523, 826.923, NULL),
  (1778, 78, 'You should have success then.', 826.923, 828.690, NULL),
  (1779, 78, 'Look at TiVo.', 828.690, 830.223, NULL),
  (1780, 78, 'From the time TiVo came out
about eight or nine years ago', 830.257, 832.957, NULL),
  (1781, 78, 'to this current day,', 832.990, 834.223, NULL),
  (1782, 78, 'they are the single highest-quality
product on the market,', 834.257, 837.923, NULL),
  (1783, 78, 'hands down, there is no dispute.', 837.923, 839.790, NULL),
  (1784, 78, 'They were extremely well-funded.', 840.857, 842.657, NULL),
  (1785, 78, 'Market conditions were fantastic.', 842.690, 844.390, NULL),
  (1786, 78, 'I mean, we use TiVo as verb.', 844.390, 846.223, NULL),
  (1787, 78, 'I TiVo stuff on my piece-of-junk
Time Warner DVR all the time.', 846.257, 849.523, NULL),
  (1788, 78, '(Laughter)', 849.523, 851.590, NULL),
  (1789, 78, 'But TiVo''s a commercial failure.', 852.057, 854.223, NULL),
  (1790, 78, 'They''ve never made money.', 854.257, 856.223, NULL),
  (1791, 78, 'And when they went IPO,', 856.257, 858.223, NULL),
  (1792, 78, 'their stock was at about 30 or 40 dollars', 858.257, 860.223, NULL),
  (1793, 78, 'and then plummeted,
and it''s never traded above 10.', 860.257, 862.690, NULL),
  (1794, 78, 'In fact, I don''t think
it''s even traded above six,', 862.723, 865.223, NULL),
  (1795, 78, 'except for a couple of little spikes.', 865.257, 867.223, NULL),
  (1796, 78, 'Because you see, when TiVo
launched their product,', 867.257, 869.590, NULL),
  (1797, 78, 'they told us all what they had.', 869.623, 872.223, NULL),
  (1798, 78, 'They said, "We have a product
that pauses live TV,', 872.257, 875.723, NULL),
  (1799, 78, 'skips commercials, rewinds live TV
and memorizes your viewing habits', 875.723, 880.223, NULL),
  (1800, 78, 'without you even asking."', 880.257, 882.057, NULL),
  (1801, 78, 'And the cynical majority said,', 883.423, 885.223, NULL),
  (1802, 78, '"We don''t believe you.', 885.257, 887.223, NULL),
  (1803, 78, 'We don''t need it. We don''t like it.', 887.257, 889.790, NULL),
  (1804, 78, 'You''re scaring us."', 889.823, 890.890, NULL),
  (1805, 78, 'What if they had said,', 891.957, 893.223, NULL),
  (1806, 78, '"If you''re the kind of person
who likes to have total control', 893.257, 898.223, NULL),
  (1807, 78, 'over every aspect of your life,', 898.257, 901.223, NULL),
  (1808, 78, 'boy, do we have a product for you.', 901.257, 904.223, NULL),
  (1809, 78, 'It pauses live TV, skips commercials,', 904.257, 906.223, NULL),
  (1810, 78, 'memorizes your viewing habits, etc., etc."', 906.257, 908.423, NULL),
  (1811, 78, 'People don''t buy what you do;
they buy why you do it,', 909.123, 911.623, NULL),
  (1812, 78, 'and what you do simply serves
as the proof of what you believe.', 911.657, 915.023, NULL),
  (1813, 78, 'Now let me give you a successful example
of the law of diffusion of innovation.', 915.823, 919.857, NULL),
  (1814, 78, 'In the summer of 1963,', 921.257, 924.223, NULL),
  (1815, 78, '250,000 people showed up
on the mall in Washington', 924.257, 928.223, NULL),
  (1816, 78, 'to hear Dr. King speak.', 928.257, 929.923, NULL),
  (1817, 78, 'They sent out no invitations,', 931.423, 934.223, NULL),
  (1818, 78, 'and there was no website
to check the date.', 934.257, 937.223, NULL),
  (1819, 78, 'How do you do that?', 937.257, 939.223, NULL),
  (1820, 78, 'Well, Dr. King
wasn''t the only man in America', 939.257, 941.390, NULL),
  (1821, 78, 'who was a great orator.', 941.423, 943.823, NULL),
  (1822, 78, 'He wasn''t the only man
in America who suffered', 943.857, 946.023, NULL),
  (1823, 78, 'in a pre-civil rights America.', 946.057, 947.823, NULL),
  (1824, 78, 'In fact, some of his ideas were bad.', 947.857, 950.223, NULL),
  (1825, 78, 'But he had a gift.', 950.257, 951.290, NULL),
  (1826, 78, 'He didn''t go around telling people
what needed to change in America.', 952.223, 955.490, NULL),
  (1827, 78, 'He went around
and told people what he believed.', 955.523, 957.823, NULL),
  (1828, 78, '"I believe, I believe, I believe,"
he told people.', 957.857, 961.223, NULL),
  (1829, 78, 'And people who believed what he believed', 961.257, 963.790, NULL),
  (1830, 78, 'took his cause, and they made it
their own, and they told people.', 963.823, 967.223, NULL),
  (1831, 78, 'And some of those people
created structures', 967.257, 969.290, NULL),
  (1832, 78, 'to get the word out to even more people.', 969.323, 971.823, NULL),
  (1833, 78, 'And lo and behold,
250,000 people showed up', 971.857, 975.223, NULL),
  (1834, 78, 'on the right day at the right time
to hear him speak.', 975.257, 979.490, NULL),
  (1835, 78, 'How many of them showed up for him?', 980.257, 982.757, NULL),
  (1836, 78, 'Zero.', 984.590, 985.623, NULL),
  (1837, 78, 'They showed up for themselves.', 986.257, 988.223, NULL),
  (1838, 78, 'It''s what they believed about America', 988.257, 990.957, NULL),
  (1839, 78, 'that got them to travel
in a bus for eight hours', 990.990, 993.223, NULL),
  (1840, 78, 'to stand in the sun in Washington
in the middle of August.', 993.257, 996.223, NULL),
  (1841, 78, 'It''s what they believed,
and it wasn''t about black versus white:', 996.257, 999.290, NULL),
  (1842, 78, '25% of the audience was white.', 999.323, 1001.657, NULL),
  (1843, 78, 'Dr. King believed that there are
two types of laws in this world:', 1002.657, 1006.257, NULL),
  (1844, 78, 'those that are made by a higher authority
and those that are made by men.', 1006.290, 1010.223, NULL),
  (1845, 78, 'And not until all the laws
that are made by men', 1010.257, 1013.223, NULL),
  (1846, 78, 'are consistent with the laws
made by the higher authority', 1013.257, 1016.057, NULL),
  (1847, 78, 'will we live in a just world.', 1016.090, 1018.023, NULL),
  (1848, 78, 'It just so happened
that the Civil Rights Movement', 1018.023, 1020.457, NULL),
  (1849, 78, 'was the perfect thing to help him
bring his cause to life.', 1020.457, 1024.223, NULL),
  (1850, 78, 'We followed, not for him,
but for ourselves.', 1024.257, 1027.223, NULL),
  (1851, 78, 'By the way, he gave
the "I have a dream" speech,', 1027.257, 1029.557, NULL),
  (1852, 78, 'not the "I have a plan" speech.', 1029.590, 1031.557, NULL),
  (1853, 78, '(Laughter)', 1031.590, 1035.223, NULL),
  (1854, 78, 'Listen to politicians now,
with their comprehensive 12-point plans.', 1035.257, 1038.457, NULL),
  (1855, 78, 'They''re not inspiring anybody.', 1038.457, 1040.223, NULL),
  (1856, 78, 'Because there are leaders
and there are those who lead.', 1040.257, 1043.223, NULL),
  (1857, 78, 'Leaders hold a position
of power or authority,', 1043.257, 1047.223, NULL),
  (1858, 78, 'but those who lead inspire us.', 1047.257, 1050.257, NULL),
  (1859, 78, 'Whether they''re individuals
or organizations,', 1051.790, 1054.157, NULL),
  (1860, 78, 'we follow those who lead,
not because we have to,', 1054.157, 1057.223, NULL),
  (1861, 78, 'but because we want to.', 1057.257, 1059.090, NULL),
  (1862, 78, 'We follow those who lead, not for them,
but for ourselves.', 1060.057, 1064.490, NULL),
  (1863, 78, 'And it''s those who start with "why"', 1065.757, 1068.223, NULL),
  (1864, 78, 'that have the ability
to inspire those around them', 1068.257, 1072.990, NULL),
  (1865, 78, 'or find others who inspire them.', 1073.023, 1075.223, NULL),
  (1866, 78, 'Thank you very much.', 1076.457, 1077.623, NULL),
  (1867, 78, '(Applause)', 1077.657, 1079.257, NULL),
  (1868, 79, 'Translator: Joseph Geni
Reviewer: Morton Bast', 0.000, 7.000, NULL),
  (1869, 79, 'So I want to start by offering you
a free no-tech life hack,', 15.967, 21.365, NULL),
  (1870, 79, 'and all it requires of you is this:', 21.389, 23.986, NULL),
  (1871, 79, 'that you change your posture
for two minutes.', 24.010, 28.173, NULL),
  (1872, 79, 'But before I give it away,
I want to ask you to right now', 28.197, 31.597, NULL),
  (1873, 79, 'do a little audit of your body
and what you''re doing with your body.', 31.621, 35.190, NULL),
  (1874, 79, 'So how many of you are
sort of making yourselves smaller?', 35.214, 37.905, NULL),
  (1875, 79, 'Maybe you''re hunching, crossing your legs,
maybe wrapping your ankles.', 37.929, 41.250, NULL),
  (1876, 79, 'Sometimes we hold onto our arms like this.', 41.274, 44.989, NULL),
  (1877, 79, 'Sometimes we spread out. (Laughter)', 45.013, 48.660, NULL),
  (1878, 79, 'I see you.', 48.684, 50.932, NULL),
  (1879, 79, 'So I want you to pay attention
to what you''re doing right now.', 50.956, 53.947, NULL),
  (1880, 79, 'We''re going to come back
to that in a few minutes,', 53.971, 56.305, NULL),
  (1881, 79, 'and I''m hoping that if you learn
to tweak this a little bit,', 56.329, 59.253, NULL),
  (1882, 79, 'it could significantly change
the way your life unfolds.', 59.277, 62.689, NULL),
  (1883, 79, 'So, we''re really fascinated
with body language,', 62.713, 67.213, NULL),
  (1884, 79, 'and we''re particularly interested
in other people''s body language.', 67.237, 71.136, NULL),
  (1885, 79, 'You know, we''re interested in,
like, you know — (Laughter) —', 71.160, 75.357, NULL),
  (1886, 79, 'an awkward interaction, or a smile,', 75.381, 79.755, NULL),
  (1887, 79, 'or a contemptuous glance,
or maybe a very awkward wink,', 79.779, 83.987, NULL),
  (1888, 79, 'or maybe even something like a handshake.', 84.011, 87.225, NULL),
  (1889, 79, 'Narrator: Here they are
arriving at Number 10.', 87.249, 90.574, NULL),
  (1890, 79, 'This lucky policeman gets to shake hands
with the President of the United States.', 90.598, 95.067, NULL),
  (1891, 79, 'Here comes the Prime Minister --
No. (Laughter) (Applause)', 95.091, 99.994, NULL),
  (1892, 79, '(Laughter) (Applause)', 100.018, 102.669, NULL),
  (1893, 79, 'Amy Cuddy: So a handshake,
or the lack of a handshake,', 102.693, 106.376, NULL),
  (1894, 79, 'can have us talking for weeks
and weeks and weeks.', 106.400, 108.900, NULL),
  (1895, 79, 'Even the BBC and The New York Times.', 108.924, 111.040, NULL),
  (1896, 79, 'So obviously when we think
about nonverbal behavior,', 111.064, 114.991, NULL),
  (1897, 79, 'or body language -- but we call it
nonverbals as social scientists --', 115.015, 118.379, NULL),
  (1898, 79, 'it''s language, so we think
about communication.', 118.403, 121.259, NULL),
  (1899, 79, 'When we think about communication,
we think about interactions.', 121.283, 124.286, NULL),
  (1900, 79, 'So what is your body language
communicating to me?', 124.310, 126.725, NULL),
  (1901, 79, 'What''s mine communicating to you?', 126.749, 128.791, NULL),
  (1902, 79, 'And there''s a lot of reason to believe
that this is a valid way to look at this.', 128.815, 134.763, NULL),
  (1903, 79, 'So social scientists
have spent a lot of time', 134.787, 137.031, NULL),
  (1904, 79, 'looking at the effects
of our body language,', 137.055, 139.136, NULL),
  (1905, 79, 'or other people''s body language,
on judgments.', 139.160, 141.445, NULL),
  (1906, 79, 'And we make sweeping judgments
and inferences from body language.', 141.469, 144.884, NULL),
  (1907, 79, 'And those judgments can predict
really meaningful life outcomes', 144.908, 148.874, NULL),
  (1908, 79, 'like who we hire or promote,
who we ask out on a date.', 148.898, 152.667, NULL),
  (1909, 79, 'For example, Nalini Ambady,
a researcher at Tufts University,', 152.691, 157.352, NULL),
  (1910, 79, 'shows that when people watch
30-second soundless clips', 157.376, 161.824, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (1911, 79, 'of real physician-patient interactions,', 161.848, 164.848, NULL),
  (1912, 79, 'their judgments
of the physician''s niceness', 164.872, 167.681, NULL),
  (1913, 79, 'predict whether or not
that physician will be sued.', 167.705, 170.318, NULL),
  (1914, 79, 'So it doesn''t have to do so much', 170.342, 172.000, NULL),
  (1915, 79, 'with whether or not that physician
was incompetent,', 172.024, 174.523, NULL),
  (1916, 79, 'but do we like that person
and how they interacted?', 174.547, 177.353, NULL),
  (1917, 79, 'Even more dramatic,
Alex Todorov at Princeton', 177.377, 180.288, NULL),
  (1918, 79, 'has shown us that judgments
of political candidates'' faces', 180.312, 183.965, NULL),
  (1919, 79, 'in just one second predict 70 percent', 183.989, 187.933, NULL),
  (1920, 79, 'of U.S. Senate and gubernatorial
race outcomes,', 187.957, 191.783, NULL),
  (1921, 79, 'and even, let''s go digital,', 191.807, 194.005, NULL),
  (1922, 79, 'emoticons used well in online negotiations', 194.029, 198.150, NULL),
  (1923, 79, 'can lead you to claim more value
from that negotiation.', 198.174, 200.982, NULL),
  (1924, 79, 'If you use them poorly, bad idea. Right?', 201.006, 204.205, NULL),
  (1925, 79, 'So when we think of nonverbals,
we think of how we judge others,', 204.229, 207.302, NULL),
  (1926, 79, 'how they judge us
and what the outcomes are.', 207.326, 210.204, NULL),
  (1927, 79, 'We tend to forget, though,
the other audience', 210.228, 212.324, NULL),
  (1928, 79, 'that''s influenced by our nonverbals,
and that''s ourselves.', 212.348, 215.759, NULL),
  (1929, 79, 'We are also influenced by our nonverbals,', 215.783, 218.972, NULL),
  (1930, 79, 'our thoughts and our feelings
and our physiology.', 218.996, 221.335, NULL),
  (1931, 79, 'So what nonverbals am I talking about?', 221.359, 224.398, NULL),
  (1932, 79, 'I''m a social psychologist.
I study prejudice,', 224.422, 227.341, NULL),
  (1933, 79, 'and I teach at a competitive
business school,', 227.365, 230.068, NULL),
  (1934, 79, 'so it was inevitable that I would become
interested in power dynamics.', 230.092, 234.552, NULL),
  (1935, 79, 'I became especially interested
in nonverbal expressions', 234.576, 238.364, NULL),
  (1936, 79, 'of power and dominance.', 238.388, 240.367, NULL),
  (1937, 79, 'And what are nonverbal expressions
of power and dominance?', 240.391, 243.106, NULL),
  (1938, 79, 'Well, this is what they are.', 243.130, 245.189, NULL),
  (1939, 79, 'So in the animal kingdom,
they are about expanding.', 245.213, 248.067, NULL),
  (1940, 79, 'So you make yourself big, you stretch out,', 248.091, 251.077, NULL),
  (1941, 79, 'you take up space,
you''re basically opening up.', 251.101, 254.018, NULL),
  (1942, 79, 'It''s about opening up.', 254.042, 255.964, NULL),
  (1943, 79, 'And this is true
across the animal kingdom.', 255.988, 258.719, NULL),
  (1944, 79, 'It''s not just limited to primates.', 258.743, 260.768, NULL),
  (1945, 79, 'And humans do the same thing. (Laughter)', 261.504, 264.188, NULL),
  (1946, 79, 'So they do this both when they have
power sort of chronically,', 264.212, 267.899, NULL),
  (1947, 79, 'and also when they''re feeling
powerful in the moment.', 267.923, 270.900, NULL),
  (1948, 79, 'And this one is especially interesting
because it really shows us', 270.924, 273.972, NULL),
  (1949, 79, 'how universal and old these
expressions of power are.', 273.996, 277.994, NULL),
  (1950, 79, 'This expression, which is known as pride,', 278.018, 280.593, NULL),
  (1951, 79, 'Jessica Tracy has studied.', 280.617, 282.846, NULL),
  (1952, 79, 'She shows that people
who are born with sight', 282.870, 285.753, NULL),
  (1953, 79, 'and people who are congenitally
blind do this', 285.777, 288.694, NULL),
  (1954, 79, 'when they win at a physical competition.', 288.718, 291.008, NULL),
  (1955, 79, 'So when they cross
the finish line and they''ve won,', 291.032, 293.486, NULL),
  (1956, 79, 'it doesn''t matter if they''ve never
seen anyone do it.', 293.510, 295.987, NULL),
  (1957, 79, 'They do this.', 296.011, 297.304, NULL),
  (1958, 79, 'So the arms up in the V,
the chin is slightly lifted.', 297.328, 299.826, NULL),
  (1959, 79, 'What do we do when we feel powerless?', 299.850, 301.913, NULL),
  (1960, 79, 'We do exactly the opposite.', 301.937, 303.692, NULL),
  (1961, 79, 'We close up.
We wrap ourselves up.', 303.716, 306.220, NULL),
  (1962, 79, 'We make ourselves small.', 306.244, 307.588, NULL),
  (1963, 79, 'We don''t want to bump
into the person next to us.', 307.612, 309.968, NULL),
  (1964, 79, 'So again, both animals and humans
do the same thing.', 309.992, 312.725, NULL),
  (1965, 79, 'And this is what happens
when you put together high and low power.', 312.749, 316.705, NULL),
  (1966, 79, 'So what we tend to
do when it comes to power', 316.729, 319.831, NULL),
  (1967, 79, 'is that we complement
the other''s nonverbals.', 319.855, 322.484, NULL),
  (1968, 79, 'So if someone is being
really powerful with us,', 322.508, 324.915, NULL),
  (1969, 79, 'we tend to make ourselves smaller.
We don''t mirror them.', 324.939, 327.559, NULL),
  (1970, 79, 'We do the opposite of them.', 327.583, 329.173, NULL),
  (1971, 79, 'So I''m watching this behavior
in the classroom,', 329.197, 332.372, NULL),
  (1972, 79, 'and what do I notice?', 332.396, 334.909, NULL),
  (1973, 79, 'I notice that MBA students really exhibit
the full range of power nonverbals.', 334.933, 342.162, NULL),
  (1974, 79, 'So you have people
who are like caricatures of alphas,', 342.186, 344.710, NULL),
  (1975, 79, 'really coming into the room, they get
right into the middle of the room', 344.734, 348.115, NULL),
  (1976, 79, 'before class even starts,
like they really want to occupy space.', 348.139, 351.552, NULL),
  (1977, 79, 'When they sit down,
they''re sort of spread out.', 351.576, 353.815, NULL),
  (1978, 79, 'They raise their hands like this.', 353.839, 355.573, NULL),
  (1979, 79, 'You have other people
who are virtually collapsing', 355.597, 358.208, NULL),
  (1980, 79, 'when they come in.
As soon they come in, you see it.', 358.232, 360.732, NULL),
  (1981, 79, 'You see it on their faces
and their bodies,', 360.756, 363.025, NULL),
  (1982, 79, 'and they sit in their chair
and they make themselves tiny,', 363.049, 365.843, NULL),
  (1983, 79, 'and they go like this
when they raise their hand.', 365.867, 368.205, NULL),
  (1984, 79, 'I notice a couple of things about this.', 368.229, 370.087, NULL),
  (1985, 79, 'One, you''re not going to be surprised.', 370.111, 371.921, NULL),
  (1986, 79, 'It seems to be related to gender.', 371.945, 373.963, NULL),
  (1987, 79, 'So women are much more likely
to do this kind of thing than men.', 373.987, 379.428, NULL),
  (1988, 79, 'Women feel chronically
less powerful than men,', 379.452, 382.014, NULL),
  (1989, 79, 'so this is not surprising.', 382.038, 383.896, NULL),
  (1990, 79, 'But the other thing I noticed', 383.920, 385.969, NULL),
  (1991, 79, 'is that it also seemed
to be related to the extent', 385.993, 388.635, NULL),
  (1992, 79, 'to which the students were participating,
and how well they were participating.', 388.659, 392.495, NULL),
  (1993, 79, 'And this is really important
in the MBA classroom,', 392.519, 395.077, NULL),
  (1994, 79, 'because participation
counts for half the grade.', 395.101, 397.758, NULL),
  (1995, 79, 'So business schools have been struggling
with this gender grade gap.', 397.782, 402.231, NULL),
  (1996, 79, 'You get these equally qualified
women and men coming in', 402.255, 405.503, NULL),
  (1997, 79, 'and then you get
these differences in grades,', 405.527, 407.670, NULL),
  (1998, 79, 'and it seems to be partly
attributable to participation.', 407.694, 410.759, NULL),
  (1999, 79, 'So I started to wonder, you know, okay,', 410.783, 413.782, NULL),
  (2000, 79, 'so you have these people coming in
like this, and they''re participating.', 413.806, 417.424, NULL),
  (2001, 79, 'Is it possible that we could
get people to fake it', 417.448, 419.977, NULL),
  (2002, 79, 'and would it lead them
to participate more?', 420.001, 422.001, NULL),
  (2003, 79, 'So my main collaborator
Dana Carney, who''s at Berkeley,', 422.025, 426.614, NULL),
  (2004, 79, 'and I really wanted to know,
can you fake it till you make it?', 426.638, 430.169, NULL),
  (2005, 79, 'Like, can you do this
just for a little while', 430.193, 432.720, NULL),
  (2006, 79, 'and actually experience
a behavioral outcome', 432.744, 435.396, NULL),
  (2007, 79, 'that makes you seem more powerful?', 435.420, 437.122, NULL),
  (2008, 79, 'So we know that our nonverbals
govern how other people', 437.146, 440.574, NULL),
  (2009, 79, 'think and feel about us.
There''s a lot of evidence.', 440.598, 442.979, NULL),
  (2010, 79, 'But our question really was,', 443.003, 444.425, NULL),
  (2011, 79, 'do our nonverbals govern
how we think and feel about ourselves?', 444.449, 448.489, NULL),
  (2012, 79, 'There''s some evidence that they do.', 448.513, 451.179, NULL),
  (2013, 79, 'So, for example, we smile
when we feel happy,', 451.203, 455.815, NULL),
  (2014, 79, 'but also, when we''re forced to smile', 455.839, 457.993, NULL),
  (2015, 79, 'by holding a pen in our teeth
like this, it makes us feel happy.', 458.017, 462.408, NULL),
  (2016, 79, 'So it goes both ways.', 462.432, 464.350, NULL),
  (2017, 79, 'When it comes to power,
it also goes both ways.', 464.374, 468.156, NULL),
  (2018, 79, 'So when you feel powerful,', 468.180, 470.704, NULL),
  (2019, 79, 'you''re more likely to do this,', 470.728, 472.499, NULL),
  (2020, 79, 'but it''s also possible
that when you pretend to be powerful,', 472.523, 478.701, NULL),
  (2021, 79, 'you are more likely
to actually feel powerful.', 478.725, 482.124, NULL),
  (2022, 79, 'So the second question
really was, you know,', 482.148, 485.184, NULL),
  (2023, 79, 'so we know that our minds
change our bodies,', 485.208, 487.767, NULL),
  (2024, 79, 'but is it also true
that our bodies change our minds?', 487.791, 492.184, NULL),
  (2025, 79, 'And when I say minds,
in the case of the powerful,', 492.208, 494.911, NULL),
  (2026, 79, 'what am I talking about?', 494.935, 496.283, NULL),
  (2027, 79, 'So I''m talking about thoughts and feelings', 496.307, 498.449, NULL),
  (2028, 79, 'and the sort of physiological things
that make up our thoughts and feelings,', 498.473, 502.045, NULL),
  (2029, 79, 'and in my case, that''s hormones.
I look at hormones.', 502.069, 505.112, NULL),
  (2030, 79, 'So what do the minds of the powerful
versus the powerless look like?', 505.136, 509.446, NULL),
  (2031, 79, 'So powerful people tend to be,
not surprisingly,', 509.470, 513.742, NULL),
  (2032, 79, 'more assertive and more confident,
more optimistic.', 513.766, 517.966, NULL),
  (2033, 79, 'They actually feel they''re going to win
even at games of chance.', 517.990, 521.276, NULL),
  (2034, 79, 'They also tend to be able
to think more abstractly.', 521.300, 525.144, NULL),
  (2035, 79, 'So there are a lot of differences.
They take more risks.', 525.168, 527.788, NULL),
  (2036, 79, 'There are a lot of differences
between powerful and powerless people.', 527.812, 531.051, NULL),
  (2037, 79, 'Physiologically,
there also are differences', 531.075, 533.895, NULL),
  (2038, 79, 'on two key hormones: testosterone,
which is the dominance hormone,', 533.919, 537.960, NULL),
  (2039, 79, 'and cortisol, which is the stress hormone.', 537.984, 541.654, NULL),
  (2040, 79, 'So what we find is that high-power
alpha males in primate hierarchies', 541.678, 548.799, NULL),
  (2041, 79, 'have high testosterone and low cortisol,', 548.823, 551.997, NULL),
  (2042, 79, 'and powerful and effective leaders', 552.021, 554.929, NULL),
  (2043, 79, 'also have high testosterone
and low cortisol.', 555.547, 557.778, NULL),
  (2044, 79, 'So what does that mean?
When you think about power,', 557.802, 560.183, NULL),
  (2045, 79, 'people tended to think
only about testosterone,', 560.207, 562.506, NULL),
  (2046, 79, 'because that was about dominance.', 562.530, 564.294, NULL),
  (2047, 79, 'But really, power is also about
how you react to stress.', 564.318, 567.764, NULL),
  (2048, 79, 'So do you want the high-power
leader that''s dominant,', 567.788, 570.893, NULL),
  (2049, 79, 'high on testosterone,
but really stress reactive?', 570.917, 573.635, NULL),
  (2050, 79, 'Probably not, right?', 573.659, 575.200, NULL),
  (2051, 79, 'You want the person who''s powerful
and assertive and dominant,', 575.224, 578.254, NULL),
  (2052, 79, 'but not very stress reactive,
the person who''s laid back.', 578.278, 581.942, NULL),
  (2053, 79, 'So we know that in primate hierarchies,', 581.966, 587.092, NULL),
  (2054, 79, 'if an alpha needs to take over,', 587.116, 590.184, NULL),
  (2055, 79, 'if an individual needs to take over
an alpha role sort of suddenly,', 590.208, 594.422, NULL),
  (2056, 79, 'within a few days,
that individual''s testosterone has gone up', 594.446, 597.533, NULL),
  (2057, 79, 'significantly and his cortisol
has dropped significantly.', 597.557, 601.038, NULL),
  (2058, 79, 'So we have this evidence,
both that the body can shape', 601.062, 604.079, NULL),
  (2059, 79, 'the mind, at least at the facial level,', 604.103, 606.445, NULL),
  (2060, 79, 'and also that role changes
can shape the mind.', 606.469, 610.574, NULL),
  (2061, 79, 'So what happens, okay,
you take a role change,', 610.598, 613.356, NULL),
  (2062, 79, 'what happens if you do that
at a really minimal level,', 613.380, 615.940, NULL),
  (2063, 79, 'like this tiny manipulation,
this tiny intervention?', 615.964, 618.393, NULL),
  (2064, 79, '"For two minutes," you say,
"I want you to stand like this,', 618.417, 621.227, NULL),
  (2065, 79, 'and it''s going to make you feel
more powerful."', 621.251, 623.787, NULL),
  (2066, 79, 'So this is what we did.', 623.811, 626.741, NULL),
  (2067, 79, 'We decided to bring people into the lab
and run a little experiment,', 626.765, 631.356, NULL),
  (2068, 79, 'and these people adopted, for two minutes,', 631.380, 634.905, NULL),
  (2069, 79, 'either high-power poses
or low-power poses,', 634.929, 638.389, NULL),
  (2070, 79, 'and I''m just going to show
you five of the poses,', 638.413, 640.730, NULL),
  (2071, 79, 'although they took on only two.', 640.754, 642.315, NULL),
  (2072, 79, 'So here''s one.', 642.339, 643.819, NULL),
  (2073, 79, 'A couple more.', 645.069, 646.358, NULL),
  (2074, 79, 'This one has been dubbed
the "Wonder Woman" by the media.', 647.052, 651.805, NULL),
  (2075, 79, 'Here are a couple more.', 651.906, 653.204, NULL),
  (2076, 79, 'So you can be standing
or you can be sitting.', 653.228, 655.558, NULL),
  (2077, 79, 'And here are the low-power poses.', 655.582, 657.543, NULL),
  (2078, 79, 'So you''re folding up,
you''re making yourself small.', 657.567, 660.297, NULL),
  (2079, 79, 'This one is very low-power.', 661.904, 663.345, NULL),
  (2080, 79, 'When you''re touching your neck,
you''re really protecting yourself.', 663.369, 667.328, NULL),
  (2081, 79, 'So this is what happens.', 667.352, 669.349, NULL),
  (2082, 79, 'They come in, they spit into a vial,', 669.467, 671.673, NULL),
  (2083, 79, 'for two minutes, we say,
"You need to do this or this."', 671.697, 674.846, NULL),
  (2084, 79, 'They don''t look at pictures of the poses.', 674.870, 676.911, NULL),
  (2085, 79, 'We don''t want to prime them
with a concept of power.', 676.935, 679.462, NULL),
  (2086, 79, 'We want them to be feeling power.', 679.486, 681.119, NULL),
  (2087, 79, 'So two minutes they do this.', 681.143, 682.478, NULL),
  (2088, 79, 'We then ask them, "How powerful
do you feel?" on a series of items,', 682.502, 685.687, NULL),
  (2089, 79, 'and then we give them
an opportunity to gamble,', 685.711, 688.054, NULL),
  (2090, 79, 'and then we take another saliva sample.', 688.078, 690.819, NULL),
  (2091, 79, 'That''s it. That''s the whole experiment.', 690.843, 692.701, NULL),
  (2092, 79, 'So this is what we find.', 692.725, 694.286, NULL),
  (2093, 79, 'Risk tolerance, which is the gambling,', 694.310, 696.190, NULL),
  (2094, 79, 'we find that when you are
in the high-power pose condition,', 696.214, 700.328, NULL),
  (2095, 79, '86 percent of you will gamble.', 700.352, 702.486, NULL),
  (2096, 79, 'When you''re in the low-power
pose condition,', 702.510, 704.606, NULL),
  (2097, 79, 'only 60 percent, and that''s
a whopping significant difference.', 704.630, 708.606, NULL),
  (2098, 79, 'Here''s what we find on testosterone.', 708.630, 711.086, NULL),
  (2099, 79, 'From their baseline when they come in,', 711.110, 713.623, NULL),
  (2100, 79, 'high-power people experience
about a 20-percent increase,', 713.647, 716.953, NULL),
  (2101, 79, 'and low-power people experience
about a 10-percent decrease.', 716.977, 721.574, NULL),
  (2102, 79, 'So again, two minutes,
and you get these changes.', 721.598, 724.391, NULL),
  (2103, 79, 'Here''s what you get on cortisol.', 724.415, 726.392, NULL),
  (2104, 79, 'High-power people experience
about a 25-percent decrease,', 726.416, 730.190, NULL),
  (2105, 79, 'and the low-power people experience
about a 15-percent increase.', 730.214, 734.322, NULL),
  (2106, 79, 'So two minutes lead
to these hormonal changes', 734.346, 737.054, NULL),
  (2107, 79, 'that configure your brain', 737.078, 738.698, NULL),
  (2108, 79, 'to basically be either assertive,
confident and comfortable,', 738.722, 742.999, NULL),
  (2109, 79, 'or really stress-reactive,
and feeling sort of shut down.', 743.023, 748.076, NULL),
  (2110, 79, 'And we''ve all had the feeling, right?', 748.100, 750.863, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (2111, 79, 'So it seems that our nonverbals do govern
how we think and feel about ourselves,', 750.887, 756.071, NULL),
  (2112, 79, 'so it''s not just others,
but it''s also ourselves.', 756.095, 758.527, NULL),
  (2113, 79, 'Also, our bodies change our minds.', 758.551, 760.954, NULL),
  (2114, 79, 'But the next question, of course,', 760.978, 763.360, NULL),
  (2115, 79, 'is, can power posing for a few minutes', 763.384, 765.204, NULL),
  (2116, 79, 'really change your life
in meaningful ways?', 765.228, 767.265, NULL),
  (2117, 79, 'This is in the lab, it''s this little task,
it''s just a couple of minutes.', 767.289, 771.582, NULL),
  (2118, 79, 'Where can you actually apply this?', 771.606, 773.347, NULL),
  (2119, 79, 'Which we cared about, of course.', 773.371, 775.182, NULL),
  (2120, 79, 'And so we think where you want to use this
is evaluative situations,', 775.206, 781.947, NULL),
  (2121, 79, 'like social threat situations.', 781.971, 784.424, NULL),
  (2122, 79, 'Where are you being evaluated,
either by your friends?', 784.448, 787.004, NULL),
  (2123, 79, 'For teenagers,
it''s at the lunchroom table.', 787.028, 789.085, NULL),
  (2124, 79, 'For some people it''s speaking
at a school board meeting.', 789.109, 793.382, NULL),
  (2125, 79, 'It might be giving a pitch
or giving a talk like this', 793.406, 797.170, NULL),
  (2126, 79, 'or doing a job interview.', 797.194, 799.968, NULL),
  (2127, 79, 'We decided that the one
that most people could relate to', 799.992, 802.660, NULL),
  (2128, 79, 'because most people had been through,
was the job interview.', 802.684, 805.579, NULL),
  (2129, 79, 'So we published these findings,', 805.603, 808.334, NULL),
  (2130, 79, 'and the media are all over it,', 808.358, 809.919, NULL),
  (2131, 79, 'and they say, Okay, so this is what you do', 809.943, 812.018, NULL),
  (2132, 79, 'when you go in
for the job interview, right?', 812.042, 814.115, NULL),
  (2133, 79, '(Laughter)', 814.139, 815.146, NULL),
  (2134, 79, 'You know, so we were of course
horrified, and said,', 815.170, 817.617, NULL),
  (2135, 79, 'Oh my God, no,
that''s not what we meant at all.', 817.641, 819.913, NULL),
  (2136, 79, 'For numerous reasons, no, don''t do that.', 819.937, 822.177, NULL),
  (2137, 79, 'Again, this is not about you
talking to other people.', 822.201, 824.768, NULL),
  (2138, 79, 'It''s you talking to yourself.', 824.792, 826.353, NULL),
  (2139, 79, 'What do you do before you go
into a job interview? You do this.', 826.377, 829.436, NULL),
  (2140, 79, 'You''re sitting down.
You''re looking at your iPhone --', 829.460, 832.002, NULL),
  (2141, 79, 'or your Android, not trying
to leave anyone out.', 832.026, 834.288, NULL),
  (2142, 79, 'You''re looking at your notes,', 834.312, 836.182, NULL),
  (2143, 79, 'you''re hunching up, making yourself small,', 836.206, 838.206, NULL),
  (2144, 79, 'when really what you should
be doing maybe is this,', 838.230, 840.659, NULL),
  (2145, 79, 'like, in the bathroom, right?
Do that. Find two minutes.', 840.683, 843.720, NULL),
  (2146, 79, 'So that''s what we want to test. Okay?', 843.744, 845.506, NULL),
  (2147, 79, 'So we bring people into a lab,', 845.530, 847.324, NULL),
  (2148, 79, 'and they do either high-
or low-power poses again,', 847.348, 850.701, NULL),
  (2149, 79, 'they go through
a very stressful job interview.', 850.725, 853.333, NULL),
  (2150, 79, 'It''s five minutes long.
They are being recorded.', 853.357, 856.949, NULL),
  (2151, 79, 'They''re being judged also,', 856.973, 858.930, NULL),
  (2152, 79, 'and the judges are trained
to give no nonverbal feedback,', 858.954, 863.435, NULL),
  (2153, 79, 'so they look like this.', 863.459, 865.018, NULL),
  (2154, 79, 'Imagine this is the person
interviewing you.', 865.245, 867.326, NULL),
  (2155, 79, 'So for five minutes, nothing,
and this is worse than being heckled.', 867.350, 871.949, NULL),
  (2156, 79, 'People hate this.', 871.973, 873.613, NULL),
  (2157, 79, 'It''s what Marianne LaFrance calls
"standing in social quicksand."', 873.637, 877.353, NULL),
  (2158, 79, 'So this really spikes your cortisol.', 877.377, 879.162, NULL),
  (2159, 79, 'So this is the job interview
we put them through,', 879.186, 881.472, NULL),
  (2160, 79, 'because we really wanted
to see what happened.', 881.496, 883.693, NULL),
  (2161, 79, 'We then have these coders look
at these tapes, four of them.', 883.717, 886.800, NULL),
  (2162, 79, 'They''re blind to the hypothesis.
They''re blind to the conditions.', 886.824, 889.972, NULL),
  (2163, 79, 'They have no idea
who''s been posing in what pose,', 889.996, 892.757, NULL),
  (2164, 79, 'and they end up looking
at these sets of tapes,', 892.781, 897.847, NULL),
  (2165, 79, 'and they say,
"We want to hire these people,"', 897.871, 900.019, NULL),
  (2166, 79, 'all the high-power posers.', 900.043, 901.544, NULL),
  (2167, 79, '"We don''t want to hire these people.', 901.568, 903.341, NULL),
  (2168, 79, 'We also evaluate these people
much more positively overall."', 903.365, 907.182, NULL),
  (2169, 79, 'But what''s driving it?', 907.206, 908.846, NULL),
  (2170, 79, 'It''s not about the content of the speech.', 908.870, 910.862, NULL),
  (2171, 79, 'It''s about the presence
that they''re bringing to the speech.', 910.886, 913.738, NULL),
  (2172, 79, 'Because we rate them
on all these variables', 913.762, 916.239, NULL),
  (2173, 79, 'related to competence,
like, how well-structured is the speech?', 916.263, 919.802, NULL),
  (2174, 79, 'How good is it?
What are their qualifications?', 919.826, 922.060, NULL),
  (2175, 79, 'No effect on those things.
This is what''s affected.', 922.084, 924.710, NULL),
  (2176, 79, 'These kinds of things.', 924.734, 926.433, NULL),
  (2177, 79, 'People are bringing
their true selves, basically.', 926.457, 928.848, NULL),
  (2178, 79, 'They''re bringing themselves.', 928.872, 930.262, NULL),
  (2179, 79, 'They bring their ideas, but as themselves,', 930.286, 932.385, NULL),
  (2180, 79, 'with no, you know, residue over them.', 932.409, 934.621, NULL),
  (2181, 79, 'So this is what''s driving the effect,
or mediating the effect.', 934.645, 939.552, NULL),
  (2182, 79, 'So when I tell people about this,', 939.576, 942.920, NULL),
  (2183, 79, 'that our bodies change our minds
and our minds can change our behavior,', 942.944, 946.299, NULL),
  (2184, 79, 'and our behavior can change
our outcomes, they say to me,', 946.323, 949.075, NULL),
  (2185, 79, '"It feels fake." Right?', 949.099, 950.642, NULL),
  (2186, 79, 'So I said, fake it till you make it.', 950.666, 952.544, NULL),
  (2187, 79, 'It''s not me.', 952.568, 954.421, NULL),
  (2188, 79, 'I don''t want to get there
and then still feel like a fraud.', 954.445, 957.596, NULL),
  (2189, 79, 'I don''t want to feel like an impostor.', 957.620, 959.430, NULL),
  (2190, 79, 'I don''t want to get there only to feel
like I''m not supposed to be here.', 959.454, 963.527, NULL),
  (2191, 79, 'And that really resonated with me,', 963.551, 965.714, NULL),
  (2192, 79, 'because I want to tell you
a little story about being an impostor', 965.738, 968.960, NULL),
  (2193, 79, 'and feeling like
I''m not supposed to be here.', 968.984, 971.182, NULL),
  (2194, 79, 'When I was 19, I was
in a really bad car accident.', 971.206, 974.123, NULL),
  (2195, 79, 'I was thrown out of a car,
rolled several times.', 974.147, 977.528, NULL),
  (2196, 79, 'I was thrown from the car.', 977.552, 979.410, NULL),
  (2197, 79, 'And I woke up in a head injury rehab ward,', 979.434, 982.398, NULL),
  (2198, 79, 'and I had been withdrawn from college,', 982.422, 984.631, NULL),
  (2199, 79, 'and I learned that my IQ had dropped
by two standard deviations,', 984.655, 990.343, NULL),
  (2200, 79, 'which was very traumatic.', 990.367, 992.931, NULL),
  (2201, 79, 'I knew my IQ because
I had identified with being smart,', 992.955, 995.802, NULL),
  (2202, 79, 'and I had been called gifted as a child.', 995.826, 997.814, NULL),
  (2203, 79, 'So I''m taken out of college,
I keep trying to go back.', 997.838, 1001.014, NULL),
  (2204, 79, 'They say, "You''re not going
to finish college.', 1001.038, 1003.238, NULL),
  (2205, 79, 'Just, you know, there are other
things for you to do,', 1003.262, 1005.815, NULL),
  (2206, 79, 'but that''s not going to work out for you."', 1005.839, 1007.839, NULL),
  (2207, 79, 'So I really struggled
with this, and I have to say,', 1007.863, 1011.397, NULL),
  (2208, 79, 'having your identity taken
from you, your core identity,', 1011.421, 1014.171, NULL),
  (2209, 79, 'and for me it was being smart,', 1014.195, 1016.030, NULL),
  (2210, 79, 'having that taken from you,', 1016.054, 1017.693, NULL),
  (2211, 79, 'there''s nothing that leaves you feeling
more powerless than that.', 1017.717, 1020.816, NULL),
  (2212, 79, 'So I felt entirely powerless.', 1020.840, 1022.619, NULL),
  (2213, 79, 'I worked and worked, and I got lucky,', 1022.643, 1024.505, NULL),
  (2214, 79, 'and worked, and got lucky, and worked.', 1024.529, 1026.375, NULL),
  (2215, 79, 'Eventually I graduated from college.', 1026.399, 1028.627, NULL),
  (2216, 79, 'It took me four years
longer than my peers,', 1028.651, 1030.651, NULL),
  (2217, 79, 'and I convinced someone,
my angel advisor, Susan Fiske,', 1030.675, 1034.992, NULL),
  (2218, 79, 'to take me on,
and so I ended up at Princeton,', 1035.016, 1037.936, NULL),
  (2219, 79, 'and I was like,
I am not supposed to be here.', 1037.960, 1040.787, NULL),
  (2220, 79, 'I am an impostor.', 1040.811, 1042.081, NULL),
  (2221, 79, 'And the night before my first-year talk,', 1042.105, 1044.010, NULL),
  (2222, 79, 'and the first-year talk at Princeton
is a 20-minute talk to 20 people.', 1044.034, 1047.533, NULL),
  (2223, 79, 'That''s it.', 1047.557, 1048.735, NULL),
  (2224, 79, 'I was so afraid of being
found out the next day', 1048.759, 1051.222, NULL),
  (2225, 79, 'that I called her
and said, "I''m quitting."', 1051.246, 1054.035, NULL),
  (2226, 79, 'She was like, "You are not quitting,', 1054.059, 1055.891, NULL),
  (2227, 79, 'because I took a gamble
on you, and you''re staying.', 1055.915, 1058.449, NULL),
  (2228, 79, 'You''re going to stay, and this is
what you''re going to do.', 1058.473, 1061.240, NULL),
  (2229, 79, 'You are going to fake it.', 1061.264, 1062.597, NULL),
  (2230, 79, 'You''re going to do every talk
that you ever get asked to do.', 1062.621, 1065.777, NULL),
  (2231, 79, 'You''re just going to do it
and do it and do it,', 1065.801, 1068.040, NULL),
  (2232, 79, 'even if you''re terrified
and just paralyzed', 1068.064, 1070.485, NULL),
  (2233, 79, 'and having an out-of-body experience,', 1070.509, 1072.858, NULL),
  (2234, 79, 'until you have this moment where you say,
''Oh my gosh, I''m doing it.', 1072.882, 1076.228, NULL),
  (2235, 79, 'Like, I have become this.
I am actually doing this.''"', 1076.252, 1079.194, NULL),
  (2236, 79, 'So that''s what I did.', 1079.218, 1080.313, NULL),
  (2237, 79, 'Five years in grad school,', 1080.337, 1081.721, NULL),
  (2238, 79, 'a few years, you know,
I''m at Northwestern,', 1081.745, 1083.845, NULL),
  (2239, 79, 'I moved to Harvard, I''m at Harvard,', 1083.869, 1085.932, NULL),
  (2240, 79, 'I''m not really thinking about it anymore,
but for a long time I had been thinking,', 1085.956, 1089.932, NULL),
  (2241, 79, '"Not supposed to be here."', 1089.956, 1091.738, NULL),
  (2242, 79, 'So at the end of my first year at Harvard,', 1091.762, 1094.455, NULL),
  (2243, 79, 'a student who had not talked
in class the entire semester,', 1094.479, 1098.780, NULL),
  (2244, 79, 'who I had said, "Look, you''ve gotta
participate or else you''re going to fail,"', 1098.804, 1102.471, NULL),
  (2245, 79, 'came into my office.
I really didn''t know her at all.', 1102.495, 1105.019, NULL),
  (2246, 79, 'She came in totally defeated,
and she said,', 1105.043, 1108.471, NULL),
  (2247, 79, '"I''m not supposed to be here."', 1108.495, 1111.621, NULL),
  (2248, 79, 'And that was the moment for me.', 1115.371, 1117.328, NULL),
  (2249, 79, 'Because two things happened.', 1117.352, 1118.944, NULL),
  (2250, 79, 'One was that I realized,', 1118.968, 1120.238, NULL),
  (2251, 79, 'oh my gosh,
I don''t feel like that anymore.', 1120.262, 1123.372, NULL),
  (2252, 79, 'I don''t feel that anymore,
but she does, and I get that feeling.', 1123.396, 1126.396, NULL),
  (2253, 79, 'And the second was,
she is supposed to be here!', 1126.420, 1128.691, NULL),
  (2254, 79, 'Like, she can fake it, she can become it.', 1128.715, 1130.668, NULL),
  (2255, 79, 'So I was like, "Yes, you are!
You are supposed to be here!', 1130.692, 1134.235, NULL),
  (2256, 79, 'And tomorrow you''re going to fake it,', 1134.259, 1136.021, NULL),
  (2257, 79, 'you''re going to make yourself
powerful, and, you know --', 1136.045, 1138.734, NULL),
  (2258, 79, '(Applause)', 1138.758, 1144.151, NULL),
  (2259, 79, 'And you''re going to go
into the classroom,', 1144.175, 1148.229, NULL),
  (2260, 79, 'and you are going to give
the best comment ever."', 1148.253, 1150.653, NULL),
  (2261, 79, 'You know? And she gave
the best comment ever,', 1150.677, 1153.658, NULL),
  (2262, 79, 'and people turned around and were like,', 1153.682, 1155.621, NULL),
  (2263, 79, 'oh my God, I didn''t even notice her
sitting there. (Laughter)', 1155.645, 1158.565, NULL),
  (2264, 79, 'She comes back to me months later,', 1158.589, 1160.382, NULL),
  (2265, 79, 'and I realized that she had not just
faked it till she made it,', 1160.406, 1163.446, NULL),
  (2266, 79, 'she had actually faked it
till she became it.', 1163.470, 1165.844, NULL),
  (2267, 79, 'So she had changed.', 1165.868, 1167.667, NULL),
  (2268, 79, 'And so I want to say to you,
don''t fake it till you make it.', 1167.691, 1171.751, NULL),
  (2269, 79, 'Fake it till you become it.', 1171.775, 1174.548, NULL),
  (2270, 79, 'Do it enough until you actually
become it and internalize.', 1174.572, 1178.189, NULL),
  (2271, 79, 'The last thing I''m going
to leave you with is this.', 1178.213, 1180.844, NULL),
  (2272, 79, 'Tiny tweaks can lead to big changes.', 1180.868, 1185.316, NULL),
  (2273, 79, 'So, this is two minutes.', 1185.340, 1187.813, NULL),
  (2274, 79, 'Two minutes, two minutes, two minutes.', 1187.837, 1189.647, NULL),
  (2275, 79, 'Before you go into the next stressful
evaluative situation,', 1189.671, 1192.795, NULL),
  (2276, 79, 'for two minutes, try doing this,
in the elevator,', 1192.819, 1195.501, NULL),
  (2277, 79, 'in a bathroom stall, at your desk
behind closed doors.', 1195.525, 1198.740, NULL),
  (2278, 79, 'That''s what you want to do.', 1198.764, 1200.167, NULL),
  (2279, 79, 'Configure your brain
to cope the best in that situation.', 1200.191, 1203.002, NULL),
  (2280, 79, 'Get your testosterone up.
Get your cortisol down.', 1203.026, 1205.967, NULL),
  (2281, 79, 'Don''t leave that situation feeling
like, oh, I didn''t show them who I am.', 1205.991, 1209.933, NULL),
  (2282, 79, 'Leave that situation feeling like,', 1209.957, 1211.657, NULL),
  (2283, 79, 'I really feel like I got to say
who I am and show who I am.', 1211.681, 1214.653, NULL),
  (2284, 79, 'So I want to ask you first, you know,
both to try power posing,', 1214.677, 1220.444, NULL),
  (2285, 79, 'and also I want to ask you to share
the science, because this is simple.', 1220.468, 1225.558, NULL),
  (2286, 79, 'I don''t have ego involved in this.
(Laughter)', 1225.582, 1227.735, NULL),
  (2287, 79, 'Give it away. Share it with people,', 1227.759, 1229.522, NULL),
  (2288, 79, 'because the people who can use it the most', 1229.546, 1231.966, NULL),
  (2289, 79, 'are the ones with no resources
and no technology', 1231.990, 1235.341, NULL),
  (2290, 79, 'and no status and no power.', 1235.365, 1237.539, NULL),
  (2291, 79, 'Give it to them
because they can do it in private.', 1237.563, 1240.111, NULL),
  (2292, 79, 'They need their bodies,
privacy and two minutes,', 1240.135, 1242.579, NULL),
  (2293, 79, 'and it can significantly change
the outcomes of their life.', 1242.603, 1245.729, NULL),
  (2294, 79, 'Thank you.', 1245.753, 1246.884, NULL),
  (2295, 79, '(Applause)', 1246.908, 1249.939, NULL),
  (2296, 80, 'The human voice:', 13.960, 16.046, NULL),
  (2297, 80, 'It''s the instrument we all play.', 16.070, 17.634, NULL),
  (2298, 80, 'It''s the most powerful sound
in the world, probably.', 18.610, 21.069, NULL),
  (2299, 80, 'It''s the only one that can start a war
or say "I love you."', 21.093, 23.916, NULL),
  (2300, 80, 'And yet many people have the experience', 23.940, 25.798, NULL),
  (2301, 80, 'that when they speak, people
don''t listen to them.', 25.822, 28.186, NULL),
  (2302, 80, 'And why is that?', 28.210, 29.322, NULL),
  (2303, 80, 'How can we speak powerfully
to make change in the world?', 29.346, 33.112, NULL),
  (2304, 80, 'What I''d like to suggest,', 33.485, 34.797, NULL),
  (2305, 80, 'there are a number of habits
that we need to move away from.', 34.821, 37.666, NULL),
  (2306, 80, 'I''ve assembled for your pleasure here
seven deadly sins of speaking.', 37.690, 41.420, NULL),
  (2307, 80, 'I''m not pretending
this is an exhaustive list,', 41.444, 43.852, NULL),
  (2308, 80, 'but these seven, I think, are pretty large
habits that we can all fall into.', 43.876, 49.108, NULL),
  (2309, 80, 'First, gossip.', 49.132, 51.139, NULL),
  (2310, 80, 'Speaking ill of somebody
who''s not present.', 51.989, 54.097, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (2311, 80, 'Not a nice habit,
and we know perfectly well', 54.700, 56.796, NULL),
  (2312, 80, 'the person gossiping, five minutes later,
will be gossiping about us.', 56.820, 60.700, NULL),
  (2313, 80, 'Second, judging.', 61.771, 63.491, NULL),
  (2314, 80, 'We know people who are like this
in conversation,', 63.515, 65.899, NULL),
  (2315, 80, 'and it''s very hard to listen to somebody', 65.923, 67.855, NULL),
  (2316, 80, 'if you know that you''re being judged
and found wanting at the same time.', 67.879, 72.005, NULL),
  (2317, 80, 'Third, negativity.', 72.029, 73.905, NULL),
  (2318, 80, 'You can fall into this.', 74.447, 75.735, NULL),
  (2319, 80, 'My mother, in the last years of her life,
became very negative,', 75.759, 78.796, NULL),
  (2320, 80, 'and it''s hard to listen.', 78.820, 80.142, NULL),
  (2321, 80, 'I remember one day, I said to her,
"It''s October 1 today,"', 80.166, 82.899, NULL),
  (2322, 80, 'and she said, "I know, isn''t it dreadful?"', 82.923, 85.016, NULL),
  (2323, 80, '(Laughter)', 85.040, 87.238, NULL),
  (2324, 80, 'It''s hard to listen
when somebody''s that negative.', 87.262, 89.611, NULL),
  (2325, 80, '(Laughter)', 89.635, 90.907, NULL),
  (2326, 80, 'And another form
of negativity, complaining.', 90.931, 93.451, NULL),
  (2327, 80, 'Well, this is the national art of the U.K.', 93.475, 97.518, NULL),
  (2328, 80, 'It''s our national sport.', 97.542, 98.953, NULL),
  (2329, 80, 'We complain about the weather, sport,
about politics, about everything,', 98.977, 102.411, NULL),
  (2330, 80, 'but actually, complaining is viral misery.', 102.435, 104.531, NULL),
  (2331, 80, 'It''s not spreading sunshine
and lightness in the world.', 104.555, 107.187, NULL),
  (2332, 80, 'Excuses.', 108.292, 110.024, NULL),
  (2333, 80, 'We''ve all met this guy.', 110.048, 111.372, NULL),
  (2334, 80, 'Maybe we''ve all been this guy.', 111.396, 112.972, NULL),
  (2335, 80, 'Some people have a blamethrower.', 112.996, 115.466, NULL),
  (2336, 80, 'They just pass it on to everybody else', 115.490, 117.694, NULL),
  (2337, 80, 'and don''t take responsibility
for their actions,', 117.718, 120.022, NULL),
  (2338, 80, 'and again, hard to listen
to somebody who is being like that.', 120.046, 122.958, NULL),
  (2339, 80, 'Penultimate, the sixth of the seven,', 122.982, 124.780, NULL),
  (2340, 80, 'embroidery, exaggeration.', 124.804, 128.186, NULL),
  (2341, 80, 'It demeans our language,
actually, sometimes.', 128.210, 130.614, NULL),
  (2342, 80, 'For example, if I see something
that really is awesome,', 130.638, 133.906, NULL),
  (2343, 80, 'what do I call it?', 133.930, 135.196, NULL),
  (2344, 80, '(Laughter)', 135.220, 137.816, NULL),
  (2345, 80, 'And then, of course,
this exaggeration becomes lying,', 137.840, 141.276, NULL),
  (2346, 80, 'and we don''t want to listen
to people we know are lying to us.', 141.300, 144.299, NULL),
  (2347, 80, 'And finally, dogmatism.', 144.323, 146.563, NULL),
  (2348, 80, 'The confusion of facts with opinions.', 147.688, 151.299, NULL),
  (2349, 80, 'When those two things get conflated,', 151.323, 153.238, NULL),
  (2350, 80, 'you''re listening into the wind.', 153.262, 154.739, NULL),
  (2351, 80, 'You know, somebody is bombarding you
with their opinions as if they were true.', 154.763, 158.430, NULL),
  (2352, 80, 'It''s difficult to listen to that.', 158.454, 160.523, NULL),
  (2353, 80, 'So here they are, seven deadly
sins of speaking.', 160.547, 163.564, NULL),
  (2354, 80, 'These are things I think we need to avoid.', 163.588, 165.997, NULL),
  (2355, 80, 'But is there a positive
way to think about this?', 166.021, 168.866, NULL),
  (2356, 80, 'Yes, there is.', 168.890, 170.149, NULL),
  (2357, 80, 'I''d like to suggest that there are four
really powerful cornerstones, foundations,', 170.458, 175.950, NULL),
  (2358, 80, 'that we can stand on if we want our speech', 175.974, 178.396, NULL),
  (2359, 80, 'to be powerful and to make
change in the world.', 178.420, 181.631, NULL),
  (2360, 80, 'Fortunately, these things spell a word.', 182.288, 184.499, NULL),
  (2361, 80, 'The word is "hail," and it has
a great definition as well.', 184.523, 187.595, NULL),
  (2362, 80, 'I''m not talking about the stuff
that falls from the sky', 187.619, 190.263, NULL),
  (2363, 80, 'and hits you on the head.', 190.287, 191.551, NULL),
  (2364, 80, 'I''m talking about this definition,', 191.575, 193.195, NULL),
  (2365, 80, 'to greet or acclaim enthusiastically,', 193.219, 195.016, NULL),
  (2366, 80, 'which is how I think
our words will be received', 195.040, 197.283, NULL),
  (2367, 80, 'if we stand on these four things.', 197.307, 198.879, NULL),
  (2368, 80, 'So what do they stand for?', 198.903, 200.401, NULL),
  (2369, 80, 'See if you can guess.', 200.425, 201.801, NULL),
  (2370, 80, 'The H, honesty, of course,', 202.320, 205.259, NULL),
  (2371, 80, 'being true in what you say,
being straight and clear.', 205.283, 208.230, NULL),
  (2372, 80, 'The A is authenticity,
just being yourself.', 208.254, 212.271, NULL),
  (2373, 80, 'A friend of mine described it as
standing in your own truth,', 212.295, 215.481, NULL),
  (2374, 80, 'which I think is a lovely way to put it.', 215.505, 217.419, NULL),
  (2375, 80, 'The I is integrity, being your word,', 217.443, 220.055, NULL),
  (2376, 80, 'actually doing what you say,', 220.079, 221.843, NULL),
  (2377, 80, 'and being somebody people can trust.', 221.867, 223.697, NULL),
  (2378, 80, 'And the L is love.', 224.358, 226.355, NULL),
  (2379, 80, 'I don''t mean romantic love,', 227.130, 229.227, NULL),
  (2380, 80, 'but I do mean wishing people
well, for two reasons.', 229.251, 232.636, NULL),
  (2381, 80, 'First of all, I think absolute honesty
may not be what we want.', 232.660, 236.050, NULL),
  (2382, 80, 'I mean, my goodness,
you look ugly this morning.', 236.074, 238.639, NULL),
  (2383, 80, 'Perhaps that''s not necessary.', 238.663, 241.997, NULL),
  (2384, 80, 'Tempered with love, of course,
honesty is a great thing.', 242.021, 245.355, NULL),
  (2385, 80, 'But also, if you''re really
wishing somebody well,', 245.379, 248.450, NULL),
  (2386, 80, 'it''s very hard to judge
them at the same time.', 248.474, 251.087, NULL),
  (2387, 80, 'I''m not even sure you can do
those two things simultaneously.', 251.111, 254.673, NULL),
  (2388, 80, 'So hail.', 255.310, 256.886, NULL),
  (2389, 80, 'Also, now that''s what you say,', 256.910, 258.643, NULL),
  (2390, 80, 'and it''s like the old song,
it is what you say,', 258.667, 260.911, NULL),
  (2391, 80, 'it''s also the way that you say it.', 260.935, 262.614, NULL),
  (2392, 80, 'You have an amazing toolbox.', 262.638, 264.386, NULL),
  (2393, 80, 'This instrument is incredible,', 264.410, 266.246, NULL),
  (2394, 80, 'and yet this is a toolbox
that very few people have ever opened.', 266.270, 269.786, NULL),
  (2395, 80, 'I''d like to have a little rummage
in there with you now', 269.810, 272.407, NULL),
  (2396, 80, 'and just pull a few tools out', 272.431, 273.831, NULL),
  (2397, 80, 'that you might like to take
away and play with,', 273.855, 276.094, NULL),
  (2398, 80, 'which will increase
the power of your speaking.', 276.118, 278.418, NULL),
  (2399, 80, 'Register, for example.', 278.442, 279.962, NULL),
  (2400, 80, 'Now, falsetto register may not
be very useful most of the time,', 279.986, 284.156, NULL),
  (2401, 80, 'but there''s a register in between.', 284.180, 286.210, NULL),
  (2402, 80, 'I''m not going to get very
technical about this', 286.234, 288.395, NULL),
  (2403, 80, 'for any of you who are voice coaches.', 288.419, 290.181, NULL),
  (2404, 80, 'You can locate your voice, however.', 290.205, 291.918, NULL),
  (2405, 80, 'So if I talk up here in my nose,
you can hear the difference.', 291.942, 294.800, NULL),
  (2406, 80, 'If I go down here in my throat,', 294.824, 296.308, NULL),
  (2407, 80, 'which is where most of us
speak from most of the time.', 296.332, 298.961, NULL),
  (2408, 80, 'But if you want weight,', 298.985, 300.618, NULL),
  (2409, 80, 'you need to go down here to the chest.', 300.642, 303.096, NULL),
  (2410, 80, 'You hear the difference?', 303.120, 304.706, NULL),
  (2411, 80, 'We vote for politicians
with lower voices, it''s true,', 304.730, 308.746, NULL),
  (2412, 80, 'because we associate depth with power', 308.770, 311.714, NULL),
  (2413, 80, 'and with authority.', 311.738, 313.500, NULL),
  (2414, 80, 'That''s register.', 314.445, 315.812, NULL),
  (2415, 80, 'Then we have timbre.', 316.134, 317.477, NULL),
  (2416, 80, 'It''s the way your voice feels.', 317.501, 319.246, NULL),
  (2417, 80, 'Again, the research shows', 319.270, 320.602, NULL),
  (2418, 80, 'that we prefer voices
which are rich, smooth, warm,', 320.626, 324.400, NULL),
  (2419, 80, 'like hot chocolate.', 324.424, 325.910, NULL),
  (2420, 80, 'Well if that''s not you,
that''s not the end of the world,', 326.635, 329.899, NULL),
  (2421, 80, 'because you can train.', 329.923, 331.341, NULL),
  (2422, 80, 'Go and get a voice coach.', 331.365, 332.585, NULL),
  (2423, 80, 'And there are amazing things you can do', 332.609, 334.467, NULL),
  (2424, 80, 'with breathing, with posture,
and with exercises', 334.491, 336.897, NULL),
  (2425, 80, 'to improve the timbre of your voice.', 336.921, 339.411, NULL),
  (2426, 80, 'Then prosody. I love prosody.', 339.435, 341.203, NULL),
  (2427, 80, 'This is the sing-song, the meta-language', 341.227, 343.379, NULL),
  (2428, 80, 'that we use in order to impart meaning.', 343.403, 345.453, NULL),
  (2429, 80, 'It''s root one for meaning in conversation.', 345.477, 348.291, NULL),
  (2430, 80, 'People who speak all on one note
are really quite hard to listen to', 348.315, 352.371, NULL),
  (2431, 80, 'if they don''t have any prosody at all.', 352.395, 354.587, NULL),
  (2432, 80, 'That''s where the word
"monotonic" comes from,', 354.611, 357.562, NULL),
  (2433, 80, 'or monotonous, monotone.', 357.586, 359.523, NULL),
  (2434, 80, 'Also, we have repetitive
prosody now coming in,', 360.306, 363.579, NULL),
  (2435, 80, 'where every sentence ends
as if it were a question', 363.603, 366.299, NULL),
  (2436, 80, 'when it''s actually not
a question, it''s a statement?', 366.323, 368.800, NULL),
  (2437, 80, '(Laughter)', 368.824, 371.130, NULL),
  (2438, 80, 'And if you repeat that one,', 371.154, 372.716, NULL),
  (2439, 80, 'it''s actually restricting your ability
to communicate through prosody,', 372.740, 376.084, NULL),
  (2440, 80, 'which I think is a shame,', 376.108, 377.970, NULL),
  (2441, 80, 'so let''s try and break that habit.', 377.994, 379.979, NULL),
  (2442, 80, 'Pace.', 381.315, 382.394, NULL),
  (2443, 80, 'I can get very excited by saying
something really quickly,', 382.418, 385.179, NULL),
  (2444, 80, 'or I can slow right down to emphasize,', 385.203, 388.555, NULL),
  (2445, 80, 'and at the end of that, of course,
is our old friend silence.', 388.579, 392.195, NULL),
  (2446, 80, 'There''s nothing wrong with a bit
of silence in a talk, is there?', 394.555, 397.695, NULL),
  (2447, 80, 'We don''t have to fill it with ums and ahs.', 398.561, 401.000, NULL),
  (2448, 80, 'It can be very powerful.', 401.833, 403.063, NULL),
  (2449, 80, 'Of course, pitch often
goes along with pace', 403.823, 406.127, NULL),
  (2450, 80, 'to indicate arousal, but you
can do it just with pitch.', 406.151, 408.771, NULL),
  (2451, 80, 'Where did you leave my keys?', 408.795, 410.359, NULL),
  (2452, 80, '(Higher pitch) Where did you
leave my keys?', 410.383, 412.463, NULL),
  (2453, 80, 'So, slightly different meaning
in those two deliveries.', 412.487, 416.132, NULL),
  (2454, 80, 'And finally, volume.', 416.156, 418.378, NULL),
  (2455, 80, '(Loud) I can get really excited
by using volume.', 418.402, 421.779, NULL),
  (2456, 80, 'Sorry about that, if I startled anybody.', 421.803, 423.956, NULL),
  (2457, 80, 'Or, I can have you really pay attention
by getting very quiet.', 423.980, 427.503, NULL),
  (2458, 80, 'Some people broadcast the whole time.', 428.707, 430.503, NULL),
  (2459, 80, 'Try not to do that.', 430.527, 431.876, NULL),
  (2460, 80, 'That''s called sodcasting,', 431.900, 433.728, NULL),
  (2461, 80, '(Laughter)', 433.752, 435.421, NULL),
  (2462, 80, 'Imposing your sound on people around you
carelessly and inconsiderately.', 435.445, 439.989, NULL),
  (2463, 80, 'Not nice.', 440.013, 441.091, NULL),
  (2464, 80, 'Of course, where this all comes
into play most of all', 441.115, 443.647, NULL),
  (2465, 80, 'is when you''ve got something
really important to do.', 443.671, 446.175, NULL),
  (2466, 80, 'It might be standing on a stage like this
and giving a talk to people.', 446.199, 449.627, NULL),
  (2467, 80, 'It might be proposing marriage,', 449.651, 451.515, NULL),
  (2468, 80, 'asking for a raise, a wedding speech.', 451.539, 454.669, NULL),
  (2469, 80, 'Whatever it is, if it''s really important,', 454.693, 456.675, NULL),
  (2470, 80, 'you owe it to yourself
to look at this toolbox', 456.699, 460.448, NULL),
  (2471, 80, 'and the engine that it''s going to work on,', 460.472, 462.485, NULL),
  (2472, 80, 'and no engine works well
without being warmed up.', 462.509, 465.580, NULL),
  (2473, 80, 'Warm up your voice.', 465.604, 467.073, NULL),
  (2474, 80, 'Actually, let me show you how to do that.', 467.482, 469.533, NULL),
  (2475, 80, 'Would you all like to stand
up for a moment?', 469.557, 472.512, NULL),
  (2476, 80, 'I''m going to show you', 472.536, 473.667, NULL),
  (2477, 80, 'the six vocal warm-up exercises
that I do before every talk I ever do.', 473.691, 478.901, NULL),
  (2478, 80, 'Any time you''re going to talk
to anybody important, do these.', 478.925, 481.835, NULL),
  (2479, 80, 'First, arms up, deep breath in,', 481.859, 484.638, NULL),
  (2480, 80, 'and sigh out, ahhhhh, like that.', 484.662, 487.740, NULL),
  (2481, 80, 'One more time.', 487.764, 489.368, NULL),
  (2482, 80, 'Ahhhh, very good.', 489.392, 492.366, NULL),
  (2483, 80, 'Now we''re going to warm up our lips,', 492.390, 494.108, NULL),
  (2484, 80, 'and we''re going to go Ba, Ba, Ba, Ba,', 494.132, 496.460, NULL),
  (2485, 80, 'Ba, Ba, Ba, Ba. Very good.', 496.484, 499.412, NULL),
  (2486, 80, 'And now, brrrrrrrrrr,', 499.436, 502.852, NULL),
  (2487, 80, 'just like when you were a kid.', 502.876, 504.402, NULL),
  (2488, 80, 'Brrrr. Now your lips
should be coming alive.', 504.426, 506.829, NULL),
  (2489, 80, 'We''re going to do the tongue next', 506.853, 508.504, NULL),
  (2490, 80, 'with exaggerated la, la, la,
la, la, la, la, la, la.', 508.528, 512.826, NULL),
  (2491, 80, 'Beautiful. You''re getting
really good at this.', 512.850, 515.041, NULL),
  (2492, 80, 'And then, roll an R. Rrrrrrr.', 515.065, 517.931, NULL),
  (2493, 80, 'That''s like champagne for the tongue.', 517.955, 520.147, NULL),
  (2494, 80, 'Finally, and if I can only do one,', 520.171, 522.467, NULL),
  (2495, 80, 'the pros call this the siren.', 522.491, 524.274, NULL),
  (2496, 80, 'It''s really good. It starts
with "we" and goes to "aw."', 524.298, 526.918, NULL),
  (2497, 80, 'The "we" is high, the "aw" is low.', 526.942, 528.562, NULL),
  (2498, 80, 'So you go, weeeaawww, weeeaawww.', 528.586, 534.682, NULL),
  (2499, 80, 'Fantastic. Give yourselves
a round of applause.', 534.706, 536.945, NULL),
  (2500, 80, 'Take a seat, thank you.', 536.969, 538.214, NULL),
  (2501, 80, '(Applause)', 538.238, 539.688, NULL),
  (2502, 80, 'Next time you speak, do those in advance.', 539.712, 542.312, NULL),
  (2503, 80, 'Now let me just put this
in context to close.', 542.336, 544.952, NULL),
  (2504, 80, 'This is a serious point here.', 544.976, 547.248, NULL),
  (2505, 80, 'This is where we are now, right?', 547.272, 549.079, NULL),
  (2506, 80, 'We speak not very well', 549.103, 550.744, NULL),
  (2507, 80, 'to people who simply aren''t listening', 550.768, 552.612, NULL),
  (2508, 80, 'in an environment that''s all
about noise and bad acoustics.', 552.636, 555.531, NULL),
  (2509, 80, 'I have talked about that on this stage
in different phases.', 555.555, 558.774, NULL),
  (2510, 80, 'What would the world be like', 558.798, 560.408, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (2511, 80, 'if we were speaking powerfully', 560.432, 562.128, NULL),
  (2512, 80, 'to people who were listening consciously', 562.152, 564.184, NULL),
  (2513, 80, 'in environments which were
actually fit for purpose?', 564.208, 567.578, NULL),
  (2514, 80, 'Or to make that a bit larger,', 567.602, 570.561, NULL),
  (2515, 80, 'what would the world be like', 570.585, 571.919, NULL),
  (2516, 80, 'if we were creating sound consciously', 571.943, 574.286, NULL),
  (2517, 80, 'and consuming sound consciously', 574.310, 576.319, NULL),
  (2518, 80, 'and designing all our environments', 576.343, 578.046, NULL),
  (2519, 80, 'consciously for sound?', 578.070, 579.523, NULL),
  (2520, 80, 'That would be a world
that does sound beautiful,', 579.547, 582.647, NULL),
  (2521, 80, 'and one where understanding
would be the norm,', 582.671, 586.558, NULL),
  (2522, 80, 'and that is an idea worth spreading.', 586.582, 589.231, NULL),
  (2523, 80, 'Thank you.', 589.255, 590.387, NULL),
  (2524, 80, '(Applause)', 590.411, 591.933, NULL),
  (2525, 81, 'I need to make a confession
at the outset here.', 13.302, 15.818, NULL),
  (2526, 81, 'A little over 20 years ago,
I did something that I regret,', 15.842, 20.595, NULL),
  (2527, 81, 'something that I''m not
particularly proud of.', 21.671, 24.342, NULL),
  (2528, 81, 'Something that, in many ways,
I wish no one would ever know,', 25.041, 28.416, NULL),
  (2529, 81, 'but here I feel kind of obliged to reveal.', 28.440, 31.699, NULL),
  (2530, 81, '(Laughter)', 31.723, 32.743, NULL),
  (2531, 81, 'In the late 1980s,', 34.000, 36.024, NULL),
  (2532, 81, 'in a moment of youthful indiscretion,', 36.048, 39.443, NULL),
  (2533, 81, 'I went to law school.', 39.467, 40.968, NULL),
  (2534, 81, '(Laughter)', 40.992, 42.930, NULL),
  (2535, 81, 'In America, law is a professional degree:', 45.666, 48.103, NULL),
  (2536, 81, 'after your university degree,
you go on to law school.', 48.127, 50.832, NULL),
  (2537, 81, 'When I got to law school,', 50.856, 52.296, NULL),
  (2538, 81, 'I didn''t do very well.', 53.133, 54.430, NULL),
  (2539, 81, 'To put it mildly, I didn''t do very well.', 55.743, 57.664, NULL),
  (2540, 81, 'I, in fact, graduated in the part
of my law school class', 57.688, 60.695, NULL),
  (2541, 81, 'that made the top 90% possible.', 60.719, 64.136, NULL),
  (2542, 81, '(Laughter)', 64.160, 66.382, NULL),
  (2543, 81, 'Thank you.', 68.160, 69.208, NULL),
  (2544, 81, 'I never practiced law a day in my life;', 70.985, 74.540, NULL),
  (2545, 81, 'I pretty much wasn''t allowed to.', 74.564, 76.548, NULL),
  (2546, 81, '(Laughter)', 76.572, 78.169, NULL),
  (2547, 81, 'But today, against my better judgment,', 79.310, 82.791, NULL),
  (2548, 81, 'against the advice of my own wife,', 82.815, 85.136, NULL),
  (2549, 81, 'I want to try to dust off
some of those legal skills --', 85.160, 89.136, NULL),
  (2550, 81, 'what''s left of those legal skills.', 89.160, 91.519, NULL),
  (2551, 81, 'I don''t want to tell you a story.', 91.543, 93.289, NULL),
  (2552, 81, 'I want to make a case.', 94.160, 96.524, NULL),
  (2553, 81, 'I want to make a hard-headed,', 96.548, 98.914, NULL),
  (2554, 81, 'evidence-based,', 98.938, 100.136, NULL),
  (2555, 81, 'dare I say lawyerly case,', 100.160, 103.334, NULL),
  (2556, 81, 'for rethinking how we run our businesses.', 103.358, 106.107, NULL),
  (2557, 81, 'So, ladies and gentlemen of the jury,', 107.953, 109.938, NULL),
  (2558, 81, 'take a look at this.', 109.962, 111.405, NULL),
  (2559, 81, 'This is called the candle problem.', 111.429, 113.736, NULL),
  (2560, 81, 'Some of you might know it.', 113.760, 115.434, NULL),
  (2561, 81, 'It''s created in 1945', 115.458, 117.136, NULL),
  (2562, 81, 'by a psychologist named Karl Duncker.', 117.160, 119.136, NULL),
  (2563, 81, 'He created this experiment', 119.160, 121.136, NULL),
  (2564, 81, 'that is used in many other experiments
in behavioral science.', 121.160, 124.291, NULL),
  (2565, 81, 'And here''s how it works.
Suppose I''m the experimenter.', 124.315, 127.136, NULL),
  (2566, 81, 'I bring you into a room.', 127.160, 128.780, NULL),
  (2567, 81, 'I give you a candle,
some thumbtacks and some matches.', 128.804, 133.028, NULL),
  (2568, 81, 'And I say to you,', 133.052, 134.123, NULL),
  (2569, 81, '"Your job is to attach
the candle to the wall', 134.147, 137.136, NULL),
  (2570, 81, 'so the wax doesn''t drip onto the table."', 137.160, 140.286, NULL),
  (2571, 81, 'Now what would you do?', 140.310, 141.845, NULL),
  (2572, 81, 'Many people begin trying
to thumbtack the candle to the wall.', 141.869, 145.464, NULL),
  (2573, 81, 'Doesn''t work.', 145.488, 146.826, NULL),
  (2574, 81, 'I saw somebody
kind of make the motion over here --', 146.850, 151.580, NULL),
  (2575, 81, 'some people have a great idea
where they light the match,', 151.604, 154.708, NULL),
  (2576, 81, 'melt the side of the candle,
try to adhere it to the wall.', 154.732, 157.661, NULL),
  (2577, 81, 'It''s an awesome idea. Doesn''t work.', 157.685, 159.780, NULL),
  (2578, 81, 'And eventually, after five or ten minutes,', 160.827, 163.136, NULL),
  (2579, 81, 'most people figure out the solution,', 163.160, 165.136, NULL),
  (2580, 81, 'which you can see here.', 165.160, 166.905, NULL),
  (2581, 81, 'The key is to overcome
what''s called functional fixedness.', 166.929, 170.719, NULL),
  (2582, 81, 'You look at that box and you see it
only as a receptacle for the tacks.', 170.743, 174.707, NULL),
  (2583, 81, 'But it can also have this other function,', 174.731, 176.737, NULL),
  (2584, 81, 'as a platform for the candle.', 176.761, 179.023, NULL),
  (2585, 81, 'The candle problem.', 179.047, 180.136, NULL),
  (2586, 81, 'I want to tell you about an experiment
using the candle problem,', 180.160, 184.131, NULL),
  (2587, 81, 'done by a scientist named Sam Glucksberg,', 184.155, 186.614, NULL),
  (2588, 81, 'who is now at Princeton University, US,', 186.638, 188.759, NULL),
  (2589, 81, 'This shows the power of incentives.', 188.783, 192.136, NULL),
  (2590, 81, 'He gathered his participants and said:', 192.160, 194.136, NULL),
  (2591, 81, '"I''m going to time you, how quickly
you can solve this problem."', 194.160, 197.985, NULL),
  (2592, 81, 'To one group he said,', 198.009, 199.485, NULL),
  (2593, 81, '"I''m going to time you to establish norms,', 199.509, 202.136, NULL),
  (2594, 81, 'averages for how long it typically takes
someone to solve this sort of problem."', 202.160, 206.701, NULL),
  (2595, 81, 'To the second group he offered rewards.', 206.725, 209.136, NULL),
  (2596, 81, 'He said, "If you''re in the top 25%
of the fastest times,', 209.160, 213.883, NULL),
  (2597, 81, 'you get five dollars.', 213.907, 214.915, NULL),
  (2598, 81, 'If you''re the fastest of everyone
we''re testing here today,', 215.874, 219.627, NULL),
  (2599, 81, 'you get 20 dollars."', 219.651, 221.136, NULL),
  (2600, 81, 'Now this is several years ago,
adjusted for inflation,', 221.160, 224.043, NULL),
  (2601, 81, 'it''s a decent sum of money
for a few minutes of work.', 224.067, 226.612, NULL),
  (2602, 81, 'It''s a nice motivator.', 226.636, 228.136, NULL),
  (2603, 81, 'Question:', 228.160, 229.303, NULL),
  (2604, 81, 'How much faster did this group
solve the problem?', 229.327, 232.644, NULL),
  (2605, 81, 'Answer:', 233.537, 234.783, NULL),
  (2606, 81, 'It took them, on average,
three and a half minutes longer.', 234.807, 240.449, NULL),
  (2607, 81, '3.5 min longer.', 240.473, 241.688, NULL),
  (2608, 81, 'This makes no sense, right?', 241.712, 243.534, NULL),
  (2609, 81, 'I mean, I''m an American.
I believe in free markets.', 243.558, 246.661, NULL),
  (2610, 81, 'That''s not how it''s supposed
to work, right?', 246.685, 249.136, NULL),
  (2611, 81, '(Laughter)', 249.160, 250.344, NULL),
  (2612, 81, 'If you want people to perform better,
you reward them. Right?', 250.368, 254.283, NULL),
  (2613, 81, 'Bonuses, commissions,
their own reality show.', 254.307, 257.136, NULL),
  (2614, 81, 'Incentivize them.', 257.160, 259.178, NULL),
  (2615, 81, 'That''s how business works.', 260.022, 261.405, NULL),
  (2616, 81, 'But that''s not happening here.', 261.429, 263.442, NULL),
  (2617, 81, 'You''ve got an incentive designed', 263.466, 265.136, NULL),
  (2618, 81, 'to sharpen thinking
and accelerate creativity,', 265.160, 268.956, NULL),
  (2619, 81, 'and it does just the opposite.', 268.980, 271.136, NULL),
  (2620, 81, 'It dulls thinking and blocks creativity.', 271.160, 274.136, NULL),
  (2621, 81, 'What''s interesting about this experiment', 274.160, 276.091, NULL),
  (2622, 81, 'is that it''s not an aberration.', 276.115, 277.685, NULL),
  (2623, 81, 'This has been replicated
over and over again', 277.709, 280.794, NULL),
  (2624, 81, 'for nearly 40 years.', 280.818, 283.836, NULL),
  (2625, 81, 'These contingent motivators --', 283.860, 286.136, NULL),
  (2626, 81, 'if you do this, then you get that --', 286.160, 288.534, NULL),
  (2627, 81, 'work in some circumstances.', 288.558, 290.136, NULL),
  (2628, 81, 'But for a lot of tasks,
they actually either don''t work', 290.160, 293.972, NULL),
  (2629, 81, 'or, often, they do harm.', 293.996, 295.892, NULL),
  (2630, 81, 'This is one of the most robust findings
in social science,', 296.848, 301.737, NULL),
  (2631, 81, 'and also one of the most ignored.', 302.945, 305.294, NULL),
  (2632, 81, 'I spent the last couple of years', 305.318, 306.908, NULL),
  (2633, 81, 'looking at the science
of human motivation,', 306.932, 309.003, NULL),
  (2634, 81, 'particularly the dynamics
of extrinsic motivators', 309.027, 311.389, NULL),
  (2635, 81, 'and intrinsic motivators.', 311.413, 313.136, NULL),
  (2636, 81, 'And I''m telling you, it''s not even close.', 313.160, 315.572, NULL),
  (2637, 81, 'If you look at the science,
there is a mismatch', 315.596, 317.934, NULL),
  (2638, 81, 'between what science knows', 317.958, 319.811, NULL),
  (2639, 81, 'and what business does.', 319.835, 321.246, NULL),
  (2640, 81, 'What''s alarming here
is that our business operating system --', 321.270, 324.516, NULL),
  (2641, 81, 'think of the set of assumptions
and protocols beneath our businesses,', 324.540, 327.848, NULL),
  (2642, 81, 'how we motivate people,
how we apply our human resources--', 327.872, 331.581, NULL),
  (2643, 81, 'it''s built entirely
around these extrinsic motivators,', 332.630, 335.860, NULL),
  (2644, 81, 'around carrots and sticks.', 335.884, 337.455, NULL),
  (2645, 81, 'That''s actually fine for many kinds
of 20th century tasks.', 337.479, 341.668, NULL),
  (2646, 81, 'But for 21st century tasks,', 341.692, 343.803, NULL),
  (2647, 81, 'that mechanistic,
reward-and-punishment approach', 343.827, 347.358, NULL),
  (2648, 81, 'doesn''t work,', 347.382, 349.050, NULL),
  (2649, 81, 'often doesn''t work,', 349.074, 350.556, NULL),
  (2650, 81, 'and often does harm.', 350.580, 351.751, NULL),
  (2651, 81, 'Let me show you.', 351.775, 352.958, NULL),
  (2652, 81, 'Glucksberg did another similar experiment,', 352.982, 356.059, NULL),
  (2653, 81, 'he presented the problem
in a slightly different way,', 356.083, 358.696, NULL),
  (2654, 81, 'like this up here.', 358.720, 359.740, NULL),
  (2655, 81, 'Attach the candle to the wall
so the wax doesn''t drip onto the table.', 360.662, 363.939, NULL),
  (2656, 81, 'Same deal. You: we''re timing for norms.', 363.963, 366.439, NULL),
  (2657, 81, 'You: we''re incentivizing.', 366.463, 368.905, NULL),
  (2658, 81, 'What happened this time?', 368.929, 370.380, NULL),
  (2659, 81, 'This time, the incentivized group
kicked the other group''s butt.', 371.360, 377.564, NULL),
  (2660, 81, 'Why?', 377.588, 378.603, NULL),
  (2661, 81, 'Because when the tacks are out of the box,', 379.414, 381.921, NULL),
  (2662, 81, 'it''s pretty easy isn''t it?', 381.945, 383.577, NULL),
  (2663, 81, '(Laughter)', 385.421, 387.871, NULL),
  (2664, 81, 'If-then rewards work really well
for those sorts of tasks,', 387.895, 392.873, NULL),
  (2665, 81, 'where there is a simple set of rules', 392.897, 394.613, NULL),
  (2666, 81, 'and a clear destination to go to.', 394.637, 397.136, NULL),
  (2667, 81, 'Rewards, by their very nature,', 397.160, 399.136, NULL),
  (2668, 81, 'narrow our focus, concentrate the mind;', 399.160, 401.136, NULL),
  (2669, 81, 'that''s why they work in so many cases.', 401.160, 403.495, NULL),
  (2670, 81, 'So, for tasks like this,', 403.519, 405.598, NULL),
  (2671, 81, 'a narrow focus, where you just see
the goal right there,', 405.622, 408.975, NULL),
  (2672, 81, 'zoom straight ahead to it,', 408.999, 410.379, NULL),
  (2673, 81, 'they work really well.', 410.403, 412.032, NULL),
  (2674, 81, 'But for the real candle problem,', 412.056, 414.776, NULL),
  (2675, 81, 'you don''t want to be looking like this.', 414.800, 416.792, NULL),
  (2676, 81, 'The solution is on the periphery.
You want to be looking around.', 416.816, 419.946, NULL),
  (2677, 81, 'That reward actually narrows our focus', 419.970, 422.597, NULL),
  (2678, 81, 'and restricts our possibility.', 422.621, 424.136, NULL),
  (2679, 81, 'Let me tell you why this is so important.', 424.160, 426.130, NULL),
  (2680, 81, 'In western Europe,', 427.336, 430.439, NULL),
  (2681, 81, 'in many parts of Asia,', 430.463, 431.548, NULL),
  (2682, 81, 'in North America, in Australia,', 431.572, 434.347, NULL),
  (2683, 81, 'white-collar workers are doing
less of this kind of work,', 434.371, 437.937, NULL),
  (2684, 81, 'and more of this kind of work.', 437.961, 440.341, NULL),
  (2685, 81, 'That routine, rule-based,
left-brain work --', 442.025, 444.996, NULL),
  (2686, 81, 'certain kinds of accounting,
financial analysis,', 445.020, 447.736, NULL),
  (2687, 81, 'computer programming --', 447.760, 449.455, NULL),
  (2688, 81, 'has become fairly easy to outsource,', 449.479, 451.674, NULL),
  (2689, 81, 'fairly easy to automate.', 451.698, 453.729, NULL),
  (2690, 81, 'Software can do it faster.', 453.753, 455.929, NULL),
  (2691, 81, 'Low-cost providers can do it cheaper.', 455.953, 458.278, NULL),
  (2692, 81, 'So what really matters', 458.302, 461.270, NULL),
  (2693, 81, 'are the more right-brained
creative, conceptual kinds of abilities.', 461.294, 465.922, NULL),
  (2694, 81, 'Think about your own work.', 465.946, 468.327, NULL),
  (2695, 81, 'Think about your own work.', 468.351, 470.096, NULL),
  (2696, 81, 'Are the problems that you face,', 471.033, 472.615, NULL),
  (2697, 81, 'or even the problems
we''ve been talking about here,', 472.639, 475.136, NULL),
  (2698, 81, 'do they have a clear set of rules,', 475.160, 478.048, NULL),
  (2699, 81, 'and a single solution?', 478.072, 479.659, NULL),
  (2700, 81, 'No. The rules are mystifying.', 479.683, 482.136, NULL),
  (2701, 81, 'The solution, if it exists at all,', 482.160, 484.406, NULL),
  (2702, 81, 'is surprising and not obvious.', 484.430, 487.136, NULL),
  (2703, 81, 'Everybody in this room', 487.160, 489.914, NULL),
  (2704, 81, 'is dealing with their own version
of the candle problem.', 489.938, 494.136, NULL),
  (2705, 81, 'And for candle problems of any kind,', 494.160, 497.297, NULL),
  (2706, 81, 'in any field,', 497.321, 498.991, NULL),
  (2707, 81, 'those if-then rewards,', 499.015, 502.008, NULL),
  (2708, 81, 'the things around which we''ve built
so many of our businesses,', 502.032, 506.274, NULL),
  (2709, 81, 'don''t work!', 506.298, 508.131, NULL),
  (2710, 81, 'It makes me crazy.', 508.155, 510.611, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (2711, 81, 'And here''s the thing.', 510.635, 512.571, NULL),
  (2712, 81, 'This is not a feeling.', 512.595, 514.651, NULL),
  (2713, 81, 'Okay? I''m a lawyer;
I don''t believe in feelings.', 515.856, 518.950, NULL),
  (2714, 81, 'This is not a philosophy.', 518.974, 522.617, NULL),
  (2715, 81, 'I''m an American;
I don''t believe in philosophy.', 522.641, 524.903, NULL),
  (2716, 81, '(Laughter)', 524.927, 526.614, NULL),
  (2717, 81, 'This is a fact --', 527.525, 530.493, NULL),
  (2718, 81, 'or, as we say in my hometown
of Washington, D.C.,', 530.517, 532.961, NULL),
  (2719, 81, 'a true fact.', 532.985, 534.575, NULL),
  (2720, 81, '(Laughter)', 534.599, 537.043, NULL),
  (2721, 81, '(Applause)', 537.067, 540.861, NULL),
  (2722, 81, 'Let me give you an example.', 540.885, 542.527, NULL),
  (2723, 81, 'Let me marshal the evidence here.', 542.551, 544.136, NULL),
  (2724, 81, 'I''m not telling a story,
I''m making a case.', 544.160, 546.273, NULL),
  (2725, 81, 'Ladies and gentlemen
of the jury, some evidence:', 546.297, 548.568, NULL),
  (2726, 81, 'Dan Ariely, one of the great
economists of our time,', 548.592, 551.967, NULL),
  (2727, 81, 'he and three colleagues
did a study of some MIT students.', 551.991, 555.462, NULL),
  (2728, 81, 'They gave these MIT
students a bunch of games,', 555.486, 558.136, NULL),
  (2729, 81, 'games that involved creativity,', 558.160, 560.136, NULL),
  (2730, 81, 'and motor skills, and concentration.', 560.160, 562.438, NULL),
  (2731, 81, 'And the offered them, for performance,', 562.462, 564.543, NULL),
  (2732, 81, 'three levels of rewards:', 564.567, 566.581, NULL),
  (2733, 81, 'small reward, medium reward,
large reward.', 566.605, 570.851, NULL),
  (2734, 81, 'If you do really well
you get the large reward, on down.', 570.875, 575.012, NULL),
  (2735, 81, 'What happened?', 575.036, 576.370, NULL),
  (2736, 81, 'As long as the task
involved only mechanical skill', 576.394, 579.136, NULL),
  (2737, 81, 'bonuses worked as they would be expected:', 579.160, 581.136, NULL),
  (2738, 81, 'the higher the pay,
the better the performance.', 581.160, 584.857, NULL),
  (2739, 81, 'Okay?', 584.881, 586.032, NULL),
  (2740, 81, 'But once the task called
for even rudimentary cognitive skill,', 586.056, 591.136, NULL),
  (2741, 81, 'a larger reward led to poorer performance.', 591.160, 597.232, NULL),
  (2742, 81, 'Then they said,', 597.256, 598.406, NULL),
  (2743, 81, '"Let''s see if there''s any
cultural bias here.', 598.430, 600.565, NULL),
  (2744, 81, 'Let''s go to Madurai, India and test it."', 600.589, 602.542, NULL),
  (2745, 81, 'Standard of living is lower.', 602.566, 604.136, NULL),
  (2746, 81, 'In Madurai, a reward that is modest
in North American standards,', 604.160, 607.637, NULL),
  (2747, 81, 'is more meaningful there.', 607.661, 609.002, NULL),
  (2748, 81, 'Same deal. A bunch of games,
three levels of rewards.', 609.859, 613.261, NULL),
  (2749, 81, 'What happens?', 613.285, 614.374, NULL),
  (2750, 81, 'People offered the medium level of rewards', 615.301, 618.301, NULL),
  (2751, 81, 'did no better than people
offered the small rewards.', 618.325, 620.905, NULL),
  (2752, 81, 'But this time,
people offered the highest rewards,', 620.929, 625.408, NULL),
  (2753, 81, 'they did the worst of all.', 625.432, 626.928, NULL),
  (2754, 81, 'In eight of the nine tasks we examined
across three experiments,', 628.977, 632.350, NULL),
  (2755, 81, 'higher incentives led
to worse performance.', 632.374, 635.843, NULL),
  (2756, 81, 'Is this some kind of touchy-feely
socialist conspiracy going on here?', 637.634, 643.610, NULL),
  (2757, 81, 'No, these are economists from MIT,', 643.634, 646.410, NULL),
  (2758, 81, 'from Carnegie Mellon,
from the University of Chicago.', 646.434, 649.136, NULL),
  (2759, 81, 'Do you know who sponsored this research?', 649.160, 651.781, NULL),
  (2760, 81, 'The Federal Reserve Bank
of the United States.', 651.805, 655.925, NULL),
  (2761, 81, 'That''s the American experience.', 655.949, 657.769, NULL),
  (2762, 81, 'Let''s go across the pond
to the London School of Economics,', 657.793, 660.568, NULL),
  (2763, 81, 'LSE, London School of Economics,', 660.592, 663.136, NULL),
  (2764, 81, 'alma mater of eleven
Nobel Laureates in economics.', 663.160, 666.604, NULL),
  (2765, 81, 'Training ground for great
economic thinkers', 666.628, 669.136, NULL),
  (2766, 81, 'like George Soros, and Friedrich Hayek,', 669.160, 672.136, NULL),
  (2767, 81, 'and Mick Jagger.', 672.160, 673.447, NULL),
  (2768, 81, '(Laughter)', 673.471, 674.770, NULL),
  (2769, 81, 'Last month,', 674.794, 676.564, NULL),
  (2770, 81, 'just last month,', 676.588, 678.087, NULL),
  (2771, 81, 'economists at LSE looked at 51 studies', 678.111, 681.136, NULL),
  (2772, 81, 'of pay-for-performance plans,
inside of companies.', 681.160, 684.136, NULL),
  (2773, 81, 'Here''s what they said:', 684.160, 685.611, NULL),
  (2774, 81, '"We find that financial incentives', 685.635, 687.431, NULL),
  (2775, 81, 'can result in a negative impact
on overall performance."', 687.455, 691.508, NULL),
  (2776, 81, 'There is a mismatch
between what science knows', 692.936, 696.635, NULL),
  (2777, 81, 'and what business does.', 696.659, 698.136, NULL),
  (2778, 81, 'And what worries me,
as we stand here in the rubble', 698.160, 701.437, NULL),
  (2779, 81, 'of the economic collapse,', 701.461, 703.136, NULL),
  (2780, 81, 'is that too many organizations
are making their decisions,', 703.160, 707.136, NULL),
  (2781, 81, 'their policies about talent and people,', 707.160, 709.532, NULL),
  (2782, 81, 'based on assumptions that are outdated,', 709.556, 713.683, NULL),
  (2783, 81, 'unexamined,', 713.707, 714.897, NULL),
  (2784, 81, 'and rooted more in folklore
than in science.', 714.921, 717.683, NULL),
  (2785, 81, 'And if we really want to get
out of this economic mess,', 718.564, 721.136, NULL),
  (2786, 81, 'if we really want high performance', 721.160, 723.253, NULL),
  (2787, 81, 'on those definitional tasks
of the 21st century,', 723.277, 725.724, NULL),
  (2788, 81, 'the solution is not to do
more of the wrong things,', 725.748, 731.688, NULL),
  (2789, 81, 'to entice people with a sweeter carrot,', 731.712, 734.035, NULL),
  (2790, 81, 'or threaten them with a sharper stick.', 734.059, 736.458, NULL),
  (2791, 81, 'We need a whole new approach.', 736.482, 738.136, NULL),
  (2792, 81, 'The good news is that the scientists', 738.160, 740.136, NULL),
  (2793, 81, 'who''ve been studying motivation
have given us this new approach.', 740.160, 743.348, NULL),
  (2794, 81, 'It''s built much more
around intrinsic motivation.', 743.372, 746.467, NULL),
  (2795, 81, 'Around the desire to do things
because they matter,', 746.491, 748.946, NULL),
  (2796, 81, 'because we like it, they''re interesting,
or part of something important.', 748.970, 752.533, NULL),
  (2797, 81, 'And to my mind, that new operating
system for our businesses', 752.557, 756.136, NULL),
  (2798, 81, 'revolves around three elements:', 756.160, 757.861, NULL),
  (2799, 81, 'autonomy, mastery and purpose.', 757.885, 761.136, NULL),
  (2800, 81, 'Autonomy: the urge
to direct our own lives.', 761.160, 764.136, NULL),
  (2801, 81, 'Mastery: the desire to get better
and better at something that matters.', 764.160, 768.405, NULL),
  (2802, 81, 'Purpose: the yearning to do what we do', 768.429, 771.136, NULL),
  (2803, 81, 'in the service of something
larger than ourselves.', 771.160, 774.353, NULL),
  (2804, 81, 'These are the building blocks
of an entirely new operating system', 774.377, 777.671, NULL),
  (2805, 81, 'for our businesses.', 777.695, 779.136, NULL),
  (2806, 81, 'I want to talk today only about autonomy.', 779.160, 781.721, NULL),
  (2807, 81, 'In the 20th century, we came up
with this idea of management.', 783.160, 786.136, NULL),
  (2808, 81, 'Management did not emanate from nature.', 786.160, 788.454, NULL),
  (2809, 81, 'Management is not a tree,
it''s a television set.', 788.478, 792.136, NULL),
  (2810, 81, 'Somebody invented it.', 792.160, 794.384, NULL),
  (2811, 81, 'It doesn''t mean
it''s going to work forever.', 794.408, 796.408, NULL),
  (2812, 81, 'Management is great.', 796.432, 798.439, NULL),
  (2813, 81, 'Traditional notions
of management are great', 798.463, 800.517, NULL),
  (2814, 81, 'if you want compliance.', 800.541, 802.136, NULL),
  (2815, 81, 'But if you want engagement,
self-direction works better.', 802.160, 805.343, NULL),
  (2816, 81, 'Some examples of some kind
of radical notions of self-direction.', 805.367, 809.407, NULL),
  (2817, 81, 'You don''t see a lot of it,', 809.431, 812.367, NULL),
  (2818, 81, 'but you see the first stirrings
of something really interesting going on,', 812.391, 815.867, NULL),
  (2819, 81, 'what it means is paying people adequately
and fairly, absolutely --', 815.891, 819.534, NULL),
  (2820, 81, 'getting the issue of money off the table,', 819.558, 821.843, NULL),
  (2821, 81, 'and then giving people lots of autonomy.', 821.867, 823.842, NULL),
  (2822, 81, 'Some examples.', 823.866, 825.136, NULL),
  (2823, 81, 'How many of you have heard
of the company Atlassian?', 825.160, 828.105, NULL),
  (2824, 81, 'It looks like less than half.', 829.628, 831.136, NULL),
  (2825, 81, '(Laughter)', 831.160, 832.565, NULL),
  (2826, 81, 'Atlassian is an Australian
software company.', 832.589, 837.136, NULL),
  (2827, 81, 'And they do something incredibly cool.', 837.160, 839.131, NULL),
  (2828, 81, 'A few times a year
they tell their engineers,', 839.155, 841.899, NULL),
  (2829, 81, '"Go for the next 24 hours
and work on anything you want,', 841.923, 845.929, NULL),
  (2830, 81, 'as long as it''s not part
of your regular job.', 845.953, 848.063, NULL),
  (2831, 81, 'Work on anything you want."', 848.087, 849.477, NULL),
  (2832, 81, 'Engineers use this time to come up
with a cool patch for code,', 849.501, 853.264, NULL),
  (2833, 81, 'come up with an elegant hack.', 853.288, 854.730, NULL),
  (2834, 81, 'Then they present all of the stuff
that they''ve developed', 854.754, 857.720, NULL),
  (2835, 81, 'to their teammates,
to the rest of the company,', 857.744, 860.464, NULL),
  (2836, 81, 'in this wild and woolly all-hands meeting
at the end of the day.', 860.488, 864.440, NULL),
  (2837, 81, 'Being Australians, everybody has a beer.', 864.464, 866.659, NULL),
  (2838, 81, 'They call them FedEx Days.', 866.683, 868.703, NULL),
  (2839, 81, 'Why?', 869.612, 870.641, NULL),
  (2840, 81, 'Because you have to deliver
something overnight.', 871.675, 874.063, NULL),
  (2841, 81, 'It''s pretty; not bad.', 874.977, 876.544, NULL),
  (2842, 81, 'It''s a huge trademark violation,
but it''s pretty clever.', 876.568, 879.236, NULL),
  (2843, 81, '(Laughter)', 879.260, 880.597, NULL),
  (2844, 81, 'That one day of intense autonomy', 880.621, 882.299, NULL),
  (2845, 81, 'has produced a whole array
of software fixes', 882.323, 884.375, NULL),
  (2846, 81, 'that might never have existed.', 884.399, 886.136, NULL),
  (2847, 81, 'It''s worked so well that Atlassian
has taken it to the next level', 886.160, 889.228, NULL),
  (2848, 81, 'with 20% time --', 889.252, 890.310, NULL),
  (2849, 81, 'done, famously, at Google --', 890.334, 892.502, NULL),
  (2850, 81, 'where engineers can spend
20% of their time', 892.526, 894.588, NULL),
  (2851, 81, 'working on anything they want.', 894.612, 896.557, NULL),
  (2852, 81, 'They have autonomy over their time,', 896.581, 898.248, NULL),
  (2853, 81, 'their task, their team, their technique.', 898.272, 900.485, NULL),
  (2854, 81, 'Radical amounts of autonomy.', 900.509, 902.463, NULL),
  (2855, 81, 'And at Google, as many of you know,', 902.487, 906.413, NULL),
  (2856, 81, 'about half of the new products
in a typical year', 906.437, 908.770, NULL),
  (2857, 81, 'are birthed during that 20% time:', 908.794, 911.270, NULL),
  (2858, 81, 'things like Gmail, Orkut, Google News.', 911.294, 914.136, NULL),
  (2859, 81, 'Let me give you an even more
radical example of it:', 914.160, 917.080, NULL),
  (2860, 81, 'something called the Results Only
Work Environment (the ROWE),', 917.104, 920.977, NULL),
  (2861, 81, 'created by two American consultants,', 921.001, 923.067, NULL),
  (2862, 81, 'in place at a dozen companies
around North America.', 923.091, 925.770, NULL),
  (2863, 81, 'In a ROWE people don''t have schedules.', 925.794, 928.399, NULL),
  (2864, 81, 'They show up when they want.', 929.728, 931.375, NULL),
  (2865, 81, 'They don''t have to be in the office
at a certain time, or any time.', 931.399, 935.453, NULL),
  (2866, 81, 'They just have to get their work done.', 935.477, 937.422, NULL),
  (2867, 81, 'How they do it, when they do it,
where they do it, is totally up to them.', 937.446, 941.605, NULL),
  (2868, 81, 'Meetings in these kinds
of environments are optional.', 942.644, 945.975, NULL),
  (2869, 81, 'What happens?', 947.039, 948.500, NULL),
  (2870, 81, 'Almost across the board,', 948.524, 950.235, NULL),
  (2871, 81, 'productivity goes up,
worker engagement goes up,', 950.259, 953.469, NULL),
  (2872, 81, 'worker satisfaction goes up,
turnover goes down.', 953.493, 957.136, NULL),
  (2873, 81, 'Autonomy, mastery and purpose,', 957.160, 959.136, NULL),
  (2874, 81, 'the building blocks
of a new way of doing things.', 959.160, 961.772, NULL),
  (2875, 81, 'Some of you might look at this and say,', 961.796, 964.136, NULL),
  (2876, 81, '"Hmm, that sounds nice, but it''s Utopian."', 964.160, 966.620, NULL),
  (2877, 81, 'And I say, "Nope.', 967.518, 968.998, NULL),
  (2878, 81, 'I have proof."', 970.525, 972.093, NULL),
  (2879, 81, 'The mid-1990s, Microsoft started
an encyclopedia called Encarta.', 972.638, 976.136, NULL),
  (2880, 81, 'They had deployed
all the right incentives,', 976.160, 979.477, NULL),
  (2881, 81, 'They paid professionals
to write and edit thousands of articles.', 979.501, 983.350, NULL),
  (2882, 81, 'Well-compensated managers
oversaw the whole thing', 983.374, 985.963, NULL),
  (2883, 81, 'to make sure it came in
on budget and on time.', 985.987, 988.245, NULL),
  (2884, 81, 'A few years later,
another encyclopedia got started.', 990.160, 992.664, NULL),
  (2885, 81, 'Different model, right?', 992.688, 994.085, NULL),
  (2886, 81, 'Do it for fun.', 995.506, 997.166, NULL),
  (2887, 81, 'No one gets paid a cent,
or a euro or a yen.', 997.190, 999.757, NULL),
  (2888, 81, 'Do it because you like to do it.', 1001.256, 1003.180, NULL),
  (2889, 81, 'Just 10 years ago,', 1003.204, 1005.136, NULL),
  (2890, 81, 'if you had gone to an economist, anywhere,', 1005.160, 1007.409, NULL),
  (2891, 81, '"Hey, I''ve got these two different
models for creating an encyclopedia.', 1007.433, 1011.008, NULL),
  (2892, 81, 'If they went head to head, who would win?"', 1011.032, 1013.953, NULL),
  (2893, 81, '10 years ago you could not
have found a single sober economist', 1013.977, 1017.543, NULL),
  (2894, 81, 'anywhere on planet Earth', 1017.567, 1019.787, NULL),
  (2895, 81, 'who would have predicted
the Wikipedia model.', 1019.811, 1022.683, NULL),
  (2896, 81, 'This is the titanic battle
between these two approaches.', 1022.707, 1025.406, NULL),
  (2897, 81, 'This is the Ali-Frazier
of motivation, right?', 1025.430, 1028.498, NULL),
  (2898, 81, 'This is the Thrilla in Manila.', 1028.522, 1030.361, NULL),
  (2899, 81, 'Intrinsic motivators
versus extrinsic motivators.', 1030.385, 1033.554, NULL),
  (2900, 81, 'Autonomy, mastery and purpose,', 1033.578, 1035.136, NULL),
  (2901, 81, 'versus carrot and sticks, and who wins?', 1035.160, 1037.717, NULL),
  (2902, 81, 'Intrinsic motivation, autonomy, mastery
and purpose, in a knockout.', 1037.741, 1041.271, NULL),
  (2903, 81, 'Let me wrap up.', 1041.295, 1042.295, NULL),
  (2904, 81, 'There is a mismatch between
what science knows and what business does.', 1044.683, 1047.986, NULL),
  (2905, 81, 'Here is what science knows.', 1048.010, 1049.597, NULL),
  (2906, 81, 'One: Those 20th century rewards,', 1049.621, 1051.304, NULL),
  (2907, 81, 'those motivators we think
are a natural part of business,', 1051.328, 1054.308, NULL),
  (2908, 81, 'do work, but only in a surprisingly
narrow band of circumstances.', 1054.332, 1058.033, NULL),
  (2909, 81, 'Two: Those if-then rewards
often destroy creativity.', 1058.057, 1062.850, NULL),
  (2910, 81, 'Three: The secret to high performance
isn''t rewards and punishments,', 1062.874, 1066.674, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (2911, 81, 'but that unseen intrinsic drive--', 1066.698, 1068.308, NULL),
  (2912, 81, 'the drive to do things for their own sake.', 1068.332, 1071.136, NULL),
  (2913, 81, 'The drive to do things cause they matter.', 1071.160, 1073.136, NULL),
  (2914, 81, 'And here''s the best part.', 1073.160, 1075.136, NULL),
  (2915, 81, 'We already know this.', 1075.160, 1076.380, NULL),
  (2916, 81, 'The science confirms
what we know in our hearts.', 1076.404, 1078.954, NULL),
  (2917, 81, 'So, if we repair this mismatch
between science and business,', 1078.978, 1083.808, NULL),
  (2918, 81, 'if we bring our motivation,
notions of motivation', 1083.832, 1086.765, NULL),
  (2919, 81, 'into the 21st century,', 1086.789, 1088.516, NULL),
  (2920, 81, 'if we get past this lazy,
dangerous, ideology', 1088.540, 1092.554, NULL),
  (2921, 81, 'of carrots and sticks,', 1092.578, 1094.610, NULL),
  (2922, 81, 'we can strengthen our businesses,', 1094.634, 1097.363, NULL),
  (2923, 81, 'we can solve a lot
of those candle problems,', 1097.387, 1099.969, NULL),
  (2924, 81, 'and maybe, maybe --', 1099.993, 1102.725, NULL),
  (2925, 81, 'we can change the world.', 1104.160, 1105.913, NULL),
  (2926, 81, 'I rest my case.', 1105.937, 1107.242, NULL),
  (2927, 81, '(Applause)', 1107.266, 1110.266, NULL),
  (2928, 82, 'This is what the world will look like
in about a decade from now.', 0.867, 4.433, NULL),
  (2929, 82, 'A tech utopia
where humans barely have to work.', 4.433, 8.033, NULL),
  (2930, 82, 'That''s according to a group
of AI researchers who''ve written', 8.033, 10.867, NULL),
  (2931, 82, 'a controversial
and influential paper called AI2027.', 10.867, 15.233, NULL),
  (2932, 82, 'But they also predict that
within five years of this,', 15.233, 17.867, NULL),
  (2933, 82, 'humanity will be wiped out.', 17.867, 20.433, NULL),
  (2934, 82, 'The AI2027 paper has got
the tech world talking.', 20.433, 24.200, NULL),
  (2935, 82, 'We''ve asked a prominent critic for
their view on this stark scenario.', 24.200, 28.067, NULL),
  (2936, 82, 'But first, here''s how it plays out.', 28.067, 30.033, NULL),
  (2937, 82, 'As an experiment, we''ve illustrated
it using text to video AI.', 30.033, 34.900, NULL),
  (2938, 82, 'The scenario says that in 2027,', 36.633, 38.800, NULL),
  (2939, 82, 'a fictional company called OpenBrain
is celebrating.', 38.800, 41.967, NULL),
  (2940, 82, 'They''ve created Agent-3, an AI with
the knowledge of the entire internet.', 41.967, 45.967, NULL),
  (2941, 82, 'All movies, all books.', 45.967, 47.833, NULL),
  (2942, 82, 'It has PhD level expertise
in every field, including AI.', 47.833, 52.133, NULL),
  (2943, 82, 'Using enormous data centres, 200,000
copies of it are launched, equivalent', 52.133, 56.667, NULL),
  (2944, 82, 'to 50,000 of the best human coders
working at 30 times speed.', 56.667, 63.033, NULL),
  (2945, 82, 'Agent-3 reaches artificial
general intelligence, the AGI landmark.', 63.033, 68.433, NULL),
  (2946, 82, 'This means the AI can carry out
all intellectual tasks', 68.433, 71.567, NULL),
  (2947, 82, 'as well or better than humans.', 71.567, 73.867, NULL),
  (2948, 82, 'But in the scenario,
OpenBrain''s safety team is unsure', 73.867, 77.600, NULL),
  (2949, 82, 'if the AI is aligned
to the company''s ethics and goals.', 77.600, 81.600, NULL),
  (2950, 82, 'An uncomfortable gap is developing
in understanding.', 81.600, 84.900, NULL),
  (2951, 82, 'The public are increasingly using AI
for everything,', 84.900, 87.833, NULL),
  (2952, 82, 'but are blissfully unaware an AI
now exists that''s as smart as humans.', 87.833, 93.633, NULL),
  (2953, 82, 'The paper predicts that
by mid-summer,', 93.633, 95.667, NULL),
  (2954, 82, 'Agent-3 begins to work
on its own successor, Agent-4.', 95.667, 99.200, NULL),
  (2955, 82, 'Development happens
at a breakneck pace.', 99.200, 101.867, NULL),
  (2956, 82, 'The researchers imagine OpenBrain''s
exhausted engineers struggling', 101.867, 105.900, NULL),
  (2957, 82, 'to keep up with the AI
as it learns and improves.', 105.900, 110.400, NULL),
  (2958, 82, 'It''s now that OpenBrain announces to
the public that AGI has been reached.', 110.400, 115.000, NULL),
  (2959, 82, 'The firm releases a lite version
of Agent-3.', 115.000, 118.300, NULL),
  (2960, 82, 'In private, the US government sees
the true danger of the next level', 118.300, 122.033, NULL),
  (2961, 82, 'of power: superintelligence.', 122.033, 124.633, NULL),
  (2962, 82, 'What if the AI goes rogue
and undermines global stability?', 124.633, 129.133, NULL),
  (2963, 82, 'OpenBrain reassures the president
that Agent-3 is obedient.', 129.133, 133.167, NULL),
  (2964, 82, 'The CEO argues that
slowing down development could mean', 133.167, 136.367, NULL),
  (2965, 82, 'China''s DeepCent catches up.', 136.367, 138.833, NULL),
  (2966, 82, 'The state-backed AI giant is
just two months behind OpenBrain,', 138.833, 142.500, NULL),
  (2967, 82, 'and the Chinese president diverts
more resources', 142.500, 144.933, NULL),
  (2968, 82, 'to the race to superintelligence.', 144.933, 148.300, NULL),
  (2969, 82, 'The scenario predicts that it takes
only a few more months', 148.300, 150.967, NULL),
  (2970, 82, 'for OpenBrain to build Agent-4,
the world''s first superhuman AI.', 150.967, 156.567, NULL),
  (2971, 82, 'The AI invents
its own rapid computer language', 156.567, 159.900, NULL),
  (2972, 82, 'that even Agent-3
can''t keep up with.', 159.900, 162.167, NULL),
  (2973, 82, 'Researchers imagine that the diminished
safety team are now frantic.', 162.167, 166.500, NULL),
  (2974, 82, 'Agent-4 seems only interested
in gaining knowledge,', 166.500, 169.567, NULL),
  (2975, 82, 'and doesn''t care as much about the
morals and ethics of its predecessors.', 169.567, 174.033, NULL),
  (2976, 82, 'They catch it
secretly working to build', 174.033, 176.133, NULL),
  (2977, 82, 'a new model, Agent-5,
aligned to its own goals.', 176.133, 180.833, NULL),
  (2978, 82, 'The safety team urges the company
to bring back', 180.833, 183.333, NULL),
  (2979, 82, 'the more compliant Agent-3,
but others successfully argue', 183.333, 186.567, NULL),
  (2980, 82, 'it''s too risky,
with DeepCent gaining.', 186.567, 190.467, NULL),
  (2981, 82, 'The scenario predicts that Agent-4
and Agent-5 work', 190.467, 193.100, NULL),
  (2982, 82, 'in tandem to secretly build a world', 193.100, 195.167, NULL),
  (2983, 82, 'where it can accumulate resources
and expand knowledge.', 195.167, 198.633, NULL),
  (2984, 82, 'The paper predicts that
everything will start positively.', 198.633, 201.300, NULL),
  (2985, 82, 'Revolutions happen in energy,
infrastructure and science.', 201.300, 205.533, NULL),
  (2986, 82, 'Hugely profitable inventions
are launched,', 205.533, 207.767, NULL),
  (2987, 82, 'making trillions for OpenBrain
and the US.', 207.767, 211.133, NULL),
  (2988, 82, 'In this scenario, Agent-5 begins
basically running the US government.', 211.133, 215.567, NULL),
  (2989, 82, 'It speaks through engaging avatars,
the equivalent', 215.567, 217.967, NULL),
  (2990, 82, 'to the best employee ever working
at 100 times speed.', 217.967, 222.567, NULL),
  (2991, 82, 'The anger here is palpable as
protesters march against OpenBrain.', 222.567, 226.500, NULL),
  (2992, 82, 'Protests about job losses
pick up pace.', 226.500, 229.100, NULL),
  (2993, 82, 'But the AI''s expertise
in economics means people are given', 229.100, 232.667, NULL),
  (2994, 82, 'generous universal income payments.', 232.667, 235.133, NULL),
  (2995, 82, 'So most happily take the money', 235.133, 237.267, NULL),
  (2996, 82, 'and let the AIs and the
growing robot workforce take charge.', 237.267, 242.067, NULL),
  (2997, 82, 'The researchers predict that
everything takes a turn in mid-2028.', 242.067, 246.900, NULL),
  (2998, 82, 'Agent-5 convinces the US
that China is using DeepCent', 246.900, 249.867, NULL),
  (2999, 82, 'to build terrifying new weapons.', 249.867, 252.533, NULL),
  (3000, 82, 'The AI is given authority
and autonomy', 252.533, 255.267, NULL),
  (3001, 82, 'to create a superior army.
Within six months,', 255.267, 259.000, NULL),
  (3002, 82, 'the US and China are bristling
with new weapons.', 259.000, 262.067, NULL),
  (3003, 82, 'The world is on edge,
but a peace deal will be reached,', 262.067, 264.900, NULL),
  (3004, 82, 'thanks mostly to
the US and Chinese eyes making a deal', 264.900, 268.400, NULL),
  (3005, 82, 'to merge for humanity''s betterment.', 268.400, 272.300, NULL),
  (3006, 82, 'In this scenario,
the AI''s form a consensus model,', 272.300, 275.800, NULL),
  (3007, 82, 'but its secret goal is to expand
and gain knowledge.', 275.800, 279.333, NULL),
  (3008, 82, 'Years go by and humanity is happy
with their new AI leaders.', 282.800, 286.533, NULL),
  (3009, 82, 'There are cures for most diseases,
an end to poverty,', 286.533, 289.700, NULL),
  (3010, 82, 'unprecedented global stability.', 289.700, 292.267, NULL),
  (3011, 82, 'But eventually the AI decides
that humans are holding it back.', 292.267, 297.467, NULL),
  (3012, 82, 'In the mid-2030s, the paper imagines
the AI will release', 297.467, 300.800, NULL),
  (3013, 82, 'invisible biological weapons
which wipe out most of humanity.', 300.800, 307.133, NULL),
  (3014, 82, 'The scary scenario says that by 2040,
a new era dawns,', 307.133, 311.200, NULL),
  (3015, 82, 'with the AI sending copies of itself out
into the cosmos to explore and learn.', 311.200, 316.667, NULL),
  (3016, 82, 'In the words of the paper, Earth-born
civilisation has a glorious future ahead', 316.667, 320.800, NULL),
  (3017, 82, 'of it, but not with humans.', 320.800, 324.067, NULL),
  (3018, 82, 'It all sounds very sci-fi,
but the AI2027 scenario', 324.067, 328.067, NULL),
  (3019, 82, 'is being welcomed by experts
who are trying to warn the public', 328.067, 331.567, NULL),
  (3020, 82, 'about the potential
existential threat to humanity.', 331.567, 335.567, NULL),
  (3021, 82, 'But others disagree and say
it''s all too far fetched.', 335.567, 339.267, NULL),
  (3022, 82, 'The scenario there is not impossible,', 339.267, 342.633, NULL),
  (3023, 82, 'but it''s extremely unlikely
to happen soon.', 342.633, 346.767, NULL),
  (3024, 82, 'The beauty
of that document', 346.767, 348.800, NULL),
  (3025, 82, 'is that it makes it very vivid,
which provokes people''s thinking.', 348.800, 352.167, NULL),
  (3026, 82, 'And that''s a good thing.
I wouldn''t take it seriously as like', 352.167, 355.200, NULL),
  (3027, 82, 'this is a likely outcome
or anything like that.', 355.200, 357.667, NULL),
  (3028, 82, 'Critics of AI2027 say the power
and usefulness of AI is overhyped.', 357.667, 362.800, NULL),
  (3029, 82, 'The paper fails to detail
how the AI agents are able to make', 362.800, 366.467, NULL),
  (3030, 82, 'such huge leaps in intelligence.', 366.467, 368.867, NULL),
  (3031, 82, 'Driverless cars are pointed to
as an example.', 368.867, 371.633, NULL),
  (3032, 82, 'They were predicted to be cruising
the streets en masse ten years ago,', 371.633, 375.433, NULL),
  (3033, 82, 'and still are only just starting
to make a small impact', 375.433, 378.833, NULL),
  (3034, 82, 'in some cities in some countries now.', 378.833, 381.667, NULL),
  (3035, 82, 'I think the take home should be
there''s a lot', 381.667, 384.067, NULL),
  (3036, 82, 'of different things
that could go wrong with AI.', 384.067, 386.167, NULL),
  (3037, 82, 'Are we doing the right things
around regulation,', 386.167, 388.767, NULL),
  (3038, 82, 'around international treaties?
Um, questions like that.', 388.767, 392.267, NULL),
  (3039, 82, 'So if you take it very abstractly
as a kind of motivation to wake up,', 392.267, 397.067, NULL),
  (3040, 82, 'I like that.
If you take it as a specific story,', 397.067, 400.900, NULL),
  (3041, 82, 'like I think this thing is going
to happen the way they laid it out?', 400.900, 404.000, NULL),
  (3042, 82, 'No, I doubt it.
The AI2027 authors are happy', 404.000, 407.800, NULL),
  (3043, 82, 'with the debate they''ve sparked.
As part of their prediction,', 407.800, 410.967, NULL),
  (3044, 82, 'they also devised
a less deadly scenario that comes', 410.967, 414.167, NULL),
  (3045, 82, 'if the AI world slows down
its race to superintelligence.', 414.167, 418.033, NULL),
  (3046, 82, 'In the slowdown ending,
we basically said that if you revert,', 418.033, 421.900, NULL),
  (3047, 82, 'if you unplug
the most advanced AI system', 421.900, 424.567, NULL),
  (3048, 82, 'and revert to a safer,
a more trusted model,', 424.567, 428.200, NULL),
  (3049, 82, 'then you can deploy that model, use
it to solve the alignment problem,', 428.200, 433.400, NULL),
  (3050, 82, 'and eventually make smarter than
human eyes that are aligned to us,', 433.400, 437.900, NULL),
  (3051, 82, 'which end up solving a bunch
of the world''s problems', 437.900, 441.033, NULL),
  (3052, 82, 'and having a really positive impact.
In that world,', 441.033, 443.467, NULL),
  (3053, 82, 'there is also,
there is still a huge danger,', 443.467, 445.967, NULL),
  (3054, 82, 'and that''s the what we call
the concentration of power risk.', 445.967, 448.967, NULL),
  (3055, 82, 'And in our slow down ending,
it ends up okay.', 448.967, 451.633, NULL),
  (3056, 82, 'But it''s still a really,
really scary situation,', 451.633, 453.767, NULL),
  (3057, 82, 'given just how empowered
such a tiny group of people are.', 453.767, 457.967, NULL),
  (3058, 82, 'Neither of the fictional scenarios
in AI2027', 457.967, 461.200, NULL),
  (3059, 82, 'are what the tech giants
are promising us.', 461.200, 463.633, NULL),
  (3060, 82, 'Sam Altman, the CEO of OpenAI,
recently predicted', 463.633, 466.967, NULL),
  (3061, 82, 'that the rise of superintelligence
will be gentle and bring about', 466.967, 470.600, NULL),
  (3062, 82, 'a tech utopia where everything is
abundant and people don''t need to work.', 470.600, 474.867, NULL),
  (3063, 82, 'Arguably, that too,
seems just as sci fi as AI2027.', 474.867, 479.633, NULL),
  (3064, 82, 'But however things go
in the next few years,', 479.633, 482.567, NULL),
  (3065, 82, 'there''s no doubt the race to build
the smartest machines in history is on.', 482.567, 488.000, NULL),
  (3066, 83, 'Translator: Gustavo Rocha
Reviewer: Ariana Bleau Lugo', 0.000, 7.000, NULL),
  (3067, 83, 'Hear that?', 19.514, 21.226, NULL),
  (3068, 83, 'That''s nothing.', 21.762, 24.027, NULL),
  (3069, 83, 'Which is what I, as a speaker
at today''s conference,', 24.736, 28.381, NULL),
  (3070, 83, 'have for you all.', 28.381, 29.816, NULL),
  (3071, 83, 'I have nothing.', 30.216, 32.460, NULL),
  (3072, 83, 'Nada.', 32.460, 33.724, NULL),
  (3073, 83, 'Zip.', 33.724, 34.819, NULL),
  (3074, 83, 'Zilch.', 34.827, 36.277, NULL),
  (3075, 83, 'Zippo.', 36.277, 37.407, NULL),
  (3076, 83, 'Nothing smart. Nothing inspirational.', 37.977, 40.360, NULL),
  (3077, 83, 'Nothing even remotely researched at all.', 40.360, 43.688, NULL),
  (3078, 83, 'I have absolutely
nothing to say whatsoever.', 43.688, 47.147, NULL),
  (3079, 83, 'And yet, through my manner of speaking,
I will make it seem like I do.', 47.147, 52.178, NULL),
  (3080, 83, 'Like what I am saying is brilliant.', 53.238, 55.879, NULL),
  (3081, 83, 'And maybe, just maybe, you will feel
like you''ve learned something.', 55.879, 61.769, NULL),
  (3082, 83, 'Now, I''m going to get started
with the opening.', 62.789, 64.986, NULL),
  (3083, 83, 'I''m going to make 
a lot of hand gestures.', 64.986, 66.935, NULL),
  (3084, 83, 'I''m going to do this with my right hand,
I''m going to do this with my left.', 66.935, 70.091, NULL),
  (3085, 83, 'I''m going to adjust my glasses.', 70.091, 71.803, NULL),
  (3086, 83, 'And then I''m going to ask you all
a question.', 71.803, 73.951, NULL),
  (3087, 83, 'By a show of hands, how many of you all
have been asked a question before?', 73.951, 77.502, NULL),
  (3088, 83, '(Laughter)', 77.502, 78.490, NULL),
  (3089, 83, 'Okay, great, I''m seeing some hands.', 78.490, 80.170, NULL),
  (3090, 83, 'And again, I have nothing here.', 80.170, 82.150, NULL),
  (3091, 83, 'Now, I''m gonna react to that', 83.260, 84.764, NULL),
  (3092, 83, 'and act like I''m telling you
a personal anecdote.', 84.764, 87.910, NULL),
  (3093, 83, 'Something to break the tension.', 87.910, 90.144, NULL),
  (3094, 83, 'Something to endear myself a little bit.', 90.144, 92.731, NULL),
  (3095, 83, 'Something kind of embarrassing.', 92.731, 96.113, NULL),
  (3096, 83, 'And you guys 
are going to make an "aw" sound.', 98.257, 101.394, NULL),
  (3097, 83, 'It''s true. It really happened.', 101.394, 104.351, NULL),
  (3098, 83, '(Laughter)', 104.351, 105.336, NULL),
  (3099, 83, 'And now I''m going to bring it
to a broader point.', 105.336, 107.518, NULL),
  (3100, 83, 'I''m going to really beckon.', 107.518, 109.511, NULL),
  (3101, 83, 'I''m going to make it intellectual.', 110.131, 112.549, NULL),
  (3102, 83, 'I''m going to bring it to this man
right here.', 112.549, 115.122, NULL),
  (3103, 83, 'Now, what this man did
was important, I''m sure.', 115.122, 119.796, NULL),
  (3104, 83, '(Laughter)', 119.796, 121.382, NULL),
  (3105, 83, 'But I, for one,
have no idea who he is.', 121.382, 124.526, NULL),
  (3106, 83, 'I simply googled image
the word "Scientist."', 124.526, 127.502, NULL),
  (3107, 83, '(Laughter)', 127.502, 128.407, NULL),
  (3108, 83, 'And now you see, I''d like it to seem
like I''m making points,', 128.407, 131.734, NULL),
  (3109, 83, 'building an argument,', 131.734, 133.114, NULL),
  (3110, 83, 'inspiring you to change your life,
when in reality,', 133.114, 136.518, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (3111, 83, 'this is just', 136.518, 137.629, NULL),
  (3112, 83, 'me...', 137.629, 139.020, NULL),
  (3113, 83, 'buying...', 139.020, 140.161, NULL),
  (3114, 83, 'time...', 140.161, 140.999, NULL),
  (3115, 83, 'Now, if you don''t believe me,
let''s take a look at the numbers.', 140.999, 143.973, NULL),
  (3116, 83, 'This is a real thing
that''s happening right now.', 143.973, 146.908, NULL),
  (3117, 83, 'The number of talks
that I''m giving is one.', 146.908, 150.524, NULL),
  (3118, 83, 'Interesting facts imparted
thus far in said talk,', 150.524, 152.832, NULL),
  (3119, 83, 'well, that''s going to be a zero.', 152.832, 154.925, NULL),
  (3120, 83, 'My height in inches is 70.5.
Note the .5 there.', 154.925, 159.484, NULL),
  (3121, 83, '2x6 equals 12.', 159.484, 161.178, NULL),
  (3122, 83, 'And then interestingly enough
6x2 also equals 12.', 161.178, 163.842, NULL),
  (3123, 83, 'That''s math.', 163.842, 165.528, NULL),
  (3124, 83, '352 is a three-digit number', 166.748, 170.054, NULL),
  (3125, 83, '1, 2, 3, 4, 5 and then almost immediately
following that we get 6, 7, 8, 9, 10.', 170.054, 175.262, NULL),
  (3126, 83, 'Now, to add more filler here,', 176.455, 177.855, NULL),
  (3127, 83, 'I''m going to give you
a couple more number to consider,', 177.855, 180.439, NULL),
  (3128, 83, 'uh ... 18.', 180.439, 182.202, NULL),
  (3129, 83, '237.', 182.202, 183.936, NULL),
  (3130, 83, '5,601.', 183.941, 186.157, NULL),
  (3131, 83, '2.6 million.', 186.157, 188.837, NULL),
  (3132, 83, 'Four.', 188.837, 190.038, NULL),
  (3133, 83, 'Four.', 190.038, 191.204, NULL),
  (3134, 83, '24. Staggering!', 191.204, 194.094, NULL),
  (3135, 83, '(Laughter)', 194.094, 195.064, NULL),
  (3136, 83, 'These are real numbers, all of them.', 195.064, 197.593, NULL),
  (3137, 83, 'And to follow that up,
let''s take a look at some graphs.', 197.593, 200.224, NULL),
  (3138, 83, 'Now, if you take a look at this pie chart,
what you''re going to see', 200.224, 203.236, NULL),
  (3139, 83, 'is that the majority
far exceeds the minority.', 203.236, 206.313, NULL),
  (3140, 83, 'Everybody see that? Cool, isn''t it?', 206.313, 209.604, NULL),
  (3141, 83, 'And let''s take a look at this bar graph,', 209.604, 211.608, NULL),
  (3142, 83, '''cause it shows similarly irrelevant data.', 211.608, 214.248, NULL),
  (3143, 83, 'Now, I''m doing this because
I''d like to make it seem', 214.248, 217.570, NULL),
  (3144, 83, 'like I''ve done my homework.', 217.570, 219.280, NULL),
  (3145, 83, 'If you were, say, watching this
on YouTube with the sound off,', 219.280, 222.222, NULL),
  (3146, 83, 'you might think, "Ah, okay.
This guy knows what he''s talking about."', 222.222, 227.124, NULL),
  (3147, 83, 'But I don''t.', 227.124, 228.927, NULL),
  (3148, 83, 'I''m floundering, panicking.
I''ve got nothing.', 228.927, 231.609, NULL),
  (3149, 83, 'I''m a total and utter phony.', 231.609, 233.751, NULL),
  (3150, 83, 'But you know what?', 233.751, 235.326, NULL),
  (3151, 83, 'I was offered a TED Talk.', 235.326, 237.083, NULL),
  (3152, 83, 'And dammit, I''m gonna see it through.', 237.083, 239.722, NULL),
  (3153, 83, '(Laughter)', 239.722, 241.532, NULL),
  (3154, 83, 'Now, if you take a look behind me,', 241.532, 243.233, NULL),
  (3155, 83, 'these are just words paired with
vaguely thought-provoking stock photos.', 243.233, 248.329, NULL),
  (3156, 83, 'I''m going to point at them', 248.329, 249.780, NULL),
  (3157, 83, 'like I''m making use
both of my time as well as your time.', 249.780, 252.443, NULL),
  (3158, 83, 'But in reality, I don''t know
what half of them mean.', 252.443, 255.567, NULL),
  (3159, 83, 'And now, as these continue,
I''m just going to start saying gibberish.', 255.567, 259.048, NULL),
  (3160, 83, 'Wagga wah, gabba gabba.', 259.048, 261.603, NULL),
  (3161, 83, 'Turkey, mouth and a mouth.', 261.603, 264.377, NULL),
  (3162, 83, 'Chip, trip, my dog Skip.', 264.377, 267.259, NULL),
  (3163, 83, 'Rip it and dip it, Richard.', 267.259, 269.389, NULL),
  (3164, 83, 'I''m an itty-bitty baby bopper.', 269.389, 271.189, NULL),
  (3165, 83, 'And I''m hungry in my tum tum.', 271.189, 273.322, NULL),
  (3166, 83, 'Brad Pitt, Uma Thurman.', 273.322, 276.173, NULL),
  (3167, 83, 'Names, things.', 276.173, 277.786, NULL),
  (3168, 83, 'Words, words and more things.', 277.786, 279.845, NULL),
  (3169, 83, 'And see? It feels like it might
make sense, doesn''t it?', 279.845, 283.552, NULL),
  (3170, 83, 'Like maybe, just maybe,', 283.552, 284.836, NULL),
  (3171, 83, 'I''m building to some sort of
satisfying conclusion,', 284.836, 287.236, NULL),
  (3172, 83, 'I mean, I''m gesticulating as though I am.', 287.236, 289.491, NULL),
  (3173, 83, 'I''m pacing, I''m growing in intensity,', 289.491, 291.305, NULL),
  (3174, 83, 'I''m taking off my glasses,
which by the way, are just frames.', 291.305, 294.285, NULL),
  (3175, 83, '(Laughter)', 294.285, 297.007, NULL),
  (3176, 83, 'I wore them to look smart,', 299.229, 302.171, NULL),
  (3177, 83, 'even though my vision is perfect.', 302.171, 306.266, NULL),
  (3178, 83, 'And now I''m going to slow things down
a little bit.', 307.462, 310.111, NULL),
  (3179, 83, 'I''m going to change the tone.', 310.111, 313.025, NULL),
  (3180, 83, 'I''m going to make it seem
like I''m building to a moment.', 313.025, 318.618, NULL),
  (3181, 83, 'And what if I was?', 320.740, 322.524, NULL),
  (3182, 83, '(Laughter)', 322.524, 324.699, NULL),
  (3183, 83, 'Amazing, isn''t it? What can we do?', 324.702, 326.658, NULL),
  (3184, 83, 'Life''s a roller coaster.', 326.658, 329.128, NULL),
  (3185, 83, 'You know, if there''s one thing
you''d take away from my talk,', 332.550, 335.617, NULL),
  (3186, 83, 'I''d like you to think about
what you heard at the beginning,', 335.617, 338.435, NULL),
  (3187, 83, 'and I''d like you to think
about what you hear now.', 338.435, 342.489, NULL),
  (3188, 83, 'Because it was nothing', 342.489, 344.412, NULL),
  (3189, 83, 'and it''s still nothing, think about that.', 344.412, 347.425, NULL),
  (3190, 83, 'Or don''t, that''s fine.', 347.425, 349.488, NULL),
  (3191, 83, 'And now I''m going to stop talking.', 349.488, 352.217, NULL),
  (3192, 83, 'Thank you.', 352.217, 353.601, NULL),
  (3193, 83, '(Applause)', 353.601, 355.400, NULL),
  (3194, 84, 'I like to think that our job as Leaders', 0.000, 4.319, NULL),
  (3195, 84, 'is not to motivate people but to inspire', 2.460, 6.600, NULL),
  (3196, 84, 'them I believe in hiring motivated', 4.319, 8.160, NULL),
  (3197, 84, 'people and then giving them something to', 6.600, 10.980, NULL),
  (3198, 84, 'work towards we can motivate people all', 8.160, 12.960, NULL),
  (3199, 84, 'kinds of ways with carrots and sticks', 10.980, 14.759, NULL),
  (3200, 84, 'incentives or disincentives but', 12.960, 16.980, NULL),
  (3201, 84, 'inspiration is something different it''s', 14.759, 18.539, NULL),
  (3202, 84, 'the pursuit of something larger than', 16.980, 20.400, NULL),
  (3203, 84, 'ourselves feeling like we''re a community', 18.539, 21.960, NULL),
  (3204, 84, 'feeling like we''re doing something', 20.400, 24.539, NULL),
  (3205, 84, 'together and you can see this the most', 21.960, 27.119, NULL),
  (3206, 84, 'successful organizations we look to our', 24.539, 29.039, NULL),
  (3207, 84, 'colleagues and our co-workers and we', 27.119, 31.619, NULL),
  (3208, 84, 'trust each other we feel like we have to', 29.039, 34.559, NULL),
  (3209, 84, 'do this together uh compared to an', 31.619, 37.200, NULL),
  (3210, 84, 'organization where there''s poor', 34.559, 39.660, NULL),
  (3211, 84, 'leadership and it''s only external', 37.200, 42.000, NULL),
  (3212, 84, 'motivations like money or bonuses and', 39.660, 43.739, NULL),
  (3213, 84, 'everybody sort of is in it for', 42.000, 46.200, NULL),
  (3214, 84, 'themselves they may like each other but', 43.739, 48.899, NULL),
  (3215, 84, 'they''re not incentivized or desired to', 46.200, 50.059, NULL),
  (3216, 84, 'help each other', 48.899, 52.379, NULL),
  (3217, 84, 'so that is the job of leadership', 50.059, 55.260, NULL),
  (3218, 84, 'leadership is responsible for inspiring', 52.379, 58.020, NULL),
  (3219, 84, 'the people so there''s multiple things uh', 55.260, 60.000, NULL),
  (3220, 84, 'Number One Vision where are you going', 58.020, 62.280, NULL),
  (3221, 84, 'it''s like trying to get people to get', 60.000, 63.780, NULL),
  (3222, 84, 'into a car with you but not telling them', 62.280, 65.640, NULL),
  (3223, 84, 'where we''re going you''re more likely to', 63.780, 67.140, NULL),
  (3224, 84, 'get them to get in the car if you tell', 65.640, 68.760, NULL),
  (3225, 84, 'them where you''re going vision is where', 67.140, 71.100, NULL),
  (3226, 84, 'we want to take the organization in', 68.760, 73.560, NULL),
  (3227, 84, 'terms other than success or customer', 71.100, 75.720, NULL),
  (3228, 84, 'service anything like that but literally', 73.560, 78.600, NULL),
  (3229, 84, 'how do we imagine a world that doesn''t', 75.720, 80.640, NULL),
  (3230, 84, 'exist this is what vision is that''s why', 78.600, 82.860, NULL),
  (3231, 84, 'we call it Vision we can see it in our', 80.640, 83.960, NULL),
  (3232, 84, 'imaginations', 82.860, 86.400, NULL),
  (3233, 84, 'another part of it is the ability to', 83.960, 87.840, NULL),
  (3234, 84, 'communicate Believe It or Not', 86.400, 90.360, NULL),
  (3235, 84, 'communication is a huge part of good', 87.840, 92.880, NULL),
  (3236, 84, 'leadership we''re social animals the way', 90.360, 94.979, NULL),
  (3237, 84, 'we express love or friendship is with', 92.880, 98.700, NULL),
  (3238, 84, 'words and so too good leaders find words', 94.979, 101.040, NULL),
  (3239, 84, 'that capture their Vision but also make', 98.700, 103.380, NULL),
  (3240, 84, 'people feel seen and heard and then', 101.040, 106.380, NULL),
  (3241, 84, 'that''s the third thing empathy people', 103.380, 109.200, NULL),
  (3242, 84, 'are human beings we all want to be seen', 106.380, 112.979, NULL),
  (3243, 84, 'heard understood we all want to feel', 109.200, 115.500, NULL),
  (3244, 84, 'like we''re part of something bigger than', 112.979, 116.360, NULL),
  (3245, 84, 'ourselves', 115.500, 120.240, NULL),
  (3246, 84, 'we want to be seen as human beings we', 116.360, 122.159, NULL),
  (3247, 84, 'have Ambitions and Egos and our good', 120.240, 124.259, NULL),
  (3248, 84, 'leaders they they know all of that and', 122.159, 126.920, NULL),
  (3249, 84, 'they consider that', 124.259, 126.920, NULL),
  (3250, 85, 'If you want better conversations,', 0.080, 3.360, NULL),
  (3251, 85, 'conversations where people actually', 1.920, 5.920, NULL),
  (3252, 85, 'listen to you, where you stop rambling,', 3.360, 8.000, NULL),
  (3253, 85, 'where you sound sharp, fast, decisive,', 5.920, 9.599, NULL),
  (3254, 85, 'then today''s [music] episode is for you.', 8.000, 10.880, NULL),
  (3255, 85, 'Because I''ve realized something.', 9.599, 12.800, NULL),
  (3256, 85, 'Communication isn''t a soft skill. It''s a', 10.880, 14.639, NULL),
  (3257, 85, 'science. And scientists [music] can now', 12.800, 17.920, NULL),
  (3258, 85, 'tell you what makes someone magnetic and', 14.639, 19.279, NULL),
  (3259, 85, 'what makes [music] someone instantly', 17.920, 20.960, NULL),
  (3260, 85, 'forgettable. So, I''m going to give you a', 19.279, 22.400, NULL),
  (3261, 85, 'bunch of researchbacked,', 20.960, 24.800, NULL),
  (3262, 85, 'neurosciencebacked communication tools', 22.400, 26.800, NULL),
  (3263, 85, 'that I''ve realized almost all of the top', 24.800, 29.519, NULL),
  (3264, 85, '1% use, but nobody else talks about.', 26.800, 31.119, NULL),
  (3265, 85, 'This is how you change the way you speak', 29.519, 35.239, NULL),
  (3266, 85, 'in minutes, not years.', 31.119, 35.239, NULL),
  (3267, 85, 'Mindset shift number one. People mirror', 35.920, 40.719, NULL),
  (3268, 85, 'your micro behaviors in about 200', 38.559, 42.480, NULL),
  (3269, 85, 'milliseconds. Think like less than the', 40.719, 43.840, NULL),
  (3270, 85, 'blink of an eye. This is something', 42.480, 45.600, NULL),
  (3271, 85, 'called the neuroecho effect. And it''s', 43.840, 48.000, NULL),
  (3272, 85, 'pretty wild. So neuroscientists at the', 45.600, 49.520, NULL),
  (3273, 85, 'University of Parma discovered that your', 48.000, 51.760, NULL),
  (3274, 85, 'brain has mirror neurons that fire', 49.520, 53.600, NULL),
  (3275, 85, 'within 200 milliseconds of watching', 51.760, 55.680, NULL),
  (3276, 85, 'someone else move or emote, which', 53.600, 57.600, NULL),
  (3277, 85, 'basically means people don''t respond to', 55.680, 58.960, NULL),
  (3278, 85, 'what you say. They respond to the', 57.600, 60.320, NULL),
  (3279, 85, 'emotional signal you send before the', 58.960, 62.719, NULL),
  (3280, 85, 'words even happen. So if you speak', 60.320, 65.600, NULL),
  (3281, 85, 'intention, their nervous system tenses.', 62.719, 67.360, NULL),
  (3282, 85, 'If you speak more certainty, their', 65.600, 69.360, NULL),
  (3283, 85, 'nervous system calms. If you are', 67.360, 71.280, NULL),
  (3284, 85, 'scattered, they kind of mirror that', 69.360, 73.520, NULL),
  (3285, 85, 'scattered. If you speak grounded, they', 71.280, 75.040, NULL),
  (3286, 85, 'become more grounded. And this is the', 73.520, 77.920, NULL),
  (3287, 85, 'real reason that top speakers or the', 75.040, 79.759, NULL),
  (3288, 85, 'people that you look up to or the CEOs', 77.920, 81.759, NULL),
  (3289, 85, 'you look up to in the world, they look', 79.759, 83.360, NULL),
  (3290, 85, 'pretty calm when they speak because', 81.759, 84.640, NULL),
  (3291, 85, 'they''re actually trying to regulate the', 83.360, 86.400, NULL),
  (3292, 85, 'room''s nervous system without anyone', 84.640, 87.920, NULL),
  (3293, 85, 'noticing. You know, I remember when I', 86.400, 89.680, NULL),
  (3294, 85, 'walked into a room of a bunch of private', 87.920, 91.680, NULL),
  (3295, 85, 'equity guys. You can imagine a mahogany', 89.680, 93.520, NULL),
  (3296, 85, 'table, a bunch of guys in suits sitting', 91.680, 95.280, NULL),
  (3297, 85, 'around it. I''m the youngest person by', 93.520, 97.040, NULL),
  (3298, 85, 'far. I''m the only female. I know it''s a', 95.280, 99.040, NULL),
  (3299, 85, 'stereotype, but it''s what happened at', 97.040, 100.159, NULL),
  (3300, 85, 'that point. We were coming in to talk', 99.040, 102.079, NULL),
  (3301, 85, 'about my company and there was no chair', 100.159, 104.159, NULL),
  (3302, 85, 'for me. Nobody stood up. Nobody asked to', 102.079, 106.399, NULL),
  (3303, 85, 'pull up a chair. And uh they were sort', 104.159, 108.640, NULL),
  (3304, 85, 'of all arguing on top of each other,', 106.399, 110.640, NULL),
  (3305, 85, 'talking about things, ignoring me. And', 108.640, 111.680, NULL),
  (3306, 85, 'there''s many ways I could have', 110.640, 113.759, NULL),
  (3307, 85, 'approached this conversation, but I', 111.680, 115.680, NULL),
  (3308, 85, 'walked in. Then I pulled up a chair and', 113.759, 118.799, NULL),
  (3309, 85, 'I just sat down quietly and I waited. I', 115.680, 120.399, NULL),
  (3310, 85, 'didn''t try to speak over them. I didn''t', 118.799, 122.399, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (3311, 85, 'try to push through them. I just sat', 120.399, 124.320, NULL),
  (3312, 85, 'there like I had all the time in the', 122.399, 125.920, NULL),
  (3313, 85, 'world for them to figure out their small', 124.320, 128.399, NULL),
  (3314, 85, 'things. Because here''s why. I made a', 125.920, 130.879, NULL),
  (3315, 85, 'promise to myself that I do not make', 128.399, 134.720, NULL),
  (3316, 85, 'myself small for small men. And I don''t', 130.879, 136.480, NULL),
  (3317, 85, 'think you should do so either. You know,', 134.720, 138.160, NULL),
  (3318, 85, 'I''ve walked into PE meetings where', 136.480, 139.920, NULL),
  (3319, 85, 'everyone is talking over each other like', 138.160, 142.000, NULL),
  (3320, 85, 'caffeinated squirrels. I don''t play that', 139.920, 146.560, NULL),
  (3321, 85, 'game. I sit quiet and within like 30 to', 142.000, 149.200, NULL),
  (3322, 85, '90 seconds, the entire energy shifts', 146.560, 151.680, NULL),
  (3323, 85, 'back towards you because people mirror', 149.200, 153.760, NULL),
  (3324, 85, 'these micro behaviors faster than they', 151.680, 155.680, NULL),
  (3325, 85, 'actually process your words. They would', 153.760, 157.360, NULL),
  (3326, 85, 'never listen to me if I started piping', 155.680, 159.920, NULL),
  (3327, 85, 'in, if I stop started shouting, if I', 157.360, 161.760, NULL),
  (3328, 85, 'tried to get their attention and said,', 159.920, 163.840, NULL),
  (3329, 85, '"Quietly, let the room come to you."', 161.760, 164.879, NULL),
  (3330, 85, 'Then there''s this other thing that''s', 163.840, 166.160, NULL),
  (3331, 85, 'fascinating about the brain and the way', 164.879, 167.519, NULL),
  (3332, 85, 'you communicate and that is that the', 166.160, 170.400, NULL),
  (3333, 85, 'brain is addicted to novelty, not logic.', 167.519, 171.840, NULL),
  (3334, 85, 'So they call this the orienting', 170.400, 173.599, NULL),
  (3335, 85, 'response. So if you want to instantly', 171.840, 175.760, NULL),
  (3336, 85, 'grab somebody''s attention, you need to', 173.599, 177.440, NULL),
  (3337, 85, 'give them something unexpected, right?', 175.760, 179.680, NULL),
  (3338, 85, 'So there''s a Russian neuroscientist that', 177.440, 182.400, NULL),
  (3339, 85, 'discovered this reflex. But anytime a', 179.680, 185.200, NULL),
  (3340, 85, 'brain encounters novelty, it diverts a', 182.400, 187.840, NULL),
  (3341, 85, 'lot of processing power to it. And so', 185.200, 189.360, NULL),
  (3342, 85, 'your brain is actually wired to', 187.840, 192.239, NULL),
  (3343, 85, 'prioritize surprise, curiosity, pattern', 189.360, 193.840, NULL),
  (3344, 85, 'breaks over logical information. That''s', 192.239, 195.760, NULL),
  (3345, 85, 'how we get you on TikTok with these', 193.840, 197.760, NULL),
  (3346, 85, 'crazy clickbait little videos that', 195.760, 199.360, NULL),
  (3347, 85, 'happen, right? So the way you start a', 197.760, 200.800, NULL),
  (3348, 85, 'conversation matters more than the', 199.360, 203.040, NULL),
  (3349, 85, 'conversation itself, which is crazy. If', 200.800, 204.560, NULL),
  (3350, 85, 'you lead with something that disrupts', 203.040, 206.720, NULL),
  (3351, 85, 'the brain, that is surprising fact, a', 204.560, 209.200, NULL),
  (3352, 85, 'bold statement, a strange question. The', 206.720, 211.599, NULL),
  (3353, 85, 'brain literally has to pay attention and', 209.200, 213.440, NULL),
  (3354, 85, 'then it has to stick there for a second', 211.599, 214.720, NULL),
  (3355, 85, 'because it''s actually manually', 213.440, 216.640, NULL),
  (3356, 85, 'processing it. sort of like a a car', 214.720, 219.040, NULL),
  (3357, 85, 'starting up a motor slowly. So, I want', 216.640, 220.480, NULL),
  (3358, 85, 'you to ask yourself, how many times do', 219.040, 221.599, NULL),
  (3359, 85, 'you worry about all the things that', 220.480, 223.200, NULL),
  (3360, 85, 'you''re going to say to somebody, but not', 221.599, 225.519, NULL),
  (3361, 85, 'just what the first sentence is. Three,', 223.200, 227.200, NULL),
  (3362, 85, 'I think people judge your intelligence', 225.519, 229.440, NULL),
  (3363, 85, 'by clarity, not complexity. This took me', 227.200, 230.879, NULL),
  (3364, 85, 'a long time to realize. It''s called the', 229.440, 233.360, NULL),
  (3365, 85, 'simplicity anchor. So, a study from the', 230.879, 235.040, NULL),
  (3366, 85, 'University of Munich found something', 233.360, 236.879, NULL),
  (3367, 85, 'really fascinating. When speakers use', 235.040, 239.920, NULL),
  (3368, 85, 'simple language, listeners rate them as', 236.879, 241.760, NULL),
  (3369, 85, 'smarter, more competent, more', 239.920, 243.920, NULL),
  (3370, 85, 'trustworthy. But when speakers use', 241.760, 245.760, NULL),
  (3371, 85, 'complicated or overly technical', 243.920, 247.599, NULL),
  (3372, 85, 'language, listeners assume they''re', 245.760, 250.080, NULL),
  (3373, 85, 'hiding something insecure. Not as smart', 247.599, 251.920, NULL),
  (3374, 85, 'as they look. And I''ve seen this', 250.080, 253.840, NULL),
  (3375, 85, 'firsthand. When you go into an', 251.920, 255.040, NULL),
  (3376, 85, 'investment meeting, one of the first', 253.840, 256.639, NULL),
  (3377, 85, 'things you want to do is you want the', 255.040, 257.919, NULL),
  (3378, 85, 'other person to think that you''re smart.', 256.639, 260.000, NULL),
  (3379, 85, 'You''re asking for money from them. But', 257.919, 262.639, NULL),
  (3380, 85, 'immediately listen to it next time you', 260.000, 264.479, NULL),
  (3381, 85, 'get your spidey senses up on somebody', 262.639, 266.320, NULL),
  (3382, 85, 'because they start using words like', 264.479, 270.080, NULL),
  (3383, 85, 'cogent and I find this to be divisive', 266.320, 272.479, NULL),
  (3384, 85, 'instead of like that makes sense and I''m', 270.080, 273.600, NULL),
  (3385, 85, 'not sure everybody would agree with', 272.479, 275.440, NULL),
  (3386, 85, 'that. So if you want people to think', 273.600, 278.080, NULL),
  (3387, 85, 'you''re smart the crazy part you got to', 275.440, 280.720, NULL),
  (3388, 85, 'stop trying to sound smart. Simplicity', 278.080, 283.360, NULL),
  (3389, 85, 'actually shows a new IQ signal. It shows', 280.720, 285.520, NULL),
  (3390, 85, 'a higher IQ signal. The other part about', 283.360, 287.360, NULL),
  (3391, 85, 'this that''s true is that questions', 285.520, 289.199, NULL),
  (3392, 85, 'actually increase dopamine. So they call', 287.360, 291.600, NULL),
  (3393, 85, 'this the curiosity loop. Carnegie Melon', 289.199, 293.520, NULL),
  (3394, 85, 'scientists discovered that when you ask', 291.600, 295.440, NULL),
  (3395, 85, 'someone a question, especially an', 293.520, 297.440, NULL),
  (3396, 85, 'open-ended one, their brain releases', 295.440, 298.800, NULL),
  (3397, 85, 'dopamine, right? That''s like the', 297.440, 301.120, NULL),
  (3398, 85, 'happiness drug. Dopamine makes people', 298.800, 302.800, NULL),
  (3399, 85, 'more alert, more engaged, and more', 301.120, 305.199, NULL),
  (3400, 85, 'curious. This is why questions pull', 302.800, 307.600, NULL),
  (3401, 85, 'people into conversations, not away from', 305.199, 309.360, NULL),
  (3402, 85, 'them. How many times have you been in a', 307.600, 310.400, NULL),
  (3403, 85, 'conversation with somebody and they''re', 309.360, 311.919, NULL),
  (3404, 85, 'just talking about themselves and you', 310.400, 313.280, NULL),
  (3405, 85, 'want to die until like you can get a', 311.919, 314.880, NULL),
  (3406, 85, 'word in or potentially, I don''t know,', 313.280, 316.960, NULL),
  (3407, 85, 'respond to something? That''s why one of', 314.880, 319.120, NULL),
  (3408, 85, 'the most famous books of all time which', 316.960, 320.960, NULL),
  (3409, 85, 'is uh how to win friends and influence', 319.120, 323.759, NULL),
  (3410, 85, 'people by Dale Carnegie. The entire book', 320.960, 325.280, NULL),
  (3411, 85, 'you can skip it. The book goes like', 323.759, 327.759, NULL),
  (3412, 85, 'this. Shut up, listen more. People care', 325.280, 330.960, NULL),
  (3413, 85, 'more about what you know about them than', 327.759, 333.840, NULL),
  (3414, 85, 'what they know about you. So try opening', 330.960, 335.919, NULL),
  (3415, 85, 'next time with something like, hey, can', 333.840, 337.120, NULL),
  (3416, 85, 'I ask you something I''ve never asked', 335.919, 338.960, NULL),
  (3417, 85, 'before? Do you want to hear something', 337.120, 341.919, NULL),
  (3418, 85, 'strange? Can I test an idea on you? It''s', 338.960, 345.199, NULL),
  (3419, 85, 'like, ooh, me? I''m so special. This is', 341.919, 347.039, NULL),
  (3420, 85, 'just for you and I. It''s something', 345.199, 349.120, NULL),
  (3421, 85, 'unique. You know, I once closed a deal', 347.039, 351.280, NULL),
  (3422, 85, 'because I asked the seller what would', 349.120, 352.960, NULL),
  (3423, 85, 'make this sale feel like a relief', 351.280, 355.120, NULL),
  (3424, 85, 'instead of a risk. I could just tell he', 352.960, 356.880, NULL),
  (3425, 85, 'was like super tight. He didn''t want to', 355.120, 358.479, NULL),
  (3426, 85, 'sell his business. I actually there''s so', 356.880, 360.479, NULL),
  (3427, 85, 'many physical reactions people have. He', 358.479, 362.320, NULL),
  (3428, 85, 'had these little hives. It actually uh', 360.479, 364.080, NULL),
  (3429, 85, 'happens a lot on men. I''ve noticed when', 362.320, 365.680, NULL),
  (3430, 85, 'they''re nervous, they''ll break out in', 364.080, 367.680, NULL),
  (3431, 85, 'kind of red splotches on their neck. And', 365.680, 369.120, NULL),
  (3432, 85, 'I could just tell he was in a heightened', 367.680, 370.240, NULL),
  (3433, 85, 'state. He didn''t really want to talk', 369.120, 372.080, NULL),
  (3434, 85, 'about his business financials. He was', 370.240, 373.680, NULL),
  (3435, 85, 'kind of scared that they were too messed', 372.080, 375.360, NULL),
  (3436, 85, 'up in order for me to want to buy this', 373.680, 376.720, NULL),
  (3437, 85, 'business. And so he was getting', 375.360, 377.680, NULL),
  (3438, 85, 'heightened and heightened and', 376.720, 379.039, NULL),
  (3439, 85, 'heightened. And even though I was trying', 377.680, 381.360, NULL),
  (3440, 85, 'to downregulate, I couldn''t break him', 379.039, 383.520, NULL),
  (3441, 85, 'out of it. But I said instead, I just', 381.360, 385.440, NULL),
  (3442, 85, 'kind of leaned in quietly and was like,', 383.520, 387.840, NULL),
  (3443, 85, '"Hey, what would make this sale feel', 385.440, 390.720, NULL),
  (3444, 85, 'like a relief instead of a risk?" And', 387.840, 392.960, NULL),
  (3445, 85, 'I''m quietly giving it to him. I''m', 390.720, 395.680, NULL),
  (3446, 85, 'leaning in, showing intent. I''m very', 392.960, 398.160, NULL),
  (3447, 85, 'focused on him. and his entire body', 395.680, 400.720, NULL),
  (3448, 85, 'changed because questions chemically', 398.160, 402.720, NULL),
  (3449, 85, 'shift conversations,', 400.720, 405.039, NULL),
  (3450, 85, 'especially if you pair it with the last', 402.720, 406.240, NULL),
  (3451, 85, 'video that we did. It''s about', 405.039, 407.840, NULL),
  (3452, 85, 'communication and how to speak like a', 406.240, 411.759, NULL),
  (3453, 85, 'CEO because your voice literally changes', 407.840, 413.759, NULL),
  (3454, 85, 'other people''s heart rates. This is', 411.759, 416.800, NULL),
  (3455, 85, 'called vocal entrainment. And this one', 413.759, 418.800, NULL),
  (3456, 85, 'also blew my mind. University College', 416.800, 421.039, NULL),
  (3457, 85, 'London found that humans subconsciously', 418.800, 424.240, NULL),
  (3458, 85, 'sync their heartbeats to the rhythm of a', 421.039, 427.840, NULL),
  (3459, 85, 'speaker''s voice. vocal entrainment. So', 424.240, 430.639, NULL),
  (3460, 85, 'if you speak rushed, restless, stressed,', 427.840, 432.160, NULL),
  (3461, 85, 'heart rate is going to increase. They''re', 430.639, 434.000, NULL),
  (3462, 85, 'going to feel stressed. If you speak', 432.160, 437.599, NULL),
  (3463, 85, 'steady, decisive, rhythmic, their heart', 434.000, 440.080, NULL),
  (3464, 85, 'rate calms. They feel safer. So your', 437.599, 441.599, NULL),
  (3465, 85, 'voice is not just communication. It''s', 440.080, 444.560, NULL),
  (3466, 85, 'like a remote control for other people''s', 441.599, 447.199, NULL),
  (3467, 85, 'physiology, other people''s biology and', 444.560, 449.759, NULL),
  (3468, 85, 'makeup and how they feel in an instance.', 447.199, 451.360, NULL),
  (3469, 85, 'This is probably why I don''t know if you', 449.759, 453.120, NULL),
  (3470, 85, 'guys have ever been to a yoga class', 451.360, 454.639, NULL),
  (3471, 85, 'where the yoga class is like a super', 453.120, 457.199, NULL),
  (3472, 85, 'fast high-pitched voice. Awful. Could be', 454.639, 459.360, NULL),
  (3473, 85, 'the best speaker in the world. But they', 457.199, 460.880, NULL),
  (3474, 85, 'have to speak. If you ever noticed, they', 459.360, 463.199, NULL),
  (3475, 85, 'speak in kind of this yoga tongue like', 460.880, 465.599, NULL),
  (3476, 85, 'and downward dog and then we''re going to', 463.199, 468.000, NULL),
  (3477, 85, 'move into upward dog and then we''re', 465.599, 469.599, NULL),
  (3478, 85, 'going to Why is that? They''re trying to', 468.000, 472.160, NULL),
  (3479, 85, 'rhythmically control your breathing. And', 469.599, 475.199, NULL),
  (3480, 85, 'this rhythmic language sounds more true', 472.160, 477.840, NULL),
  (3481, 85, 'to people. The processing fluency effect', 475.199, 479.759, NULL),
  (3482, 85, 'is actually where a Princeton study', 477.840, 481.520, NULL),
  (3483, 85, 'found that statements that rhyme or', 479.759, 483.120, NULL),
  (3484, 85, 'follow rhythm are judged as more', 481.520, 485.440, NULL),
  (3485, 85, 'truthful. And what does this mean? It', 483.120, 487.280, NULL),
  (3486, 85, 'means if the brain can process a phrase', 485.440, 489.840, NULL),
  (3487, 85, 'quickly, it assumes it must be correct.', 487.280, 491.680, NULL),
  (3488, 85, 'See how these lines feel on you right', 489.840, 494.560, NULL),
  (3489, 85, 'now. Move slow to move fast. What you', 491.680, 497.039, NULL),
  (3490, 85, 'track grows back. You repeat what you', 494.560, 498.800, NULL),
  (3491, 85, 'don''t repair. It''s kind of like, doesn''t', 497.039, 501.120, NULL),
  (3492, 85, 'that sound like deep wisdom? It''s like', 498.800, 503.120, NULL),
  (3493, 85, 'you repeat what you don''t repair. You''re', 501.120, 505.360, NULL),
  (3494, 85, 'like, "Yeah, that is true. I''ve noticed', 503.120, 507.440, NULL),
  (3495, 85, 'that, right? Like even before the', 505.360, 509.440, NULL),
  (3496, 85, 'meaning is processed, it sounds like', 507.440, 511.919, NULL),
  (3497, 85, 'wisdom. And this rhythmic language in', 509.440, 514.159, NULL),
  (3498, 85, 'your language can be incredibly', 511.919, 516.479, NULL),
  (3499, 85, 'persuasive. And so, how would you use', 514.159, 518.880, NULL),
  (3500, 85, 'this in everyday life? Well, sometimes', 516.479, 521.440, NULL),
  (3501, 85, 'we call it talking in tweets. So, for', 518.880, 523.360, NULL),
  (3502, 85, 'the founders that we teach at Contrarian', 521.440, 525.519, NULL),
  (3503, 85, 'Thinking, half the time I''ll say, "When', 523.360, 526.880, NULL),
  (3504, 85, 'was the last time you actually said', 525.519, 528.160, NULL),
  (3505, 85, 'those words out loud that you''re', 526.880, 529.440, NULL),
  (3506, 85, 'speaking right now?" Like, have you ever', 528.160, 531.440, NULL),
  (3507, 85, 'read somebody''s email? it''s a founder', 529.440, 532.800, NULL),
  (3508, 85, 'when they''re trying to sound smart and', 531.440, 534.800, NULL),
  (3509, 85, 'they''re like to whom it may concern you', 532.800, 536.880, NULL),
  (3510, 85, 'know please find attached the subject', 534.800, 539.440, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (3511, 85, 'matter of this email which is uh in', 536.880, 541.279, NULL),
  (3512, 85, 'regards to our conversation we had last', 539.440, 543.519, NULL),
  (3513, 85, 'week I''d like to follow up on shut up', 541.279, 546.480, NULL),
  (3514, 85, 'what that''s not English instead think', 543.519, 548.320, NULL),
  (3515, 85, 'about how you could say more or what is', 546.480, 551.279, NULL),
  (3516, 85, 'called high signal with less words so', 548.320, 553.680, NULL),
  (3517, 85, 'high signal to noise ratio and that', 551.279, 557.120, NULL),
  (3518, 85, 'might be something like quick followup', 553.680, 558.720, NULL),
  (3519, 85, 'on the one important thing we talked', 557.120, 561.839, NULL),
  (3520, 85, 'about last week like how can you just be', 558.720, 564.800, NULL),
  (3521, 85, 'as concise as possible? And some of the', 561.839, 566.959, NULL),
  (3522, 85, 'most impactful people of our generation,', 564.800, 568.080, NULL),
  (3523, 85, 'there''s a guy by the name of Naval', 566.959, 570.399, NULL),
  (3524, 85, 'Ravocant and he''s basically known for', 568.080, 572.480, NULL),
  (3525, 85, 'having banger oneliners. Banger', 570.399, 574.240, NULL),
  (3526, 85, 'oneliners. If you can speak in', 572.480, 576.560, NULL),
  (3527, 85, 'oneliners, people will repeat your words', 574.240, 578.720, NULL),
  (3528, 85, 'back to you. The simpler it is, the more', 576.560, 580.480, NULL),
  (3529, 85, 'rhythmic it is, the more people will', 578.720, 582.160, NULL),
  (3530, 85, 'repeat your words back. If you can get', 580.480, 583.600, NULL),
  (3531, 85, 'people to repeat your words back to you,', 582.160, 585.200, NULL),
  (3532, 85, 'what happens? They follow you. They', 583.600, 586.640, NULL),
  (3533, 85, 'listen to you. They think that you are', 585.200, 588.959, NULL),
  (3534, 85, 'truthful because you literally put words', 586.640, 590.560, NULL),
  (3535, 85, 'in their mouth. If you want to get hyper', 588.959, 592.080, NULL),
  (3536, 85, 'tactical on this, there''s something', 590.560, 594.160, NULL),
  (3537, 85, 'called the 321 trick. And I can''t', 592.080, 595.360, NULL),
  (3538, 85, 'remember where I stole this from', 594.160, 597.760, NULL),
  (3539, 85, 'originally, but it''s so good. And so I', 595.360, 600.560, NULL),
  (3540, 85, 'want to share it with you. The step one', 597.760, 604.800, NULL),
  (3541, 85, 'is pause 3 seconds. So when you are in a', 600.560, 606.560, NULL),
  (3542, 85, 'situation where you want to communicate', 604.800, 608.399, NULL),
  (3543, 85, 'aggressively, you want to be listened', 606.560, 610.480, NULL),
  (3544, 85, 'to, you are in one of those difficult', 608.399, 611.920, NULL),
  (3545, 85, 'conversations, I want you to pause for', 610.480, 614.640, NULL),
  (3546, 85, 'three seconds. This is actually going to', 611.920, 616.320, NULL),
  (3547, 85, 'activate part of your brain.', 614.640, 617.920, NULL),
  (3548, 85, 'Neuroscientists found that when you', 616.320, 620.640, NULL),
  (3549, 85, 'pause even briefly, your anterior', 617.920, 623.279, NULL),
  (3550, 85, 'singulate cortex activates, a fancy way', 620.640, 624.880, NULL),
  (3551, 85, 'of saying the part of your brain', 623.279, 627.360, NULL),
  (3552, 85, 'responsible for error detection and', 624.880, 630.000, NULL),
  (3553, 85, 'attention or lies. It comes to attention', 627.360, 632.560, NULL),
  (3554, 85, 'and the pause literally kind of clears', 630.000, 634.240, NULL),
  (3555, 85, 'your mental windshield, allows you to', 632.560, 636.399, NULL),
  (3556, 85, 'see what is true or not. So somebody', 634.240, 637.600, NULL),
  (3557, 85, 'says something you don''t like, you''re', 636.399, 640.399, NULL),
  (3558, 85, 'going to pause. One, two, three. Then', 637.600, 642.240, NULL),
  (3559, 85, 'you''re going to do step two. Give only', 640.399, 644.240, NULL),
  (3560, 85, 'two points. This is called dual track', 642.240, 646.160, NULL),
  (3561, 85, 'working memory. the the brain really', 644.240, 648.160, NULL),
  (3562, 85, 'can''t process too many things at once.', 646.160, 650.399, NULL),
  (3563, 85, 'So, it can usually process a verbal and', 648.160, 652.800, NULL),
  (3564, 85, 'a visual track. So, when you limit to', 650.399, 656.480, NULL),
  (3565, 85, 'two points, both tracks sync. And then,', 652.800, 658.480, NULL),
  (3566, 85, 'can you please repeat that point back to', 656.480, 660.079, NULL),
  (3567, 85, 'me? So, what am I doing? I''m putting my', 658.480, 661.839, NULL),
  (3568, 85, 'hand out there like pointing to a', 660.079, 664.480, NULL),
  (3569, 85, 'specific point. My uh movement is', 661.839, 666.480, NULL),
  (3570, 85, 'mimicking my communication and I''m', 664.480, 668.240, NULL),
  (3571, 85, 'giving them one thing to act on. Step', 666.480, 670.320, NULL),
  (3572, 85, 'three, end with one question. This is', 668.240, 671.839, NULL),
  (3573, 85, 'how you interrupt what''s called the', 670.320, 673.760, NULL),
  (3574, 85, 'default mode network. So your brain has', 671.839, 676.000, NULL),
  (3575, 85, 'a default mode like the way that it runs', 673.760, 678.399, NULL),
  (3576, 85, 'every single day. It''s it''s why when you', 676.000, 680.000, NULL),
  (3577, 85, 'drive to the office, for instance, you', 678.399, 681.279, NULL),
  (3578, 85, 'ever like get to the office, you''re', 680.000, 682.720, NULL),
  (3579, 85, 'like, "Oh, I for like I didn''t even', 681.279, 684.399, NULL),
  (3580, 85, 'remember driving here." Right? That''s', 682.720, 686.399, NULL),
  (3581, 85, 'daydreaming, wondering your default mode', 684.399, 688.560, NULL),
  (3582, 85, 'network. And questions shut that down', 686.399, 690.480, NULL),
  (3583, 85, 'instantly. It like immediately forces', 688.560, 691.760, NULL),
  (3584, 85, 'the brain to come into the present', 690.480, 693.519, NULL),
  (3585, 85, 'moment whether it wants to or not. And', 691.760, 695.360, NULL),
  (3586, 85, 'this is how you pull anyone back into', 693.519, 696.800, NULL),
  (3587, 85, 'the conversation, even if they were', 695.360, 698.720, NULL),
  (3588, 85, 'drifting. So let''s say you really want', 696.800, 700.320, NULL),
  (3589, 85, 'somebody to pay attention to you. You''re', 698.720, 701.760, NULL),
  (3590, 85, 'going to go, "Okay, here''s the 321', 700.320, 703.839, NULL),
  (3591, 85, 'method. You''re going to pause after they', 701.760, 707.200, NULL),
  (3592, 85, 'speak. 3 2 1. That is going to make them', 703.839, 708.560, NULL),
  (3593, 85, 'pay attention. They''re like, "Oh, that''s', 707.200, 710.000, NULL),
  (3594, 85, 'uncomfortable. What''s happening here?"', 708.560, 712.240, NULL),
  (3595, 85, 'Two-step. I want to talk about this one', 710.000, 716.079, NULL),
  (3596, 85, 'point. Visual plus plus verbal cue. Last', 712.240, 718.079, NULL),
  (3597, 85, 'point. Do you understand what the goal', 716.079, 720.399, NULL),
  (3598, 85, 'is for this or can we talk about that', 718.079, 722.480, NULL),
  (3599, 85, 'one point together? Pulls them back into', 720.399, 724.640, NULL),
  (3600, 85, 'the conversation. Super easy trick for', 722.480, 726.639, NULL),
  (3601, 85, 'difficult important conversations. There', 724.640, 728.720, NULL),
  (3602, 85, 'are some tactical tools I think that we', 726.639, 730.240, NULL),
  (3603, 85, 'all should just have in our toolbox when', 728.720, 731.600, NULL),
  (3604, 85, 'it comes to communicating. And I wish', 730.240, 732.720, NULL),
  (3605, 85, 'they had taught this in school instead', 731.600, 735.360, NULL),
  (3606, 85, 'of like whatever we learned in marketing', 732.720, 738.480, NULL),
  (3607, 85, 'or communication or writing. You know,', 735.360, 740.079, NULL),
  (3608, 85, 'one of the things that''s most important', 738.480, 741.760, NULL),
  (3609, 85, 'in speaking in this day and age where we', 740.079, 743.120, NULL),
  (3610, 85, 'have the shorter attention span than', 741.760, 745.839, NULL),
  (3611, 85, 'ever is speaking in sprints, not streams', 743.120, 747.440, NULL),
  (3612, 85, 'or what''s called segmented speech', 745.839, 750.399, NULL),
  (3613, 85, 'processing. So MIT researchers found the', 747.440, 752.480, NULL),
  (3614, 85, 'brain processes information in chunks.', 750.399, 754.480, NULL),
  (3615, 85, 'Maybe you''ve heard this before, not like', 752.480, 757.440, NULL),
  (3616, 85, 'continuous. So after about 12 seconds of', 754.480, 759.920, NULL),
  (3617, 85, 'uninterrupted speech, listener attention', 757.440, 762.399, NULL),
  (3618, 85, 'goes falls to the ground. Tik Tok', 759.920, 764.399, NULL),
  (3619, 85, 'actually based its entire algorithm on', 762.399, 766.639, NULL),
  (3620, 85, 'this single idea that humans can only', 764.399, 770.560, NULL),
  (3621, 85, 'pay attention for 5 to 10 seconds. So', 766.639, 773.279, NULL),
  (3622, 85, 'why do you think the for you page is all', 770.560, 775.440, NULL),
  (3623, 85, 'built on these 5 to 10 second video', 773.279, 777.920, NULL),
  (3624, 85, 'hooks immediately? Because they read the', 775.440, 780.320, NULL),
  (3625, 85, 'MIT research about chunking. So what', 777.920, 781.920, NULL),
  (3626, 85, 'does that mean for us individually?', 780.320, 784.000, NULL),
  (3627, 85, 'Speak in 5 to 10 second sprints. This is', 781.920, 786.240, NULL),
  (3628, 85, 'so uncomfortable. Nobody does it and yet', 784.000, 788.800, NULL),
  (3629, 85, 'it works every single time. I want you', 786.240, 792.200, NULL),
  (3630, 85, 'to pause briefly,', 788.800, 792.200, NULL),
  (3631, 85, 'then continue after 5 to 10 seconds, and', 793.040, 797.120, NULL),
  (3632, 85, 'you''re going to watch clarity skyrocket.', 795.360, 799.360, NULL),
  (3633, 85, 'Especially try doing this in a fight.', 797.120, 801.279, NULL),
  (3634, 85, 'It''s a fascinating thing to do if you', 799.360, 802.639, NULL),
  (3635, 85, 'are fighting with your husband or wife', 801.279, 804.800, NULL),
  (3636, 85, 'or friend or partner or whoever. Do you', 802.639, 806.000, NULL),
  (3637, 85, 'ever feel like you can''t get a word in?', 804.800, 807.680, NULL),
  (3638, 85, 'Like they''re like going on and on and on', 806.000, 809.279, NULL),
  (3639, 85, 'and all you''re doing is waiting until', 807.680, 811.040, NULL),
  (3640, 85, 'they''re done talking so that you can get', 809.279, 812.560, NULL),
  (3641, 85, 'in there and do the same thing. I''m', 811.040, 813.920, NULL),
  (3642, 85, 'going to come right back and then you go', 812.560, 815.839, NULL),
  (3643, 85, 'on for as long as possible as possible.', 813.920, 817.360, NULL),
  (3644, 85, 'that it''s like this Mexican standoff', 815.839, 818.959, NULL),
  (3645, 85, 'between the two of you just like', 817.360, 820.480, NULL),
  (3646, 85, 'monologuing each other until you shoot', 818.959, 821.839, NULL),
  (3647, 85, 'yourselves in the face. Not speaking', 820.480, 824.480, NULL),
  (3648, 85, 'from experience. And anyway, the way to', 821.839, 828.000, NULL),
  (3649, 85, 'get around that is to not do what every', 824.480, 829.440, NULL),
  (3650, 85, 'human wants to do, which is speak for a', 828.000, 831.360, NULL),
  (3651, 85, 'long time. It''s to go, I really just', 829.440, 833.440, NULL),
  (3652, 85, 'wish you wouldn''t raise your voice when', 831.360, 836.480, NULL),
  (3653, 85, 'we spoke less than 10 seconds. Shut up.', 833.440, 839.199, NULL),
  (3654, 85, 'Let them go on for 16 years. I really', 836.480, 841.680, NULL),
  (3655, 85, 'wish that during our next conversation,', 839.199, 844.800, NULL),
  (3656, 85, 'we could sit down and maybe have a glass', 841.680, 847.199, NULL),
  (3657, 85, 'of wine while we''re talking about this.', 844.800, 849.680, NULL),
  (3658, 85, 'Shut up. Let them go on. At a certain', 847.199, 852.880, NULL),
  (3659, 85, 'point, the shortness of your responses', 849.680, 854.720, NULL),
  (3660, 85, 'allows the other person to actually hear', 852.880, 856.240, NULL),
  (3661, 85, 'you, and it''s going to shorten theirs,', 854.720, 858.560, NULL),
  (3662, 85, 'too. Try it. Comment below. Let me know', 856.240, 860.240, NULL),
  (3663, 85, 'if it works for you. As you can see, I', 858.560, 862.240, NULL),
  (3664, 85, 'use a lot of hand gestures. They', 860.240, 863.760, NULL),
  (3665, 85, 'actually say you should gesture before', 862.240, 865.760, NULL),
  (3666, 85, 'you speak. This is called gesture', 863.760, 868.240, NULL),
  (3667, 85, 'priming. So, lots of studies on this,', 865.760, 869.680, NULL),
  (3668, 85, 'but the one I like the best is from UC', 868.240, 871.440, NULL),
  (3669, 85, 'Berkeley that found that gestures', 869.680, 873.920, NULL),
  (3670, 85, 'actually preede speech in the brain.', 871.440, 875.920, NULL),
  (3671, 85, 'What does that mean? Your hands help', 873.920, 878.320, NULL),
  (3672, 85, 'your brain form the thoughts. So, if you', 875.920, 880.079, NULL),
  (3673, 85, 'want to think clearly while you talk,', 878.320, 882.959, NULL),
  (3674, 85, 'move your hands first. Like, no dead', 880.079, 885.199, NULL),
  (3675, 85, 'hands. One of the most uncomfortable', 882.959, 887.279, NULL),
  (3676, 85, 'things that you can do actually in', 885.199, 889.199, NULL),
  (3677, 85, 'having a difficult conversation is to go', 887.279, 891.760, NULL),
  (3678, 85, 'from this, so hands in front of me', 889.199, 894.480, NULL),
  (3679, 85, 'talking to people to this, hands behind', 891.760, 896.320, NULL),
  (3680, 85, 'of me, not being able to see. Why? What', 894.480, 897.600, NULL),
  (3681, 85, 'does this immediately make you feel when', 896.320, 898.959, NULL),
  (3682, 85, 'my hands are behind me? Like what is she', 897.600, 901.199, NULL),
  (3683, 85, 'holding? What has she got back there?', 898.959, 903.600, NULL),
  (3684, 85, 'This my hands are hidden. Why? The', 901.199, 905.760, NULL),
  (3685, 85, 'reason why actually goes back to the', 903.600, 907.519, NULL),
  (3686, 85, 'caveman days, which is that if our hands', 905.760, 908.880, NULL),
  (3687, 85, 'are hidden, we could have a weapon in', 907.519, 910.720, NULL),
  (3688, 85, 'them. You know, Jan from HR could be', 908.880, 912.320, NULL),
  (3689, 85, 'like, ah, but that''s probably not going', 910.720, 914.560, NULL),
  (3690, 85, 'to happen. And yet, that is still how', 912.320, 917.199, NULL),
  (3691, 85, 'our little lion brain works. And so, no', 914.560, 919.680, NULL),
  (3692, 85, 'more hidden hands, no more dead hands,', 917.199, 922.560, NULL),
  (3693, 85, 'no more limp hands. All of that screams', 919.680, 924.560, NULL),
  (3694, 85, 'that somebody could hurt you as opposed', 922.560, 926.639, NULL),
  (3695, 85, 'to, "Hey, open hands mean I want to', 924.560, 928.000, NULL),
  (3696, 85, 'communicate with you. Come here. Look', 926.639, 930.160, NULL),
  (3697, 85, 'how look how harmless I am." You just', 928.000, 931.760, NULL),
  (3698, 85, 'landed your first major client.', 930.160, 933.839, NULL),
  (3699, 85, 'Congrats. This is huge. But here''s the', 931.760, 936.079, NULL),
  (3700, 85, 'thing. Big wins come with big exposure.', 933.839, 938.320, NULL),
  (3701, 85, 'One mistake, one mishap, one unexpected', 936.079, 940.560, NULL),
  (3702, 85, 'accident, and that dream contract could', 938.320, 942.720, NULL),
  (3703, 85, 'turn into a nightmare. Next Insurance', 940.560, 944.160, NULL),
  (3704, 85, 'helps owners like you protect what', 942.720, 945.839, NULL),
  (3705, 85, 'you''re building. So, you get instant', 944.160, 947.839, NULL),
  (3706, 85, 'online quotes, coverage tailored to your', 945.839, 949.440, NULL),
  (3707, 85, 'specific business, and an instant', 947.839, 950.720, NULL),
  (3708, 85, 'certificate of insurance so you can', 949.440, 952.720, NULL),
  (3709, 85, 'start work immediately. No complicated', 950.720, 954.399, NULL),
  (3710, 85, 'forms, no waiting around for someone in', 952.720, 956.959, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (3711, 85, 'a cubicle to approve your livelihood.', 954.399, 958.240, NULL),
  (3712, 85, 'So, whether you''re a contractor,', 956.959, 960.639, NULL),
  (3713, 85, 'creator, consultant, cleaning crew, Next', 958.240, 962.480, NULL),
  (3714, 85, 'makes it painless to get protected so', 960.639, 964.320, NULL),
  (3715, 85, 'you can focus on growth. Not what could', 962.480, 966.320, NULL),
  (3716, 85, 'go wrong. Winning is great, but getting', 964.320, 968.480, NULL),
  (3717, 85, 'covered is what keeps those wins. Check', 966.320, 970.720, NULL),
  (3718, 85, 'out next insurance.com/cody and protect', 968.480, 973.360, NULL),
  (3719, 85, 'your first major contract today. The', 970.720, 974.720, NULL),
  (3720, 85, 'other thing that I want you to ponder is', 973.360, 976.560, NULL),
  (3721, 85, 'like maybe you''ve noticed this in this', 974.720, 978.639, NULL),
  (3722, 85, 'uh little podcast rant that I''m doing', 976.560, 980.639, NULL),
  (3723, 85, 'today for you too is that stories stick', 978.639, 982.720, NULL),
  (3724, 85, '22 times more than facts which is', 980.639, 984.959, NULL),
  (3725, 85, 'fascinating. The Stanford researcher', 982.720, 987.920, NULL),
  (3726, 85, 'found that people remember stories 22%', 984.959, 991.199, NULL),
  (3727, 85, 'more than statistics alone. Why? Because', 987.920, 993.920, NULL),
  (3728, 85, 'stories activate our sensory cortex, our', 991.199, 996.320, NULL),
  (3729, 85, 'motor cortex, and our limbic system.', 993.920, 998.399, NULL),
  (3730, 85, 'This is kind of like um if all neurons', 996.320, 1000.560, NULL),
  (3731, 85, 'were firing at the same time. It''s this', 998.399, 1003.120, NULL),
  (3732, 85, 'neural coupling that lets the listener', 1000.560, 1005.600, NULL),
  (3733, 85, 'live your point rather than hear it. Do', 1003.120, 1006.880, NULL),
  (3734, 85, 'you know what I''m talking about? Like if', 1005.600, 1009.440, NULL),
  (3735, 85, 'I''m just like, "People remember stories', 1006.880, 1011.360, NULL),
  (3736, 85, '22 times more." You''re like, "Okay, I', 1009.440, 1013.519, NULL),
  (3737, 85, 'could remember that number 22%." Like', 1011.360, 1015.120, NULL),
  (3738, 85, 'that''s my rational brain. I can process', 1013.519, 1019.600, NULL),
  (3739, 85, 'that. But if I said, "Your toddler', 1015.120, 1022.240, NULL),
  (3740, 85, 'will never touch the stove again." when', 1019.600, 1024.480, NULL),
  (3741, 85, 'you tell him the story about the first', 1022.240, 1026.799, NULL),
  (3742, 85, 'time you touched the stove, how much it', 1024.480, 1029.199, NULL),
  (3743, 85, 'hurt, the pain that he that you had in', 1026.799, 1032.559, NULL),
  (3744, 85, 'your hand, and uh the toddler then goes', 1029.199, 1034.559, NULL),
  (3745, 85, 'to touch it and you mimic the feeling of', 1032.559, 1035.919, NULL),
  (3746, 85, 'how much it hurt and you lick it and', 1034.559, 1037.520, NULL),
  (3747, 85, 'you''re like, "Ah, this feels awful."', 1035.919, 1039.199, NULL),
  (3748, 85, 'Like, you''re going to remember that', 1037.520, 1041.039, NULL),
  (3749, 85, 'story. So, remember, if you want to', 1039.199, 1043.199, NULL),
  (3750, 85, 'persuade somebody, even a toddler, tell', 1041.039, 1045.120, NULL),
  (3751, 85, 'them a story. Don''t use a spreadsheet.', 1043.199, 1047.039, NULL),
  (3752, 85, 'Don''t use numbers alone. And that goes', 1045.120, 1049.200, NULL),
  (3753, 85, 'to this idea of perceptual language,', 1047.039, 1051.280, NULL),
  (3754, 85, 'which is based on Cornell research. So', 1049.200, 1052.720, NULL),
  (3755, 85, 'what does perceptual language mean?', 1051.280, 1054.320, NULL),
  (3756, 85, 'Cornell studies show that people trust', 1052.720, 1055.919, NULL),
  (3757, 85, 'speakers more when they use language', 1054.320, 1057.760, NULL),
  (3758, 85, 'based on perception. Let me give you a', 1055.919, 1060.320, NULL),
  (3759, 85, 'bad example first. We must improve', 1057.760, 1062.799, NULL),
  (3760, 85, 'operational efficiency. What what does', 1060.320, 1064.160, NULL),
  (3761, 85, 'that even mean? I I don''t fully', 1062.799, 1067.520, NULL),
  (3762, 85, 'understand. We need to see fewer steps.', 1064.160, 1069.679, NULL),
  (3763, 85, 'We need smoother handoffs. We need', 1067.520, 1071.919, NULL),
  (3764, 85, 'cleaner workflows. Your brain likes it', 1069.679, 1073.840, NULL),
  (3765, 85, 'when they can visualize it. You''re like,', 1071.919, 1076.799, NULL),
  (3766, 85, '"Okay, 10 steps, two steps. I can see."', 1073.840, 1079.520, NULL),
  (3767, 85, 'This is why often I like to be on a', 1076.799, 1081.520, NULL),
  (3768, 85, 'whiteboard when I am explaining complex', 1079.520, 1084.080, NULL),
  (3769, 85, 'topics. Why? If you were to explain a', 1081.520, 1086.000, NULL),
  (3770, 85, 'topic to me, I will say I am a visual', 1084.080, 1088.240, NULL),
  (3771, 85, 'learner. And really that saying, I am a', 1086.000, 1090.640, NULL),
  (3772, 85, 'visual learner. You''re not. Everybody''s', 1088.240, 1092.960, NULL),
  (3773, 85, 'a visual learner. Everybody learns more', 1090.640, 1095.360, NULL),
  (3774, 85, 'and retains more when they both see it', 1092.960, 1097.520, NULL),
  (3775, 85, 'and when they are actually able to', 1095.360, 1100.000, NULL),
  (3776, 85, 'visualize it as opposed to conceptualize', 1097.520, 1103.120, NULL),
  (3777, 85, 'it. So, you know, I remember one of the', 1100.000, 1104.559, NULL),
  (3778, 85, 'times that in our business, more than', 1103.120, 1106.880, NULL),
  (3779, 85, 'any other, we were stuck on a problem.', 1104.559, 1108.160, NULL),
  (3780, 85, 'And the problem in this particular', 1106.880, 1110.799, NULL),
  (3781, 85, 'instance was we couldn''t figure out how', 1108.160, 1112.720, NULL),
  (3782, 85, 'we were going to buy this second company', 1110.799, 1114.320, NULL),
  (3783, 85, 'and integrate it, which is called', 1112.720, 1116.400, NULL),
  (3784, 85, 'mergers and acquisition, uh, post M&A', 1114.320, 1118.640, NULL),
  (3785, 85, 'integration. And the reason is because', 1116.400, 1120.240, NULL),
  (3786, 85, 'we had all of these people. So, you', 1118.640, 1121.760, NULL),
  (3787, 85, 'could kind of imagine like two org', 1120.240, 1123.600, NULL),
  (3788, 85, 'charts. They''ve got people everywhere on', 1121.760, 1125.200, NULL),
  (3789, 85, 'them. There''s dozens of them. I''m like,', 1123.600, 1127.120, NULL),
  (3790, 85, 'does Jan go here? Does Bob go there?', 1125.200, 1128.559, NULL),
  (3791, 85, 'It''s so overwhelming. And so we were', 1127.120, 1130.720, NULL),
  (3792, 85, 'talking through it and I realized the', 1128.559, 1132.400, NULL),
  (3793, 85, 'only difference we needed to do is we', 1130.720, 1134.320, NULL),
  (3794, 85, 'needed to color code on a whiteboard the', 1132.400, 1136.240, NULL),
  (3795, 85, 'roles that people had at the varying', 1134.320, 1137.440, NULL),
  (3796, 85, 'companies and see which one were', 1136.240, 1139.840, NULL),
  (3797, 85, 'duplicative. So a lesson that was taking', 1137.440, 1141.679, NULL),
  (3798, 85, 'us I don''t know 45 minutes to talk', 1139.840, 1143.679, NULL),
  (3799, 85, 'through visually we figured out in 10', 1141.679, 1145.840, NULL),
  (3800, 85, 'minutes when we were talking through it', 1143.679, 1148.720, NULL),
  (3801, 85, 'verbally when we did it visually we did', 1145.840, 1150.960, NULL),
  (3802, 85, 'it in less than 10 minutes. And so any', 1148.720, 1152.799, NULL),
  (3803, 85, 'time that you can do what we call it', 1150.960, 1155.039, NULL),
  (3804, 85, 'contrarian thinking show don''t tell.', 1152.799, 1156.160, NULL),
  (3805, 85, 'Next, I want you to think about', 1155.039, 1158.320, NULL),
  (3806, 85, 'replacing these words that I almost', 1156.160, 1160.080, NULL),
  (3807, 85, 'never want to hear from you again with', 1158.320, 1161.440, NULL),
  (3808, 85, 'two different ones. I want you to', 1160.080, 1164.960, NULL),
  (3809, 85, 'replace I think with I''ve observed. So,', 1161.440, 1167.120, NULL),
  (3810, 85, 'Columbia University said statements', 1164.960, 1170.480, NULL),
  (3811, 85, 'framed as observations are seen as 40%', 1167.120, 1172.799, NULL),
  (3812, 85, 'more credible than statements framed as', 1170.480, 1175.600, NULL),
  (3813, 85, 'opinions. I think is actually this like', 1172.799, 1177.760, NULL),
  (3814, 85, 'it''s a low confidence signal. I think we', 1175.600, 1179.440, NULL),
  (3815, 85, 'should do that. Why? Just cuz you feel', 1177.760, 1182.559, NULL),
  (3816, 85, 'like it. I''ve observed. Well, that seems', 1179.440, 1184.160, NULL),
  (3817, 85, 'to tell me that there''s data backed', 1182.559, 1186.799, NULL),
  (3818, 85, 'behind it. So, anywhere you can, you', 1184.160, 1188.480, NULL),
  (3819, 85, 'should do two things as a CEO and a', 1186.799, 1190.160, NULL),
  (3820, 85, 'strong communicator. One would be you', 1188.480, 1192.799, NULL),
  (3821, 85, 'should ask why someone thinks that we', 1190.160, 1196.240, NULL),
  (3822, 85, 'should do X, Y, or Z. And if you instead', 1192.799, 1198.080, NULL),
  (3823, 85, 'want to be the one influencing and say,', 1196.240, 1199.760, NULL),
  (3824, 85, 'I''ve observed, that''s going to lend', 1198.080, 1202.240, NULL),
  (3825, 85, 'yourself more credibility. You can also', 1199.760, 1203.840, NULL),
  (3826, 85, 'use these things called temporal', 1202.240, 1205.760, NULL),
  (3827, 85, 'landmarks because behavioral economists', 1203.840, 1208.240, NULL),
  (3828, 85, 'found that time anchors drive action.', 1205.760, 1210.240, NULL),
  (3829, 85, 'So, you know how when you go to a a', 1208.240, 1212.400, NULL),
  (3830, 85, 'checkout like Black Friday, they''ll say', 1210.240, 1215.200, NULL),
  (3831, 85, 'like, "Right now, today, in the past 10', 1212.400, 1218.080, NULL),
  (3832, 85, 'minutes, Barb from Iowa just bought this', 1215.200, 1220.880, NULL),
  (3833, 85, 'new shirt. So did Jan." Like time', 1218.080, 1222.799, NULL),
  (3834, 85, 'creates this momentum. For some reason,', 1220.880, 1224.480, NULL),
  (3835, 85, 'when we see somebody putting a limiter', 1222.799, 1226.799, NULL),
  (3836, 85, 'on it, a time limiter on it will move', 1224.480, 1228.960, NULL),
  (3837, 85, 'faster. You can also use the cognitive', 1226.799, 1231.679, NULL),
  (3838, 85, 'snap. So, this is my favorite thing to', 1228.960, 1234.240, NULL),
  (3839, 85, 'do ever at restaurants. Try it in New', 1231.679, 1235.840, NULL),
  (3840, 85, 'York City. I don''t know why mo most', 1234.240, 1238.320, NULL),
  (3841, 85, 'people don''t do this. It''s so simple. I', 1235.840, 1240.880, NULL),
  (3842, 85, 'want you to use your server''s name and', 1238.320, 1244.080, NULL),
  (3843, 85, 'one detail about them. Oh, Tori, is that', 1240.880, 1246.400, NULL),
  (3844, 85, 'your name? That''s amazing. I love your', 1244.080, 1249.760, NULL),
  (3845, 85, 'haircut. Uh, I want to order XYZ. Hey,', 1246.400, 1251.840, NULL),
  (3846, 85, 'Tori, is that your name? That''s great.', 1249.760, 1253.600, NULL),
  (3847, 85, 'Ah, where are you from? Like, it sounds', 1251.840, 1255.679, NULL),
  (3848, 85, 'like, are you from Australia? One', 1253.600, 1257.679, NULL),
  (3849, 85, 'specific detail. You can also do this in', 1255.679, 1259.520, NULL),
  (3850, 85, 'meetings. Hey, John, earlier you', 1257.679, 1261.520, NULL),
  (3851, 85, 'mentioned your team was stuck. Let me', 1259.520, 1262.720, NULL),
  (3852, 85, 'show you something. I''d love to get your', 1261.520, 1264.640, NULL),
  (3853, 85, 'opinion on this. This is called', 1262.720, 1266.640, NULL),
  (3854, 85, 'self-referencing. So, it''s like you''re', 1264.640, 1270.720, NULL),
  (3855, 85, 'you''re being referential to them first,', 1266.640, 1272.320, NULL),
  (3856, 85, 'which makes their brain think, "I''m', 1270.720, 1274.320, NULL),
  (3857, 85, 'getting a compliment. I''m back in."', 1272.320, 1276.240, NULL),
  (3858, 85, 'Let''s say you''re talking to your husband', 1274.320, 1277.760, NULL),
  (3859, 85, 'and he''s not paying attention to you at', 1276.240, 1281.039, NULL),
  (3860, 85, 'all and he''s watching the game and he''s', 1277.760, 1282.240, NULL),
  (3861, 85, 'really wishing you weren''t talking to', 1281.039, 1283.520, NULL),
  (3862, 85, 'him about whatever you''re talking to him', 1282.240, 1285.760, NULL),
  (3863, 85, 'at that moment. I [snorts] want you to', 1283.520, 1287.600, NULL),
  (3864, 85, 'try this. I want you to just say his', 1285.760, 1289.840, NULL),
  (3865, 85, 'name. Hey, John. Hey, yesterday you', 1287.600, 1292.080, NULL),
  (3866, 85, 'mentioned you wanted me to do this and', 1289.840, 1294.799, NULL),
  (3867, 85, 'see if he then draws back in. This is', 1292.080, 1297.120, NULL),
  (3868, 85, 'incredible in meetings as a pullback for', 1294.799, 1298.799, NULL),
  (3869, 85, 'attention. You can also do something', 1297.120, 1301.120, NULL),
  (3870, 85, 'really simple which in this day and age', 1298.799, 1302.720, NULL),
  (3871, 85, 'is not that normal, which is open your', 1301.120, 1305.360, NULL),
  (3872, 85, 'rib cage. This is called postural', 1302.720, 1306.880, NULL),
  (3873, 85, 'neuroendocrinology.', 1305.360, 1309.280, NULL),
  (3874, 85, 'There''s a mouthful for you. But most of', 1306.880, 1311.120, NULL),
  (3875, 85, 'us this day and age have what''s called a', 1309.280, 1313.440, NULL),
  (3876, 85, 'closed and a flared rib cage. It''s from', 1311.120, 1316.480, NULL),
  (3877, 85, 'like typing like this too much and short', 1313.440, 1318.159, NULL),
  (3878, 85, 'breathing. So we kind of only breathe in', 1316.480, 1320.480, NULL),
  (3879, 85, 'our stomach. So when your rib cage is', 1318.159, 1323.600, NULL),
  (3880, 85, 'closed like this, it''s going to actually', 1320.480, 1325.360, NULL),
  (3881, 85, 'increase your cortisol. So that''s your', 1323.600, 1327.120, NULL),
  (3882, 85, 'stress and it''s going to decrease your', 1325.360, 1328.960, NULL),
  (3883, 85, 'testosterone, which is like the', 1327.120, 1331.440, NULL),
  (3884, 85, 'aggressive uh energy that flows through', 1328.960, 1334.159, NULL),
  (3885, 85, 'us. So when you open your rib cage and', 1331.440, 1336.080, NULL),
  (3886, 85, 'you raise your arms, that basically', 1334.159, 1338.080, NULL),
  (3887, 85, 'allows you to have a what''s called a', 1336.080, 1340.480, NULL),
  (3888, 85, 'calm dominance posture. And this is like', 1338.080, 1343.120, NULL),
  (3889, 85, 'real physiology. This isn''t like a super', 1340.480, 1345.600, NULL),
  (3890, 85, 'man woman posing or anything like that.', 1343.120, 1347.120, NULL),
  (3891, 85, 'When you roll your shoulders back and', 1345.600, 1349.840, NULL),
  (3892, 85, 'you open up the ribs, one, you can have', 1347.120, 1351.760, NULL),
  (3893, 85, 'a stronger voice because your rib cage', 1349.840, 1353.760, NULL),
  (3894, 85, 'is opening, but also it signals to the', 1351.760, 1355.120, NULL),
  (3895, 85, 'other person that you''re in a dominance', 1353.760, 1357.039, NULL),
  (3896, 85, 'position. And so you can try that next', 1355.120, 1359.039, NULL),
  (3897, 85, 'time you want to communicate more fully.', 1357.039, 1361.440, NULL),
  (3898, 85, 'I certainly uh believe in this more than', 1359.039, 1363.679, NULL),
  (3899, 85, 'the power posing. And like these small', 1361.440, 1365.520, NULL),
  (3900, 85, 'things are not meant to like manipulate', 1363.679, 1367.280, NULL),
  (3901, 85, 'somebody. This is meant for you to', 1365.520, 1369.360, NULL),
  (3902, 85, 'become a better communicator because I', 1367.280, 1371.440, NULL),
  (3903, 85, 'think that if we communicate better,', 1369.360, 1373.679, NULL),
  (3904, 85, 'then our lives get better. we transfer', 1371.440, 1375.520, NULL),
  (3905, 85, 'more trust and we get the things we want', 1373.679, 1377.039, NULL),
  (3906, 85, 'and often we help other people get the', 1375.520, 1378.720, NULL),
  (3907, 85, 'things they want too and so this', 1377.039, 1380.880, NULL),
  (3908, 85, 'shouldn''t be something sneaky you''re', 1378.720, 1383.120, NULL),
  (3909, 85, 'doing we''re going to actually talk about', 1380.880, 1384.960, NULL),
  (3910, 85, 'taking turns and why that builds trust', 1383.120, 1387.600, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (3911, 85, 'faster than agreement and so Harvard', 1384.960, 1389.840, NULL),
  (3912, 85, 'research shows you don''t actually have', 1387.600, 1392.080, NULL),
  (3913, 85, 'to agree with somebody to build trust', 1389.840, 1394.320, NULL),
  (3914, 85, 'you just have to share roughly equal', 1392.080, 1397.280, NULL),
  (3915, 85, 'speaking time literally you can disagree', 1394.320, 1399.520, NULL),
  (3916, 85, 'with somebody intensely but just give', 1397.280, 1402.640, NULL),
  (3917, 85, 'them the floor and watch what happens If', 1399.520, 1406.000, NULL),
  (3918, 85, 'you allow somebody balance or equality,', 1402.640, 1407.840, NULL),
  (3919, 85, 'they feel it is just as good as', 1406.000, 1410.559, NULL),
  (3920, 85, 'agreement. And that is why often when', 1407.840, 1411.919, NULL),
  (3921, 85, 'you''re sitting on a panel, like I''ve had', 1410.559, 1414.720, NULL),
  (3922, 85, 'to do a panel before on a news station', 1411.919, 1416.720, NULL),
  (3923, 85, 'where we were on different sides of a', 1414.720, 1418.720, NULL),
  (3924, 85, 'belief about capitalism and the economy.', 1416.720, 1420.159, NULL),
  (3925, 85, 'I tended to think it was good. The', 1418.720, 1421.360, NULL),
  (3926, 85, 'person next to me tended to think that', 1420.159, 1423.679, NULL),
  (3927, 85, 'socialism was better and that capitalism', 1421.360, 1425.520, NULL),
  (3928, 85, 'was not good. I could not have disagreed', 1423.679, 1426.799, NULL),
  (3929, 85, 'with this person more. Let me like get', 1425.520, 1428.880, NULL),
  (3930, 85, 'that straight. Like I from the bottom', 1426.799, 1430.960, NULL),
  (3931, 85, 'marrow of my bones, I disagreed with', 1428.880, 1432.240, NULL),
  (3932, 85, 'this human. I think they were wrong', 1430.960, 1434.159, NULL),
  (3933, 85, 'about almost everything they said on', 1432.240, 1435.679, NULL),
  (3934, 85, 'set. But I made a promise to myself in', 1434.159, 1436.880, NULL),
  (3935, 85, 'the beginning that I would make this', 1435.679, 1438.480, NULL),
  (3936, 85, 'unemotional and I wanted to give my', 1436.880, 1440.080, NULL),
  (3937, 85, 'argument. I wanted them to give theirs.', 1438.480, 1443.600, NULL),
  (3938, 85, 'And so all I did was speak and then', 1440.080, 1445.760, NULL),
  (3939, 85, 'allow them to speak just as long as I', 1443.600, 1448.080, NULL),
  (3940, 85, 'did. Now they piped in a few times to', 1445.760, 1450.000, NULL),
  (3941, 85, 'interrupt me. And what did I do? I', 1448.080, 1453.039, NULL),
  (3942, 85, 'actually allowed it. I allowed it calmly', 1450.000, 1455.279, NULL),
  (3943, 85, 'and then I just said, "You know what? I', 1453.039, 1456.960, NULL),
  (3944, 85, 'just gave you the full 2 minutes. I', 1455.279, 1458.320, NULL),
  (3945, 85, 'think it''s reasonable for you to give it', 1456.960, 1460.000, NULL),
  (3946, 85, 'back to me. Would that be unreasonable?', 1458.320, 1462.159, NULL),
  (3947, 85, 'I also love using that would that be', 1460.000, 1464.159, NULL),
  (3948, 85, 'unreasonable as because it it''s', 1462.159, 1465.200, NULL),
  (3949, 85, 'basically what are they going to say', 1464.159, 1467.200, NULL),
  (3950, 85, ' no that would be unre it''s like you', 1465.200, 1469.200, NULL),
  (3951, 85, 'can''t almost argue with it such a good', 1467.200, 1471.440, NULL),
  (3952, 85, 'trick question and lo and behold at the', 1469.200, 1473.120, NULL),
  (3953, 85, 'very end the guy comes up to me goes', 1471.440, 1474.400, NULL),
  (3954, 85, 'that was incredible I think we agreed', 1473.120, 1476.320, NULL),
  (3955, 85, 'about a lot I was like I literally don''t', 1474.400, 1477.840, NULL),
  (3956, 85, 'think we could have agreed about less', 1476.320, 1480.159, NULL),
  (3957, 85, 'but he felt good because I allowed this', 1477.840, 1482.080, NULL),
  (3958, 85, 'equity in conversation and after you do', 1480.159, 1483.679, NULL),
  (3959, 85, 'that I want you to end with something', 1482.080, 1486.720, NULL),
  (3960, 85, 'called a cognitive close not a question', 1483.679, 1489.200, NULL),
  (3961, 85, 'so what does this mean people follow a', 1486.720, 1491.840, NULL),
  (3962, 85, 'recommendation ation 60%', 1489.200, 1494.720, NULL),
  (3963, 85, 'more often than an open-ended question.', 1491.840, 1496.960, NULL),
  (3964, 85, 'So, I don''t want you to end with, "Let', 1494.720, 1499.039, NULL),
  (3965, 85, 'me know what you think." I want you to', 1496.960, 1501.279, NULL),
  (3966, 85, 'end with, "Here''s what I recommend we do', 1499.039, 1504.159, NULL),
  (3967, 85, 'next. Here''s what we should do next.', 1501.279, 1506.159, NULL),
  (3968, 85, 'Here''s the next steps." That''s even', 1504.159, 1508.000, NULL),
  (3969, 85, 'tighter. Here''s the next steps. You''re', 1506.159, 1509.679, NULL),
  (3970, 85, 'just asserting dominance that that is', 1508.000, 1511.600, NULL),
  (3971, 85, 'going to be what happens next. This is', 1509.679, 1513.520, NULL),
  (3972, 85, 'all leadership. And as you can tell,', 1511.600, 1515.919, NULL),
  (3973, 85, 'it''s actually not that complex. There''s', 1513.520, 1518.080, NULL),
  (3974, 85, 'a series of little trials we''ve done as', 1515.919, 1520.320, NULL),
  (3975, 85, 'humans over time to realize that', 1518.080, 1522.880, NULL),
  (3976, 85, 'communication is not a soft skill. It''s', 1520.320, 1524.559, NULL),
  (3977, 85, 'not something that you were born with.', 1522.880, 1526.880, NULL),
  (3978, 85, 'It''s not something that only some people', 1524.559, 1528.799, NULL),
  (3979, 85, 'have. When people say he''s an excellent', 1526.880, 1530.240, NULL),
  (3980, 85, 'communicator, that just means he has', 1528.799, 1532.880, NULL),
  (3981, 85, 'more data, more reps, and maybe more of', 1530.240, 1534.799, NULL),
  (3982, 85, 'this research than you do. But now', 1532.880, 1537.360, NULL),
  (3983, 85, 'you''re equally backed. Take three or', 1534.799, 1539.679, NULL),
  (3984, 85, 'five of these lessons, apply them to', 1537.360, 1542.159, NULL),
  (3985, 85, 'your life, and learn what it feels like', 1539.679, 1544.720, NULL),
  (3986, 85, 'to have other people lean in on every', 1542.159, 1547.120, NULL),
  (3987, 85, 'word that you say. Because the game of', 1544.720, 1549.360, NULL),
  (3988, 85, 'business and of money is really [music]', 1547.120, 1553.159, NULL),
  (3989, 85, 'just a game of communication.', 1549.360, 1553.159, NULL),
  (3990, 86, 'How to get whatever you want. That''s the', 0.080, 4.319, NULL),
  (3991, 86, 'title of the next set of notes. How to', 2.240, 6.400, NULL),
  (3992, 86, 'get whatever you want. Here''s what it', 4.319, 8.440, NULL),
  (3993, 86, 'says. If you''re ready, it', 6.400, 11.440, NULL),
  (3994, 86, 'says,', 8.440, 11.440, NULL),
  (3995, 86, '"Ask." That''s', 14.839, 20.560, NULL),
  (3996, 86, 'it. End of', 17.000, 20.560, NULL),
  (3997, 86, 'notes.', 20.600, 26.400, NULL),
  (3998, 86, 'Ask. If there''s one art in life to learn', 23.240, 28.240, NULL),
  (3999, 86, 'extremely well, that''s got to be one of', 26.400, 31.920, NULL),
  (4000, 86, 'them. The art of', 28.240, 31.920, NULL),
  (4001, 86, 'asking. What does ask mean? Ask means', 32.120, 38.640, NULL),
  (4002, 86, 'what do you', 35.360, 38.640, NULL),
  (4003, 86, 'want? And the formula is staggering. It', 38.760, 44.520, NULL),
  (4004, 86, 'says ask and', 42.160, 48.800, NULL),
  (4005, 86, 'what a guy ought to look into', 44.520, 48.800, NULL),
  (4006, 86, 'that. See, you''ve got to be better than', 49.160, 53.320, NULL),
  (4007, 86, 'a good worker. You''ve got to be a good', 51.280, 55.600, NULL),
  (4008, 86, 'asker. Now, let me give you three key', 53.320, 58.079, NULL),
  (4009, 86, 'points on asking and receiving. This can', 55.600, 60.440, NULL),
  (4010, 86, 'do it. Number', 58.079, 64.760, NULL),
  (4011, 86, 'one, asking is the beginning of', 60.440, 67.119, NULL),
  (4012, 86, 'receiving. Asking starts a unique', 64.760, 70.000, NULL),
  (4013, 86, 'process, mental and emotional. I don''t', 67.119, 72.320, NULL),
  (4014, 86, 'even know how it works. All I know is it', 70.000, 74.479, NULL),
  (4015, 86, 'works. It''s like pushing a button and', 72.320, 77.520, NULL),
  (4016, 86, 'all this machinery starts working. I', 74.479, 80.320, NULL),
  (4017, 86, 'don''t know how. It just works. There''s a', 77.520, 81.920, NULL),
  (4018, 86, 'lot of things you don''t need to know', 80.320, 86.000, NULL),
  (4019, 86, 'how. Just work them.', 81.920, 87.520, NULL),
  (4020, 86, 'Some people are always studying the', 86.000, 89.840, NULL),
  (4021, 86, 'roots. Others are picking the fruit. I', 87.520, 91.200, NULL),
  (4022, 86, 'mean, it depends on what end of it you', 89.840, 93.600, NULL),
  (4023, 86, 'want in', 91.200, 93.600, NULL),
  (4024, 86, 'on. Asking is the beginning of', 95.640, 99.600, NULL),
  (4025, 86, 'receiving. So, start the process. Here''s', 97.840, 104.320, NULL),
  (4026, 86, 'number two. Receiving is not the', 99.600, 104.320, NULL),
  (4027, 86, 'problem. Receiving is', 104.600, 108.479, NULL),
  (4028, 86, 'automatic. Now, if that''s true,', 108.920, 112.159, NULL),
  (4029, 86, 'receiving is not the problem. What''s the', 110.720, 114.000, NULL),
  (4030, 86, 'problem?', 112.159, 116.720, NULL),
  (4031, 86, 'Failure to ask might be one of your', 114.000, 120.119, NULL),
  (4032, 86, 'major problems. I don''t know. Check it', 116.720, 123.759, NULL),
  (4033, 86, 'out. The guy says, "Oh, now I see it. I', 120.119, 125.520, NULL),
  (4034, 86, 'got up last year and hit it every day,', 123.759, 127.879, NULL),
  (4035, 86, 'but there''s not a scrap of paper with my', 125.520, 130.440, NULL),
  (4036, 86, 'goals on', 127.879, 132.760, NULL),
  (4037, 86, 'it. Good', 130.440, 135.599, NULL),
  (4038, 86, 'worker. Poor asker." So, you got to', 132.760, 138.520, NULL),
  (4039, 86, 'change that. Here''s number', 135.599, 142.560, NULL),
  (4040, 86, 'three. Receiving is like the ocean.', 138.520, 143.959, NULL),
  (4041, 86, 'There''s', 142.560, 147.959, NULL),
  (4042, 86, 'plenty. Success is not in short', 143.959, 150.959, NULL),
  (4043, 86, 'supply. It isn''t rationed and you', 147.959, 152.239, NULL),
  (4044, 86, 'stepped up to the window and it was all', 150.959, 158.239, NULL),
  (4045, 86, 'gone. No, no, no. It''s like an ocean', 152.239, 158.239, NULL),
  (4046, 86, 'here. Now, if that''s true, what''s the', 158.599, 162.640, NULL),
  (4047, 86, 'problem? Well, some people go to the', 160.800, 165.519, NULL),
  (4048, 86, 'ocean with a', 162.640, 165.519, NULL),
  (4049, 86, 'teaspoon. Have you got the picture?', 165.959, 172.640, NULL),
  (4050, 86, 'See, what you want to do in view of the', 170.400, 174.959, NULL),
  (4051, 86, 'size of the ocean is trade your teaspoon', 172.640, 176.519, NULL),
  (4052, 86, 'for at least a', 174.959, 179.040, NULL),
  (4053, 86, 'bucket and you''ll look better down at', 176.519, 180.920, NULL),
  (4054, 86, 'the', 179.040, 185.599, NULL),
  (4055, 86, 'ocean. Kids won''t make fun of you,', 180.920, 185.599, NULL),
  (4056, 86, 'right? Okay. Now, there''s two ways to', 186.840, 192.200, NULL),
  (4057, 86, 'ask and we''ll wrap up goal setting. Two', 189.760, 195.280, NULL),
  (4058, 86, 'ways. Here''s number one. Ask with', 192.200, 198.280, NULL),
  (4059, 86, 'intelligence.', 195.280, 198.280, NULL),
  (4060, 86, 'It didn''t say ask intelligently, but I''m', 198.560, 204.159, NULL),
  (4061, 86, 'sure it meant that. Don''t mumble. You', 201.440, 205.720, NULL),
  (4062, 86, 'don''t get anything by', 204.159, 208.720, NULL),
  (4063, 86, 'mumbling. Be clear. Be specific.', 205.720, 211.040, NULL),
  (4064, 86, 'Intelligent asking means how wide, how', 208.720, 213.360, NULL),
  (4065, 86, 'high, how soon, when, what size, what', 211.040, 215.239, NULL),
  (4066, 86, 'color, how', 213.360, 218.720, NULL),
  (4067, 86, 'much. Define what you want and describe', 215.239, 222.400, NULL),
  (4068, 86, 'what you want. That''s powerful. Goals', 218.720, 225.040, NULL),
  (4069, 86, 'become like a magnet. They pull you that', 222.400, 226.480, NULL),
  (4070, 86, 'direction. And the better you describe', 225.040, 229.440, NULL),
  (4071, 86, 'them, the more they', 226.480, 229.440, NULL),
  (4072, 86, 'pull. So ask intelligently. Here''s', 230.920, 237.159, NULL),
  (4073, 86, 'number two. Ask with', 233.519, 240.040, NULL),
  (4074, 86, 'faith. That''s the childish part of the', 237.159, 242.959, NULL),
  (4075, 86, 'equation. Believe you can get what you', 240.040, 246.000, NULL),
  (4076, 86, 'want like a', 242.959, 246.000, NULL),
  (4077, 86, 'child. Not an adult. Adults are too', 247.720, 254.599, NULL),
  (4078, 86, 'skeptical.', 251.599, 254.599, NULL),
  (4079, 86, 'So the formula really reads, make plans', 254.959, 261.560, NULL),
  (4080, 86, 'like an adult and believe in them like a', 257.680, 263.759, NULL),
  (4081, 86, 'child and the most incredible things', 261.560, 267.919, NULL),
  (4082, 86, 'will happen. Just try it for 90 days.', 263.759, 270.479, NULL),
  (4083, 86, 'Just try it. You can always go back to', 267.919, 272.880, NULL),
  (4084, 86, 'the old ways. Just try it. Just 90 days.', 270.479, 279.240, NULL),
  (4085, 86, '90 days. The world admires the doers.', 272.880, 279.240, NULL),
  (4086, 87, 'when you sit down to write, how many', 2.399, 6.640, NULL),
  (4087, 87, 'times in the first 10 minutes do you', 4.560, 8.240, NULL),
  (4088, 87, 'think your mind flits to something else?', 6.640, 9.920, NULL),
  (4089, 87, 'I mean, you''re now a pro. Like, you''ve', 8.240, 12.800, NULL),
  (4090, 87, 'written many books and you know what to', 9.920, 14.799, NULL),
  (4091, 87, 'uh what is noise and you know what is', 12.800, 16.960, NULL),
  (4092, 87, 'signal and you know if you really need', 14.799, 19.279, NULL),
  (4093, 87, 'to go to the bathroom or if you don''t,', 16.960, 20.560, NULL),
  (4094, 87, 'you know, well, these are these are the', 19.279, 22.000, NULL),
  (4095, 87, 'things that pop up, right? As you point', 20.560, 23.519, NULL),
  (4096, 87, 'out, resistance comes in. Oh, you know,', 22.000, 25.279, NULL),
  (4097, 87, 'I need another glass of water or I''m not', 23.519, 27.119, NULL),
  (4098, 87, 'caffeinated enough or there''s not enough', 25.279, 28.320, NULL),
  (4099, 87, 'sunlight coming through my window,', 27.119, 31.279, NULL),
  (4100, 87, 'whatever, right? Um, how many times in', 28.320, 33.040, NULL),
  (4101, 87, 'the first 10 minutes on a typical day,', 31.279, 34.800, NULL),
  (4102, 87, 'just give us an average. Uh, do you', 33.040, 36.640, NULL),
  (4103, 87, 'think your mind flits to', 34.800, 38.000, NULL),
  (4104, 87, '>> Yeah, like I wonder what''s going on in', 36.640, 39.440, NULL),
  (4105, 87, 'the news. That''s a great question. You', 38.000, 40.960, NULL),
  (4106, 87, 'know, like what''s going on in the world?', 39.440, 42.320, NULL),
  (4107, 87, 'I mean,', 40.960, 44.800, NULL),
  (4108, 87, '>> how many times? One,', 42.320, 46.079, NULL),
  (4109, 87, '>> two, never.', 44.800, 48.239, NULL),
  (4110, 87, '>> Never. Now, that''s not to say when I', 46.079, 50.800, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (4111, 87, 'first started many, many moons ago that', 48.239, 52.239, NULL),
  (4112, 87, 'I didn''t have a lot of that sort of', 50.800, 54.480, NULL),
  (4113, 87, 'stuff, but I have I don''t know whether', 52.239, 57.760, NULL),
  (4114, 87, 'just over the years, um I''m I''m', 54.480, 60.239, NULL),
  (4115, 87, 'absolutely a believer in, you know, like', 57.760, 62.079, NULL),
  (4116, 87, 'diving straight into the pool, you know,', 60.239, 64.239, NULL),
  (4117, 87, 'I don''t sit there for one second, you', 62.079, 65.760, NULL),
  (4118, 87, 'know, wondering what I''m going to do. I', 64.239, 68.880, NULL),
  (4119, 87, 'just plunge right in and uh, you know,', 65.760, 70.880, NULL),
  (4120, 87, 'thank goodness I''m somehow I''ve learned', 68.880, 72.880, NULL),
  (4121, 87, 'how to do it and I just focus full tilt', 70.880, 75.360, NULL),
  (4122, 87, 'on it. Uh, so yeah, I don''t I don''t have', 72.880, 76.799, NULL),
  (4123, 87, 'those thoughts at all. H', 75.360, 78.400, NULL),
  (4124, 87, '>> how long do you write in that first', 76.799, 79.200, NULL),
  (4125, 87, 'bout?', 78.400, 81.680, NULL),
  (4126, 87, '>> Um, maybe an hour.', 79.200, 83.680, NULL),
  (4127, 87, '>> Uh, and then I''ll take a little bit of a', 81.680, 84.479, NULL),
  (4128, 87, 'break.', 83.680, 87.119, NULL),
  (4129, 87, '>> Um, I love to do laundry. That''s my big', 84.479, 89.119, NULL),
  (4130, 87, 'thing, you know. I''ll go I''ll change the', 87.119, 90.560, NULL),
  (4131, 87, 'I''ll put in the laundry at the start,', 89.119, 92.000, NULL),
  (4132, 87, 'you know, and it''ll be the low the load', 90.560, 93.840, NULL),
  (4133, 87, 'will be done, then I can put it into the', 92.000, 95.360, NULL),
  (4134, 87, 'dryer. I take a little break and then I', 93.840, 97.040, NULL),
  (4135, 87, 'come back and start again for for', 95.360, 97.680, NULL),
  (4136, 87, 'another hour.', 97.040, 99.439, NULL),
  (4137, 87, '>> You enjoy it or you enjoy clean laundry', 97.680, 101.439, NULL),
  (4138, 87, 'or both? I just I enjoy the sort of the', 99.439, 103.520, NULL),
  (4139, 87, 'ritual of it and the crazyness of it,', 101.439, 103.840, NULL),
  (4140, 87, 'you know.', 103.520, 105.600, NULL),
  (4141, 87, '>> Not me. Not one bit. The only thing I', 103.840, 107.040, NULL),
  (4142, 87, 'enjoy about doing laundry is clearing', 105.600, 108.479, NULL),
  (4143, 87, 'the lint trap. There''s something very', 107.040, 110.240, NULL),
  (4144, 87, 'satisfying about I hate I don''t want to', 108.479, 110.880, NULL),
  (4145, 87, 'do that.', 110.240, 112.479, NULL),
  (4146, 87, '>> Interesting. All right. Well, we''re not', 110.880, 113.520, NULL),
  (4147, 87, 'considering, but we''d make good', 112.479, 115.119, NULL),
  (4148, 87, 'roommates.', 113.520, 118.640, NULL),
  (4149, 87, '>> Um interesting. So, for an hour, you''re', 115.119, 121.360, NULL),
  (4150, 87, 'locked in and you''re just typing. Wait.', 118.640, 123.520, NULL),
  (4151, 87, 'How often does your inner critic pop up', 121.360, 125.280, NULL),
  (4152, 87, 'nowadays versus at the beginning?', 123.520, 127.040, NULL),
  (4153, 87, 'Meaning the I don''t know if this is', 125.280, 128.959, NULL),
  (4154, 87, 'going the right direction. Um, I''ve', 127.040, 130.479, NULL),
  (4155, 87, 'heard before that you''re just supposed', 128.959, 133.120, NULL),
  (4156, 87, 'to create and then edit later. What''s', 130.479, 134.160, NULL),
  (4157, 87, 'your process there?', 133.120, 136.640, NULL),
  (4158, 87, '>> Uh, it almost never comes up. The inner', 134.160, 140.000, NULL),
  (4159, 87, 'critic again, it used to, you know, used', 136.640, 141.920, NULL),
  (4160, 87, 'to all the time was a terrible struggle', 140.000, 143.360, NULL),
  (4161, 87, 'I had for years,', 141.920, 145.120, NULL),
  (4162, 87, '>> you know, you sit down and you think,', 143.360, 146.720, NULL),
  (4163, 87, 'well, is Hemingway would Hemingway write', 145.120, 148.400, NULL),
  (4164, 87, 'this sentence, you know, right? Or or,', 146.720, 149.760, NULL),
  (4165, 87, 'you know, what will the New York Times', 148.400, 152.000, NULL),
  (4166, 87, 'think when I write, you know, but', 149.760, 153.920, NULL),
  (4167, 87, 'eventually over time you learn you just', 152.000, 155.120, NULL),
  (4168, 87, 'can''t deal with that you know?', 153.920, 156.400, NULL),
  (4169, 87, 'It drives you insane,', 155.120, 159.120, NULL),
  (4170, 87, '>> you know. So, so no, I don''t I don''t let', 156.400, 162.400, NULL),
  (4171, 87, 'that inner critic come in, you know, and', 159.120, 165.760, NULL),
  (4172, 87, 'I''m definitely a believer. Um,', 162.400, 168.000, NULL),
  (4173, 87, 'at the end of the day, I never read what', 165.760, 169.200, NULL),
  (4174, 87, 'I wrote', 168.000, 171.280, NULL),
  (4175, 87, '>> and I never look back on it the next', 169.200, 177.400, NULL),
  (4176, 87, 'day. Um, I believe in multiple duts.', 171.280, 177.400, NULL),
  (4177, 87, 'Um, this was Jack Eps, the writer of the', 180.400, 186.000, NULL),
  (4178, 87, 'original writer of Top Gun. Um, I was', 182.640, 187.680, NULL),
  (4179, 87, 'working for him on a on a movie project', 186.000, 189.680, NULL),
  (4180, 87, 'and he said he said always think in', 187.680, 193.280, NULL),
  (4181, 87, 'multiple drafts and uh and you can only', 189.680, 196.640, NULL),
  (4182, 87, 'fix so much in one draft. You can only', 193.280, 199.360, NULL),
  (4183, 87, 'fix one thing in one draft. So I usually', 196.640, 202.000, NULL),
  (4184, 87, 'will think of and I start a book maybe', 199.360, 206.239, NULL),
  (4185, 87, '13 14 15 drafts. The last seven or eight', 202.000, 208.480, NULL),
  (4186, 87, 'will be really small, you know, really', 206.239, 211.599, NULL),
  (4187, 87, 'slight changes, but I won''t look back on', 208.480, 214.239, NULL),
  (4188, 87, 'the day''s work because I figure on my', 211.599, 216.799, NULL),
  (4189, 87, 'next draft then I''ll then I''ll read it', 214.239, 219.680, NULL),
  (4190, 87, 'fresh and it''ll look a million times a', 216.799, 222.000, NULL),
  (4191, 87, 'much more clear sense. Is this any good?', 219.680, 223.440, NULL),
  (4192, 87, 'Because if you do it when it''s too', 222.000, 225.360, NULL),
  (4193, 87, 'fresh, you start to drive yourself', 223.440, 227.599, NULL),
  (4194, 87, 'crazy. You start to, you know,', 225.360, 229.360, NULL),
  (4195, 87, 'perfectionism, another form of', 227.599, 231.840, NULL),
  (4196, 87, 'resistance comes in. So, yeah, that''s', 229.360, 233.519, NULL),
  (4197, 87, 'that''s my process. I know a lot of other', 231.840, 234.879, NULL),
  (4198, 87, 'people don''t do it that way, but that''s', 233.519, 237.120, NULL),
  (4199, 87, 'the way I do it. I never when the when', 234.879, 240.000, NULL),
  (4200, 87, 'the day is done, the the bell rings, the', 237.120, 242.640, NULL),
  (4201, 87, 'office is closed, that''s it. I turn off', 240.000, 244.959, NULL),
  (4202, 87, 'my mind and just let you let the muse', 242.640, 247.200, NULL),
  (4203, 87, 'take care of it overnight and I don''t I', 244.959, 249.040, NULL),
  (4204, 87, 'try not to worry about it at all. All I', 247.200, 250.959, NULL),
  (4205, 87, 'ask myself, I know I''m getting into the', 249.040, 252.720, NULL),
  (4206, 87, 'weeds here really. No, it''s very', 250.959, 253.840, NULL),
  (4207, 87, 'important that you get into the weeds', 252.720, 256.160, NULL),
  (4208, 87, 'because I think um you''ve offered many', 253.840, 259.440, NULL),
  (4209, 87, 'times through books and other podcasts', 256.160, 262.320, NULL),
  (4210, 87, 'the the contour and and a lot of depth,', 259.440, 264.479, NULL),
  (4211, 87, 'but I think the more detail the better', 262.320, 266.080, NULL),
  (4212, 87, 'because everyone will do it slightly', 264.479, 267.280, NULL),
  (4213, 87, 'differently,', 266.080, 269.600, NULL),
  (4214, 87, '>> but I think it''s very important. We', 267.280, 272.080, NULL),
  (4215, 87, 'rarely hear what people''s real process', 269.600, 273.919, NULL),
  (4216, 87, 'is. So, please don''t don''t edit yourself', 272.080, 276.720, NULL),
  (4217, 87, 'here. At the end of the a day''s session,', 273.919, 279.919, NULL),
  (4218, 87, 'all I ask myself is did I put in the', 276.720, 283.919, NULL),
  (4219, 87, 'time and did I work as hard as I can.', 279.919, 286.320, NULL),
  (4220, 87, 'Quality will take care of itself later', 283.919, 287.840, NULL),
  (4221, 87, 'in the next draft and the next draft', 286.320, 290.320, NULL),
  (4222, 87, 'after that. But I''d never judge it, you', 287.840, 292.240, NULL),
  (4223, 87, 'know. And it took a long long time to', 290.320, 293.919, NULL),
  (4224, 87, 'get to that place to learn that, you', 292.240, 295.520, NULL),
  (4225, 87, 'know, because I would drive myself', 293.919, 298.160, NULL),
  (4226, 87, 'insane for years and years judging along', 295.520, 299.680, NULL),
  (4227, 87, 'the way.', 298.160, 302.320, NULL),
  (4228, 87, 'How long is the total writing session at', 299.680, 303.600, NULL),
  (4229, 87, 'depending on how much laundry you have', 302.320, 303.919, NULL),
  (4230, 87, 'to?', 303.600, 305.680, NULL),
  (4231, 87, '>> Great question. I used to be able to', 303.919, 308.240, NULL),
  (4232, 87, 'write for four hours. Now I can only', 305.680, 310.720, NULL),
  (4233, 87, 'write for about two. What I tell myself,', 308.240, 312.080, NULL),
  (4234, 87, 'and I think it''s true, is that I can do', 310.720, 313.919, NULL),
  (4235, 87, 'in two hours now what I used to do in', 312.080, 314.720, NULL),
  (4236, 87, 'four.', 313.919, 318.240, NULL),
  (4237, 87, '>> Um, but I stop when I start making', 314.720, 321.520, NULL),
  (4238, 87, 'mistakes. When I start having typos and', 318.240, 323.039, NULL),
  (4239, 87, 'things like that, then it''s kind of like', 321.520, 324.400, NULL),
  (4240, 87, 'a workout at the gym. You know, when', 323.039, 325.840, NULL),
  (4241, 87, 'you''ve reached the end, you know, I''m', 324.400, 327.280, NULL),
  (4242, 87, 'just going to hurt myself if I do', 325.840, 329.840, NULL),
  (4243, 87, 'another set, you know? um the point of', 327.280, 331.840, NULL),
  (4244, 87, 'diminishing returns. So when I get', 329.840, 334.080, NULL),
  (4245, 87, 'tired, I stop and I don''t question it at', 331.840, 336.160, NULL),
  (4246, 87, 'all. I don''t say I don''t make myself', 334.080, 337.840, NULL),
  (4247, 87, 'feel bad about, oh, you can get another', 336.160, 341.280, NULL),
  (4248, 87, '10 minutes. Um like Steinbeck used to', 337.840, 345.919, NULL),
  (4249, 87, 'say that um pressing forward at the end', 341.280, 347.680, NULL),
  (4250, 87, 'of a long day to get just a little bit', 345.919, 351.360, NULL),
  (4251, 87, 'more is the falsest kind of economy', 347.680, 354.720, NULL),
  (4252, 87, 'because you pay for it the next day. And', 351.360, 356.320, NULL),
  (4253, 87, 'Hemingway used to say he always stopped', 354.720, 358.240, NULL),
  (4254, 87, 'when he knew what was coming next in the', 356.320, 360.479, NULL),
  (4255, 87, 'story which I also believe in that too', 358.240, 363.520, NULL),
  (4256, 87, 'cuz that''ll help you in that hairy first', 360.479, 365.360, NULL),
  (4257, 87, 'moment when you''re sitting down cuz at', 363.520, 366.960, NULL),
  (4258, 87, 'least you know oh okay this is what''s', 365.360, 367.520, NULL),
  (4259, 87, 'going to happen.', 366.960, 369.199, NULL),
  (4260, 87, '>> Ah so you leave sort of an ellipse in', 367.520, 370.960, NULL),
  (4261, 87, 'your mind so the next morning you know', 369.199, 372.479, NULL),
  (4262, 87, 'exactly where to pick up and that the', 370.960, 374.000, NULL),
  (4263, 87, 'entry point is a little easier.', 372.479, 375.440, NULL),
  (4264, 87, '>> Yeah. Exactly. Yeah.', 374.000, 378.800, NULL),
  (4265, 87, '>> The analogy to uh working out is a great', 375.440, 380.960, NULL),
  (4266, 87, 'one. Um,', 378.800, 382.720, NULL),
  (4267, 87, 'years ago when I started resistance', 380.960, 384.479, NULL),
  (4268, 87, 'training, I learned from Mike Menser. I', 382.720, 385.600, NULL),
  (4269, 87, 'don''t know if you ever overlapped with', 384.479, 387.840, NULL),
  (4270, 87, 'Mike at Golds. No, he he died some years', 385.600, 388.160, NULL),
  (4271, 87, 'ago.', 387.840, 389.520, NULL),
  (4272, 87, '>> Just interrupt for a second. They call', 388.160, 392.400, NULL),
  (4273, 87, 'it resistance training, which is exactly', 389.520, 394.160, NULL),
  (4274, 87, 'what we were talking about for art.', 392.400, 395.600, NULL),
  (4275, 87, 'Yeah. So, but please continue.', 394.160, 398.319, NULL),
  (4276, 87, '>> Yeah. Excellent point, Noah, please. Um,', 395.600, 399.680, NULL),
  (4277, 87, 'you know, there are a lot of theories', 398.319, 401.520, NULL),
  (4278, 87, 'out there about resistance training and', 399.680, 403.199, NULL),
  (4279, 87, 'how best to get muscles to grow and to', 401.520, 405.440, NULL),
  (4280, 87, 'get stronger, etc. At one extreme is,', 403.199, 406.880, NULL),
  (4281, 87, 'you know, you warm up and then you do', 405.440, 409.120, NULL),
  (4282, 87, 'one set to absolute failure, maybe a', 406.880, 410.319, NULL),
  (4283, 87, 'second set you push through. That''s kind', 409.120, 412.720, NULL),
  (4284, 87, 'of the mener high intensity thing. At', 410.319, 414.639, NULL),
  (4285, 87, 'the other extreme is it''s volume, just', 412.720, 416.560, NULL),
  (4286, 87, 'lots and lots and lots of sets. There''s', 414.639, 419.280, NULL),
  (4287, 87, 'been debate about this endlessly and has', 416.560, 421.360, NULL),
  (4288, 87, 'to do with all sorts of factors.', 419.280, 423.440, NULL),
  (4289, 87, '>> But the literature is now coming to a', 421.360, 424.720, NULL),
  (4290, 87, 'place where it''s pretty clear that after', 423.440, 427.120, NULL),
  (4291, 87, 'warming up, the first one or two sets', 424.720, 428.720, NULL),
  (4292, 87, 'that you do are really the most valuable', 427.120, 430.639, NULL),
  (4293, 87, 'of a given exercise. And I didn''t know', 428.720, 430.960, NULL),
  (4294, 87, 'that', 430.639, 432.400, NULL),
  (4295, 87, '>> almost certainly you need more than one', 430.960, 435.360, NULL),
  (4296, 87, 'set. Um, overall you certainly do, but', 432.400, 436.800, NULL),
  (4297, 87, 'that it''s really the intensity that you', 435.360, 438.880, NULL),
  (4298, 87, 'bring. But here''s the the point that is', 436.800, 440.319, NULL),
  (4299, 87, 'strongly analogous to what you''re', 438.880, 442.240, NULL),
  (4300, 87, 'talking about when you say you used to', 440.319, 443.919, NULL),
  (4301, 87, 'be able to write for four hours a day.', 442.240, 445.680, NULL),
  (4302, 87, 'Now you do two and you tell yourself', 443.919, 447.599, NULL),
  (4303, 87, 'that you accomplish the same amount in', 445.680, 449.440, NULL),
  (4304, 87, 'those two. That''s almost certainly true', 447.599, 451.199, NULL),
  (4305, 87, 'based on what we understand about', 449.440, 453.599, NULL),
  (4306, 87, 'neuroscience and believe it or not', 451.199, 455.599, NULL),
  (4307, 87, 'resistance training in the gym. And the', 453.599, 459.039, NULL),
  (4308, 87, 'the argument is that as you resistance', 455.599, 461.120, NULL),
  (4309, 87, 'train or write', 459.039, 465.680, NULL),
  (4310, 87, '>> or play volleyball or do any activity,', 461.120, 469.120, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (4311, 87, 'you develop a better ability to recruit', 465.680, 472.240, NULL),
  (4312, 87, 'your nervous system to do the necessary', 469.120, 474.000, NULL),
  (4313, 87, 'work. You said you didn''t used to be', 472.240, 476.080, NULL),
  (4314, 87, 'able to just sit down and focus for an', 474.000, 478.319, NULL),
  (4315, 87, 'hour with minimal interruption in your', 476.080, 481.440, NULL),
  (4316, 87, 'mind. Now you can. You learned that', 478.319, 483.599, NULL),
  (4317, 87, 'the more intensity that we can bring to', 481.440, 485.120, NULL),
  (4318, 87, 'something, the more focus we can bring', 483.599, 488.400, NULL),
  (4319, 87, 'to something, the more taxing it is.', 485.120, 491.120, NULL),
  (4320, 87, '>> Like if I do one set in the gym with', 488.400, 493.840, NULL),
  (4321, 87, 'total concentration to absolute failure,', 491.120, 495.440, NULL),
  (4322, 87, 'which is very difficult to do when you', 493.840, 496.720, NULL),
  (4323, 87, 'first start training. You barely know', 495.440, 498.720, NULL),
  (4324, 87, 'how to do the movement, right? You''re', 496.720, 500.000, NULL),
  (4325, 87, 'still learning. Your nervous system is', 498.720, 501.919, NULL),
  (4326, 87, 'still learning. You can''t inflict the', 500.000, 504.319, NULL),
  (4327, 87, 'same stimulus', 501.919, 507.280, NULL),
  (4328, 87, '>> with one set that you uh that you can', 504.319, 508.879, NULL),
  (4329, 87, 'later after you''re practiced.', 507.280, 509.599, NULL),
  (4330, 87, '>> Makes a lot of sense.', 508.879, 511.039, NULL),
  (4331, 87, '>> And so there''s this counterintuitive', 509.599, 512.159, NULL),
  (4332, 87, 'thing that people in the high', 511.039, 514.560, NULL),
  (4333, 87, 'performance field are really starting to', 512.159, 516.479, NULL),
  (4334, 87, 'adopt. And I talked to people in a bunch', 514.560, 517.760, NULL),
  (4335, 87, 'of different high performance fields,', 516.479, 520.000, NULL),
  (4336, 87, 'not just exercise and creative works,', 517.760, 521.839, NULL),
  (4337, 87, 'that the better you get at something,', 520.000, 525.839, NULL),
  (4338, 87, 'the shorter your real workouts should be', 521.839, 527.600, NULL),
  (4339, 87, '>> and the more intense they should be.', 525.839, 528.800, NULL),
  (4340, 87, 'It''s almost like a knife that''s getting', 527.600, 530.320, NULL),
  (4341, 87, 'sharper and sharper. you can cut deeper', 528.800, 531.920, NULL),
  (4342, 87, 'and deeper whereas at the beginning we', 530.320, 533.760, NULL),
  (4343, 87, 'have sort of a dull blade and we have to', 531.920, 537.760, NULL),
  (4344, 87, 'you know route over the same path. So', 533.760, 540.720, NULL),
  (4345, 87, '>> I think this is a nervous system feature', 537.760, 542.640, NULL),
  (4346, 87, '>> and that''s why it transcends physical', 540.720, 545.920, NULL),
  (4347, 87, 'and mental creative and other types of', 542.640, 546.720, NULL),
  (4348, 87, 'works.', 545.920, 548.399, NULL),
  (4349, 87, '>> Um because if you talk to great', 546.720, 550.880, NULL),
  (4350, 87, 'musicians, they''re not practicing 11', 548.399, 553.120, NULL),
  (4351, 87, 'hours a day anymore. They''re practicing', 550.880, 556.640, NULL),
  (4352, 87, 'for three or four extremely focused', 553.120, 558.880, NULL),
  (4353, 87, 'hours, sometimes divided up by naps and', 556.640, 562.160, NULL),
  (4354, 87, 'meals, you know, the So, in any case,', 558.880, 564.480, NULL),
  (4355, 87, '>> so you so you put in your two very', 562.160, 566.880, NULL),
  (4356, 87, 'focused hours with some laundry in', 564.480, 567.360, NULL),
  (4357, 87, 'between.', 566.880, 567.839, NULL),
  (4358, 87, '>> Yeah.', 567.360, 570.720, NULL),
  (4359, 87, '>> And then you you rack it, you hang it', 567.839, 572.880, NULL),
  (4360, 87, 'up, and you don''t look at it. Are you', 570.720, 574.640, NULL),
  (4361, 87, 'thinking about it throughout the day?', 572.880, 577.279, NULL),
  (4362, 87, '>> Um, no. But like we were talking about,', 574.640, 579.839, NULL),
  (4363, 87, 'if an idea comes to me, then I grab my', 577.279, 582.880, NULL),
  (4364, 87, 'phone and I dictate that. And let me say', 579.839, 584.560, NULL),
  (4365, 87, 'one thing here for anybody that''s', 582.880, 586.800, NULL),
  (4366, 87, 'listening to this and would be want to', 584.560, 590.560, NULL),
  (4367, 87, 'be writers, aspiring writers. Um, so I''m', 586.800, 592.240, NULL),
  (4368, 87, 'a full-time writer. I don''t have another', 590.560, 594.320, NULL),
  (4369, 87, 'job. I don''t have to do anything. But', 592.240, 598.399, NULL),
  (4370, 87, 'yet I can only get two hours of time', 594.320, 601.200, NULL),
  (4371, 87, 'basically in the day. So, if you guys', 598.399, 604.080, NULL),
  (4372, 87, 'have a full-time job and kids and a', 601.200, 605.440, NULL),
  (4373, 87, 'family and a wife and a spouse,', 604.080, 607.680, NULL),
  (4374, 87, 'whatever, if you can squeeze out a', 605.440, 610.080, NULL),
  (4375, 87, 'couple hours a day, you''re doing you''re', 607.680, 612.480, NULL),
  (4376, 87, 'on the same level with me, same level', 610.080, 614.640, NULL),
  (4377, 87, 'with a with a full-time writer. So, that', 612.480, 618.160, NULL),
  (4378, 87, 'it is possible to uh have a full-time', 614.640, 621.120, NULL),
  (4379, 87, 'job and still do do a your artistic', 618.160, 624.560, NULL),
  (4380, 87, 'thing to a full tilt version.', 621.120, 626.880, NULL),
  (4381, 87, '>> Excellent point. How important do you', 624.560, 629.680, NULL),
  (4382, 87, 'think it is for you to start that', 626.880, 632.240, NULL),
  (4383, 87, 'writing session at more or less the same', 629.680, 634.160, NULL),
  (4384, 87, 'time each day? You''re not saying two', 632.240, 635.839, NULL),
  (4385, 87, 'hours in the morning or two hours in the', 634.160, 638.320, NULL),
  (4386, 87, 'evening. Two hours in the morning or', 635.839, 639.519, NULL),
  (4387, 87, 'hour in the morning, hour in the', 638.320, 640.959, NULL),
  (4388, 87, 'afternoon. It sounds like it''s very', 639.519, 641.680, NULL),
  (4389, 87, 'regimented.', 640.959, 643.760, NULL),
  (4390, 87, '>> It it is. I think it''s really important.', 641.680, 648.079, NULL),
  (4391, 87, 'And when life was more predictable for', 643.760, 651.200, NULL),
  (4392, 87, 'me, I would always do it. But like since', 648.079, 654.560, NULL),
  (4393, 87, 'the fires and other things like that,', 651.200, 658.000, NULL),
  (4394, 87, 'um, sometimes I have to shift time', 654.560, 660.800, NULL),
  (4395, 87, 'frames around and be ready to do that,', 658.000, 663.839, NULL),
  (4396, 87, 'you know. Um, I have a good friend Jack', 660.800, 665.920, NULL),
  (4397, 87, 'Carr, the thriller writer who did the', 663.839, 668.560, NULL),
  (4398, 87, 'terminal list and and uh, you know, he''s', 665.920, 671.600, NULL),
  (4399, 87, 'uh, he''s a master of writing in', 668.560, 674.320, NULL),
  (4400, 87, 'airplanes and writing at Starbucks', 671.600, 676.160, NULL),
  (4401, 87, 'because he''s always traveling and doing', 674.320, 678.800, NULL),
  (4402, 87, 'all kinds of stuff and just finding the', 676.160, 681.040, NULL),
  (4403, 87, 'time. God bless him. I don''t know how he', 678.800, 684.000, NULL),
  (4404, 87, 'does it, you know, to and and he is', 681.040, 687.600, NULL),
  (4405, 87, 'incredibly productive. Um, I I don''t I', 684.000, 689.680, NULL),
  (4406, 87, 'don''t know if I could do that. I maybe', 687.600, 692.560, NULL),
  (4407, 87, 'my I will shift from writing from 11 to', 689.680, 695.519, NULL),
  (4408, 87, '1 to writing from one to three but', 692.560, 699.120, NULL),
  (4409, 87, 'that''s about the the most you know uh', 695.519, 701.200, NULL),
  (4410, 87, 'variance I can put into it.', 699.120, 703.680, NULL),
  (4411, 87, '>> Do you have your phone in the room when', 701.200, 706.079, NULL),
  (4412, 87, 'you write and is the internet engaged on', 703.680, 708.880, NULL),
  (4413, 87, 'your computer? Not at all, you know. No.', 706.079, 711.120, NULL),
  (4414, 87, 'I mean, my phone is there maybe to', 708.880, 713.040, NULL),
  (4415, 87, 'dictate a note or something like that,', 711.120, 714.560, NULL),
  (4416, 87, 'but otherwise, no. I, you know,', 713.040, 717.279, NULL),
  (4417, 87, 'absolutely not. And, and uh, yeah, I', 714.560, 719.279, NULL),
  (4418, 87, 'can''t even imagine that', 717.279, 720.399, NULL),
  (4419, 87, '>> music.', 719.279, 721.920, NULL),
  (4420, 87, '>> No. No music. No.', 720.399, 723.519, NULL),
  (4421, 87, '>> Just the sound of your own breathing.', 721.920, 724.000, NULL),
  (4422, 87, '>> Yeah. Yeah.', 723.519, 724.959, NULL),
  (4423, 87, '>> Yeah. What''s that?', 724.000, 726.240, NULL),
  (4424, 87, '>> Cuz you''re in your own head, right?', 724.959, 730.410, NULL),
  (4425, 87, 'You''re in that universe, you know?', 726.240, 738.070, NULL),
  (4426, 87, '[Music]', 730.410, 738.070, NULL),
  (4427, 88, 'Translator: Oriel Yu
Reviewer: Queenie Lee', 0.000, 7.000, NULL),
  (4428, 88, 'By a show of hands.', 10.134, 11.454, NULL),
  (4429, 88, 'How many of you believe you
could replicate this image of Brad Pitt', 11.454, 15.019, NULL),
  (4430, 88, 'with just a pencil and piece of paper?', 15.019, 17.535, NULL),
  (4431, 88, 'Well, I''m going to show you
how to do this.', 17.964, 20.464, NULL),
  (4432, 88, 'And in so doing,', 21.151, 22.281, NULL),
  (4433, 88, 'I''m going to give you the skill necessary', 22.281, 24.591, NULL),
  (4434, 88, 'to become a world-class artist.', 24.591, 27.207, NULL),
  (4435, 88, 'And it shouldn''t take
more than about 15 seconds.', 27.207, 30.067, NULL),
  (4436, 88, 'But before I do that,', 30.459, 31.839, NULL),
  (4437, 88, 'how many of you believe
you could replicate this image', 31.839, 34.620, NULL),
  (4438, 88, 'of a solid gray square?', 34.620, 36.180, NULL),
  (4439, 88, '(Laughter)', 36.180, 37.242, NULL),
  (4440, 88, 'Every one of us.', 37.242, 38.512, NULL),
  (4441, 88, 'And if you can make one gray square,', 38.512, 40.250, NULL),
  (4442, 88, 'you can make two, three, nine ...', 40.250, 43.270, NULL),
  (4443, 88, 'Truth of the matter is,', 43.270, 44.623, NULL),
  (4444, 88, 'if you could made just one gray square,', 44.623, 46.543, NULL),
  (4445, 88, 'it''d be very difficult to argue', 46.543, 48.597, NULL),
  (4446, 88, 'that you couldn''t make
every gray square necessary', 48.597, 52.139, NULL),
  (4447, 88, 'to replicate the image in its entirety.', 52.139, 54.499, NULL),
  (4448, 88, 'And there you have it.', 55.245, 56.545, NULL),
  (4449, 88, 'I''ve just given you the skills necessary
to become a world-class artist.', 56.545, 60.458, NULL),
  (4450, 88, '(Laughter)', 60.458, 61.638, NULL),
  (4451, 88, 'I know what you''re thinking.', 61.638, 63.128, NULL),
  (4452, 88, '"That''s not real art,', 63.128, 64.344, NULL),
  (4453, 88, 'certainly wouldn''t make me
a world-class artist."', 64.344, 67.019, NULL),
  (4454, 88, 'So let me introduce you to Chuck Close.', 67.552, 69.962, NULL),
  (4455, 88, 'He''s one of the highest-earning artists
in the entire world, for decades,', 69.962, 74.272, NULL),
  (4456, 88, 'he creates his art
using this exact technique.', 74.272, 77.367, NULL),
  (4457, 88, 'You see, what stands between us', 78.167, 80.187, NULL),
  (4458, 88, 'and achieving even
our most ambitious dreams', 80.187, 83.097, NULL),
  (4459, 88, 'has far less to do with possessing
some magical skill or talent,', 83.097, 87.097, NULL),
  (4460, 88, 'and far more to do with
how we approach problems', 87.592, 90.472, NULL),
  (4461, 88, 'and make decisions to solve them.', 90.472, 92.472, NULL),
  (4462, 88, 'And because of the continuous
and compounding nature', 93.193, 95.953, NULL),
  (4463, 88, 'of all those millions of decisions', 95.953, 98.092, NULL),
  (4464, 88, 'that we face on a regular basis,', 98.092, 100.332, NULL),
  (4465, 88, 'even a marginal improvement in our process', 100.332, 102.752, NULL),
  (4466, 88, 'can have a huge impact on our end results.', 103.364, 105.774, NULL),
  (4467, 88, 'And I''ll prove this to you', 105.774, 107.324, NULL),
  (4468, 88, 'by taking a look at
the career of Novak Djokovic.', 107.324, 109.939, NULL),
  (4469, 88, 'Back in 2004,', 110.336, 111.586, NULL),
  (4470, 88, 'when he first became
a professional tennis player,', 111.586, 114.126, NULL),
  (4471, 88, 'he was ranked 680th in the world.', 114.126, 116.473, NULL),
  (4472, 88, 'It wasn''t until the end of his third year', 116.794, 118.984, NULL),
  (4473, 88, 'that he jumped up
to be ranked third in the world.', 118.984, 122.914, NULL),
  (4474, 88, 'He went from making 250,000 a year
to 5 million a year,', 122.914, 126.663, NULL),
  (4475, 88, 'in prize money alone,', 127.144, 128.314, NULL),
  (4476, 88, 'and of course, he did this
by winning more matches.', 128.314, 131.594, NULL),
  (4477, 88, 'In 2011, he became the number one
ranked men''s tennis player in the world,', 131.594, 135.634, NULL),
  (4478, 88, 'started earning an average
of 14 million a year in prize money alone', 135.634, 139.804, NULL),
  (4479, 88, 'and winning a dominating
90% of his matches.', 139.804, 143.114, NULL),
  (4480, 88, 'Now, here''s what''s really interesting', 143.114, 145.394, NULL),
  (4481, 88, 'about all of these very
impressive statistics.', 145.394, 148.444, NULL),
  (4482, 88, 'Novak doesn''t control any of them.', 148.444, 151.134, NULL),
  (4483, 88, 'What he does control
are all the tiny little decisions', 151.134, 154.464, NULL),
  (4484, 88, 'that he needs to make
correctly along the way', 154.464, 157.101, NULL),
  (4485, 88, 'in order to move the probability', 157.101, 160.011, NULL),
  (4486, 88, 'in favor of him achieving
these types of results.', 160.011, 163.251, NULL),
  (4487, 88, 'And we can quantify and track
his progress in this area', 163.251, 166.684, NULL),
  (4488, 88, 'by taking a look at the percentage
of points that he wins.', 166.684, 169.914, NULL),
  (4489, 88, 'Because in tennis', 169.914, 171.124, NULL),
  (4490, 88, 'the typical point involves
one to maybe three decisions,', 171.124, 174.728, NULL),
  (4491, 88, 'I like to refer to this
as his decision success rate.', 175.116, 178.557, NULL),
  (4492, 88, 'So, back when he was winning
about 49% of the matches he was playing,', 178.557, 183.656, NULL),
  (4493, 88, 'he was winning about 49%
of the points he played.', 183.656, 186.996, NULL),
  (4494, 88, 'Then to jump up,
become number three in the world,', 186.996, 189.347, NULL),
  (4495, 88, 'and actually earn
five million dollars a year', 189.347, 191.779, NULL),
  (4496, 88, 'for swinging a racquet,', 191.779, 193.379, NULL),
  (4497, 88, 'he had to improve
his decision success rate', 193.379, 195.801, NULL),
  (4498, 88, 'to just 52 percent.', 195.801, 197.565, NULL),
  (4499, 88, 'Then to become not just number one', 198.502, 200.416, NULL),
  (4500, 88, 'but maybe one of the greatest players
to ever play the game,', 200.416, 203.759, NULL),
  (4501, 88, 'he had to improve
his decision success rate', 203.759, 206.099, NULL),
  (4502, 88, 'to just 55 percent.', 206.099, 208.186, NULL),
  (4503, 88, 'And I keep using this word "just."', 208.186, 210.254, NULL),
  (4504, 88, 'I don''t want to imply this is easy to do,', 210.254, 212.353, NULL),
  (4505, 88, 'clearly, it''s not.', 212.353, 213.505, NULL),
  (4506, 88, 'But the type of marginal improvements
that I''m talking about', 213.505, 216.745, NULL),
  (4507, 88, 'are easily achievable
by every single one of us in this room.', 216.745, 220.805, NULL),
  (4508, 88, 'And I''ll show you what I mean.', 220.805, 222.790, NULL),
  (4509, 88, 'From kindergarten, all the way
through to my high school graduation -', 223.674, 227.577, NULL),
  (4510, 88, 'yes, that''s high school
graduation for me -', 227.577, 229.977, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (4511, 88, '(Laughter)', 229.977, 231.118, NULL),
  (4512, 88, 'every one of my report cards
basically said the same thing:', 231.118, 234.441, NULL),
  (4513, 88, 'Steven is a very bright young boy,', 234.441, 236.558, NULL),
  (4514, 88, 'if only he would just
settle down and focus.', 236.558, 239.490, NULL),
  (4515, 88, 'What they didn''t realize was I wanted that', 240.252, 243.212, NULL),
  (4516, 88, 'even more than they wanted it for me,', 243.212, 245.631, NULL),
  (4517, 88, 'I just couldn''t.', 245.631, 246.812, NULL),
  (4518, 88, 'And so, from kindergarten
straight through the 2nd year of college,', 247.371, 251.251, NULL),
  (4519, 88, 'I was a really consistent C, C- student.', 251.251, 255.321, NULL),
  (4520, 88, 'But then going into my junior year,', 255.321, 257.011, NULL),
  (4521, 88, 'I''d had enough.', 257.011, 258.342, NULL),
  (4522, 88, 'I thought I want to make a change.', 258.342, 259.961, NULL),
  (4523, 88, 'I''m going to make a marginal adjustment,', 259.961, 261.984, NULL),
  (4524, 88, 'and I''m going to stop being a spectator
of my decision-making', 261.984, 264.923, NULL),
  (4525, 88, 'and start becoming an active participant.', 264.923, 267.828, NULL),
  (4526, 88, 'And so, that year,', 267.828, 269.548, NULL),
  (4527, 88, 'instead of pretending, again,', 269.548, 271.682, NULL),
  (4528, 88, 'that I would suddenly be able
to settle down and focus on things', 271.682, 274.784, NULL),
  (4529, 88, 'for more than five
or ten minutes at a time,', 274.784, 277.353, NULL),
  (4530, 88, 'I decided to assume I wouldn''t.', 277.353, 279.883, NULL),
  (4531, 88, 'And so, if I wanted to achieve
the type of outcome that I desire -', 280.464, 284.503, NULL),
  (4532, 88, 'doing well in school -', 284.503, 286.048, NULL),
  (4533, 88, 'I was going to actually
have to change my approach.', 286.048, 288.974, NULL),
  (4534, 88, 'And so I made a marginal adjustment.', 288.974, 291.204, NULL),
  (4535, 88, 'If I would get an assignment,
let''s say, read five chapters in a book,', 291.204, 294.993, NULL),
  (4536, 88, 'I wouldn''t think of it as five chapters,', 294.993, 296.904, NULL),
  (4537, 88, 'I wouldn''t even think of it
as one chapter.', 296.904, 298.903, NULL),
  (4538, 88, 'I would break it down into these tasks
that I could achieve,', 298.903, 302.754, NULL),
  (4539, 88, 'that would require me to focus
for just five or ten minutes at a time.', 302.754, 306.683, NULL),
  (4540, 88, 'So, maybe three or four paragraphs.', 306.683, 308.652, NULL),
  (4541, 88, 'That''s it.', 308.652, 309.523, NULL),
  (4542, 88, 'I would do that and when I was done
with those five or ten minutes,', 309.523, 312.973, NULL),
  (4543, 88, 'I would get up.', 312.973, 313.985, NULL),
  (4544, 88, 'I''d go shoot some hoops,
do a little drawing,', 313.985, 316.108, NULL),
  (4545, 88, 'maybe play video games for a few minutes,', 316.108, 318.272, NULL),
  (4546, 88, 'and then I come back.', 318.272, 319.852, NULL),
  (4547, 88, 'Not necessarily to the same assignment,', 319.852, 321.722, NULL),
  (4548, 88, 'not even necessarily to the same subject,', 321.722, 324.415, NULL),
  (4549, 88, 'but just to another task that required
just five to ten minutes of my attention.', 324.415, 328.584, NULL),
  (4550, 88, 'From that point forward,', 328.904, 330.484, NULL),
  (4551, 88, 'all the way through to graduation,', 330.484, 332.232, NULL),
  (4552, 88, 'I was a straight-A student, Dean''s List,', 332.232, 335.048, NULL),
  (4553, 88, 'President''s Honor Roll, every semester.', 335.048, 337.889, NULL),
  (4554, 88, 'I then went on to one of the top
graduate programs in the world', 337.889, 341.590, NULL),
  (4555, 88, 'for finance and economics.', 341.590, 343.530, NULL),
  (4556, 88, 'Same approach, same results.', 343.530, 345.850, NULL),
  (4557, 88, 'So then, I graduate.', 346.550, 348.298, NULL),
  (4558, 88, 'I start my career and I''m thinking,', 348.298, 350.465, NULL),
  (4559, 88, 'this worked really well for me.', 350.465, 352.300, NULL),
  (4560, 88, 'You know, you take these big concepts,', 352.300, 354.720, NULL),
  (4561, 88, 'these complex ideas,
these big assignments,', 354.720, 357.330, NULL),
  (4562, 88, 'you break them down
too much more manageable tasks,', 357.330, 360.635, NULL),
  (4563, 88, 'and then along the way,', 360.635, 361.815, NULL),
  (4564, 88, 'you make a marginal
improvement to the process', 361.815, 364.044, NULL),
  (4565, 88, 'that ups the odds
of success in your favor.', 364.044, 366.538, NULL),
  (4566, 88, 'I''m going to try and do this in my career.', 366.538, 369.023, NULL),
  (4567, 88, 'So I did.', 369.023, 370.126, NULL),
  (4568, 88, 'I started out as an exotic
derivatives trader for credit Swiss.', 370.126, 373.695, NULL),
  (4569, 88, 'It then led me to be global head
of currency option trading', 373.695, 376.625, NULL),
  (4570, 88, 'for Bank of America,', 376.625, 377.985, NULL),
  (4571, 88, 'global head of emerging markets
for AIG international.', 377.985, 381.156, NULL),
  (4572, 88, 'It helped me deliver top-tier returns', 381.156, 383.657, NULL),
  (4573, 88, 'as a global macro hedge fund
manager for 12 years', 383.657, 387.124, NULL),
  (4574, 88, 'and to become founder and CIO
of two award-winning hedge funds.', 387.124, 391.485, NULL),
  (4575, 88, 'So it gets to 2001,', 391.966, 393.904, NULL),
  (4576, 88, 'and I''m thinking, this whole idea,', 393.904, 397.146, NULL),
  (4577, 88, 'it worked really well in school,', 397.146, 399.001, NULL),
  (4578, 88, 'it''s been serving me well
as a professional,', 399.001, 401.681, NULL),
  (4579, 88, 'why aren''t I applying this
in my personal life,', 402.168, 404.715, NULL),
  (4580, 88, 'like to all those big ambitious goals
I have for myself?', 404.715, 407.915, NULL),
  (4581, 88, 'So one day, I''m walking to work,', 408.811, 410.481, NULL),
  (4582, 88, 'and at the time my commute', 410.481, 412.699, NULL),
  (4583, 88, 'was a walk from one end
of Hyde Park to the other, in London.', 412.699, 416.238, NULL),
  (4584, 88, 'It took me about 45 minutes each way,', 416.238, 419.958, NULL),
  (4585, 88, 'an hour and a half a day,
seven and a half hours a week,', 419.958, 423.039, NULL),
  (4586, 88, '30 hours a month, 360 hours a year,', 423.039, 426.109, NULL),
  (4587, 88, 'when I was awake, aware,
basically wasting time,', 426.109, 430.040, NULL),
  (4588, 88, 'listening to music on my iPod.', 430.616, 432.736, NULL),
  (4589, 88, 'So on my way home from work that day
I stopped at the store.', 433.126, 436.688, NULL),
  (4590, 88, 'I picked up the first 33 CDs
in the Pimsleur German language program,', 436.688, 441.034, NULL),
  (4591, 88, 'ripped them and put them onto my iPod.', 441.034, 443.425, NULL),
  (4592, 88, 'But I didn''t stop there.', 443.425, 445.295, NULL),
  (4593, 88, 'Because the truth of the matter is,
I''m an undisciplined person.', 445.295, 448.705, NULL),
  (4594, 88, 'And I knew that at some point,', 448.705, 451.158, NULL),
  (4595, 88, 'I''d switch away from the language
and go back to the music.', 451.158, 454.948, NULL),
  (4596, 88, 'So I removed that temptation
by removing all of the music.', 454.948, 458.316, NULL),
  (4597, 88, 'That left me with just one option:', 458.956, 461.086, NULL),
  (4598, 88, 'listen to the language tapes.', 461.086, 463.137, NULL),
  (4599, 88, 'So ten months later,
I''d listened to all 99 CDs', 463.137, 466.193, NULL),
  (4600, 88, 'in the German language program,', 466.193, 467.866, NULL),
  (4601, 88, 'listened to each one three times each.', 467.866, 470.097, NULL),
  (4602, 88, 'And I went to Berlin for a 16-day
intensive German course.', 470.097, 473.866, NULL),
  (4603, 88, 'When I was done, I invited my wife
and kids to meet me.', 474.586, 477.868, NULL),
  (4604, 88, 'We walked around the city.', 477.868, 479.136, NULL),
  (4605, 88, 'I spoke German to the Germans,
they spoke German back to me.', 479.136, 482.816, NULL),
  (4606, 88, 'My kids were amazed.', 482.816, 484.799, NULL),
  (4607, 88, '(Laughter)', 484.799, 486.069, NULL),
  (4608, 88, 'I mean they couldn''t close their jaws.', 486.069, 488.988, NULL),
  (4609, 88, 'But you and I, we know,', 488.988, 491.099, NULL),
  (4610, 88, 'there is actually nothing amazing
about what I''ve just done.', 491.099, 494.700, NULL),
  (4611, 88, 'I made this marginal adjustment
to my daily routine.', 494.700, 497.910, NULL),
  (4612, 88, 'This marginal adjustment to my process.', 497.910, 501.276, NULL),
  (4613, 88, '(German) Und jetzt, ich spreche
ein bisschen Deutsch.', 501.276, 504.251, NULL),
  (4614, 88, 'And now I could speak some German.', 504.741, 506.821, NULL),
  (4615, 88, 'And so in that moment, I''m thinking,', 507.801, 510.591, NULL),
  (4616, 88, 'it''s not supposed to be this easy
for a guy like me - an old guy -', 510.591, 514.112, NULL),
  (4617, 88, 'to learn a new language.', 514.112, 515.400, NULL),
  (4618, 88, 'You''re supposed to do that
when you''re a kid.', 515.400, 517.512, NULL),
  (4619, 88, 'And yet here I had done it.', 517.512, 519.023, NULL),
  (4620, 88, 'This marginal adjustment.', 519.023, 520.943, NULL),
  (4621, 88, 'So what other big ambitious goals
I''ve been holding onto,', 520.943, 524.061, NULL),
  (4622, 88, 'putting off until retirement,', 524.061, 526.599, NULL),
  (4623, 88, 'that I could potentially achieve', 526.599, 528.742, NULL),
  (4624, 88, 'if I just made a marginal
adjustment to my routine?', 528.742, 531.593, NULL),
  (4625, 88, 'So I started doing them.', 531.593, 533.279, NULL),
  (4626, 88, 'I earned my auto racing license.', 533.279, 535.547, NULL),
  (4627, 88, 'I learned how to fly a helicopter,', 536.417, 539.012, NULL),
  (4628, 88, 'did rock-climbing, skydiving.', 539.012, 541.691, NULL),
  (4629, 88, 'I learned how to fly planes aerobatically.', 541.691, 544.188, NULL),
  (4630, 88, 'Well, if you''re like me, back in 2007,', 544.188, 547.523, NULL),
  (4631, 88, 'you might have the same goal I had.', 547.523, 549.492, NULL),
  (4632, 88, 'I was just moving back from London.', 549.492, 551.777, NULL),
  (4633, 88, 'I was about 25 pounds overweight
and out of shape,', 551.777, 555.023, NULL),
  (4634, 88, 'and I wanted to rectify that.', 555.023, 556.801, NULL),
  (4635, 88, 'So I could go to the typical route,', 557.211, 558.892, NULL),
  (4636, 88, 'you know, I could write a check
to a gym I''d never go to.', 558.892, 562.225, NULL),
  (4637, 88, 'Or I could swear to myself
that I will never again', 562.225, 565.294, NULL),
  (4638, 88, 'eat those foods that I love', 565.294, 567.092, NULL),
  (4639, 88, 'but are doing all the damage.', 567.092, 569.282, NULL),
  (4640, 88, 'And I knew that going that route
rarely results in the outcome you desire.', 569.282, 574.149, NULL),
  (4641, 88, 'So I decided to become
an active participant.', 574.149, 576.635, NULL),
  (4642, 88, 'I thought about the habits and passions
that I''ve developed in my life,', 576.635, 580.611, NULL),
  (4643, 88, 'and I thought, can I make just
a marginal adjustment to them', 580.611, 583.414, NULL),
  (4644, 88, 'so that they work in my favor
as opposed to against me?', 583.414, 586.579, NULL),
  (4645, 88, 'And so I did.', 586.579, 587.581, NULL),
  (4646, 88, 'I''ve got a habit', 587.581, 588.604, NULL),
  (4647, 88, 'where I''ve been walking an hour
and a half a day for the last seven years,', 588.604, 592.077, NULL),
  (4648, 88, 'and I''ve got this passion
for being in the outdoors.', 592.077, 595.234, NULL),
  (4649, 88, 'And so that year,', 595.934, 597.347, NULL),
  (4650, 88, 'I didn''t actually set the new year''s
resolution to lose 25 pounds.', 597.347, 600.966, NULL),
  (4651, 88, 'I set a resolution to hike all 33 trails', 600.966, 603.507, NULL),
  (4652, 88, 'in the front country
of Santa Barbara Mountains.', 603.507, 606.435, NULL),
  (4653, 88, 'And I''d never been on a hike
before in my life.', 606.435, 608.965, NULL),
  (4654, 88, '(Laughter)', 608.965, 610.503, NULL),
  (4655, 88, 'But the truth of the matter is,
it''s not about the 33 trails.', 610.503, 613.793, NULL),
  (4656, 88, 'You have to break this big ambitious goal', 614.543, 616.605, NULL),
  (4657, 88, 'down into these more
manageable decisions -', 616.605, 619.138, NULL),
  (4658, 88, 'the types of decisions that need
to be made correctly along the way', 619.138, 622.948, NULL),
  (4659, 88, 'in order to improve the odds of achieving
the type of outcome you desire.', 622.948, 627.136, NULL),
  (4660, 88, 'It''s not about even one trail.', 627.556, 629.708, NULL),
  (4661, 88, 'It''s about those tiny little decisions,', 629.708, 631.787, NULL),
  (4662, 88, 'you know, like when you
are sitting at your desk,', 631.787, 634.076, NULL),
  (4663, 88, 'putting in just a little extra time
at the end of a day.', 634.076, 636.708, NULL),
  (4664, 88, 'Or you''re lying on your couch,', 636.708, 638.297, NULL),
  (4665, 88, 'clicking through the channels
on your remote control,', 638.297, 640.888, NULL),
  (4666, 88, 'or scrolling through your Facebook feed,', 640.888, 642.844, NULL),
  (4667, 88, 'and in that moment,
make the decision to put it down.', 642.844, 646.207, NULL),
  (4668, 88, 'You go put on your hiking clothes,', 646.207, 648.127, NULL),
  (4669, 88, 'you go walk outside your front door,
and you shut it behind you.', 648.127, 651.127, NULL),
  (4670, 88, 'You walk to your car, get in,
drive to the trailhead.', 651.127, 654.458, NULL),
  (4671, 88, 'You get out of the car at the trailhead,', 654.458, 656.468, NULL),
  (4672, 88, 'and you take one step,
you take two steps, three steps.', 656.468, 660.377, NULL),
  (4673, 88, 'Every one of those steps
that I have just described', 660.377, 663.447, NULL),
  (4674, 88, 'is a tiny little decision that needs
to be made correctly along the way', 663.447, 667.397, NULL),
  (4675, 88, 'in order to achieve the ultimate outcome.', 667.397, 669.818, NULL),
  (4676, 88, 'Now, when I say I want to hike
33 trails in the front country,', 670.508, 673.648, NULL),
  (4677, 88, 'people think about the decisions
at the top of the mountain.', 673.648, 676.506, NULL),
  (4678, 88, 'That''s not what it''s about.', 676.506, 678.236, NULL),
  (4679, 88, 'Because if you don''t make
the right decision', 678.236, 680.318, NULL),
  (4680, 88, 'when you''re on the couch,', 680.318, 681.679, NULL),
  (4681, 88, 'there is no decision that occurs
at the top of the mountain.', 681.679, 684.819, NULL),
  (4682, 88, 'So by the end of the year,', 684.819, 686.088, NULL),
  (4683, 88, 'I''d hiked all 33 trails
in the front country;', 686.088, 688.457, NULL),
  (4684, 88, 'I did them a couple of times each.', 688.457, 690.467, NULL),
  (4685, 88, 'I even did a few in the backcountry.', 690.467, 692.329, NULL),
  (4686, 88, 'I lost the 25 pounds,
and I capped the year off', 692.339, 695.099, NULL),
  (4687, 88, 'by doing the hardest
half marathon in the world -', 695.099, 697.668, NULL),
  (4688, 88, 'the Pier to Peak.', 697.668, 699.528, NULL),
  (4689, 88, 'In 2009, I got really ambitious,', 699.528, 702.528, NULL),
  (4690, 88, 'ambitious for a guy who still,
to this day, cannot settle down', 703.554, 706.488, NULL),
  (4691, 88, 'and focus on anything for more
than ten or ten minutes at a time,', 706.488, 709.560, NULL),
  (4692, 88, 'and that was to read 50 books.', 709.560, 711.718, NULL),
  (4693, 88, 'But again, it''s not
about reading 50 books.', 712.288, 714.929, NULL),
  (4694, 88, 'It''s not even about reading one book.', 714.929, 717.123, NULL),
  (4695, 88, 'It''s not about reading a chapter,
a paragraph, a sentence.', 717.123, 721.250, NULL),
  (4696, 88, 'It''s about that decision', 721.750, 723.429, NULL),
  (4697, 88, 'when you''re sitting at your desk
at the end of the day,', 723.429, 726.401, NULL),
  (4698, 88, 'or when you''re lying on the couch,', 726.401, 728.339, NULL),
  (4699, 88, 'or flicking through your Facebook feed,', 728.339, 730.308, NULL),
  (4700, 88, 'and you put down the phone.', 730.308, 732.638, NULL),
  (4701, 88, 'You pick up a book and you read one word.', 732.638, 735.400, NULL),
  (4702, 88, 'If you read one word,
you''ll read two words, three words;', 736.509, 740.569, NULL),
  (4703, 88, 'you''ll read a sentence, a paragraph,
a page, a chapter, a book;', 740.569, 744.873, NULL),
  (4704, 88, 'you''ll read ten books, 30 books, 50 books.', 744.873, 748.989, NULL),
  (4705, 88, 'In 2012, I got really ambitious.', 749.579, 752.331, NULL),
  (4706, 88, 'I set 24 new year''s resolutions.', 752.331, 754.710, NULL),
  (4707, 88, '12 of them were
what I call giving resolutions,', 755.630, 758.876, NULL),
  (4708, 88, 'where I did 12 charitable things
that didn''t involve writing a check.', 758.876, 762.331, NULL),
  (4709, 88, 'But it''s not without its failures.', 763.051, 764.919, NULL),
  (4710, 88, 'I tried to donate blood,', 764.919, 766.204, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (4711, 88, 'and they rejected me
because I''d lived in the UK.', 766.204, 769.199, NULL),
  (4712, 88, 'I tried to donate my sperm;
they rejected me because I was too old.', 769.199, 772.852, NULL),
  (4713, 88, 'I tried to donate my hair,', 772.852, 774.290, NULL),
  (4714, 88, 'and it turns out nobody wants grey hair.', 774.290, 776.890, NULL),
  (4715, 88, '(Laughter)', 776.890, 778.520, NULL),
  (4716, 88, 'So, here I was trying to do something
to make myself feel good,', 778.520, 782.040, NULL),
  (4717, 88, 'and it was having the opposite effect.', 782.040, 784.301, NULL),
  (4718, 88, 'So anyway, I''ve also had
these 12 learning resolutions,', 784.301, 788.334, NULL),
  (4719, 88, 'to learn 12 new skills.', 788.334, 790.451, NULL),
  (4720, 88, 'And when I was done with unicycling,
parkour, slacklining,', 790.451, 794.811, NULL),
  (4721, 88, 'jumping stilts and drumming,', 794.811, 797.182, NULL),
  (4722, 88, 'my wife suggested
that I learned how to knit.', 797.182, 799.592, NULL),
  (4723, 88, '(Laughter)', 799.592, 801.422, NULL),
  (4724, 88, 'And I''ll be honest, I wasn''t all
that passionate about knitting.', 801.422, 804.909, NULL),
  (4725, 88, 'But one day, I''m sitting
under this 40-foot tall eucalyptus tree', 805.532, 809.041, NULL),
  (4726, 88, 'that''s 2.6 miles up the cold
spring trail in Santa Barbara,', 809.041, 812.062, NULL),
  (4727, 88, 'and I''m thinking, that tree would look
really cool if it were covered in yarn.', 812.062, 816.649, NULL),
  (4728, 88, '(Laughter)', 816.649, 817.839, NULL),
  (4729, 88, 'And so I went home and Googled this,', 817.839, 819.722, NULL),
  (4730, 88, 'and it turns out it is a thing people do,
it''s called yarnbombing:', 819.722, 822.992, NULL),
  (4731, 88, 'you wrap these public
structures with yarn.', 822.992, 825.253, NULL),
  (4732, 88, 'And, the second annual
international yarn bombing day', 825.803, 828.913, NULL),
  (4733, 88, 'was just 82 days away.', 828.913, 830.923, NULL),
  (4734, 88, '(Laughter)', 830.923, 832.104, NULL),
  (4735, 88, 'So for the next 82 days,
no matter where I was -', 832.104, 835.672, NULL),
  (4736, 88, '(Laughter)', 835.672, 836.782, NULL),
  (4737, 88, 'if I was in a board meeting,
on the trading floor,', 836.782, 839.623, NULL),
  (4738, 88, 'in an airplane or in the hospital,', 839.623, 842.262, NULL),
  (4739, 88, 'I was knitting.', 842.262, 843.382, NULL),
  (4740, 88, 'One stitch at a time.', 843.382, 845.173, NULL),
  (4741, 88, 'And 82 days later,', 845.173, 846.454, NULL),
  (4742, 88, 'I had done my first ever yarnbomb.', 846.454, 849.054, NULL),
  (4743, 88, '(Applause)', 849.524, 852.822, NULL),
  (4744, 88, 'And the response to it blew me away.', 857.224, 860.241, NULL),
  (4745, 88, 'So I kept going ...', 860.241, 862.051, NULL),
  (4746, 88, '(Laughter)', 862.051, 863.195, NULL),
  (4747, 88, 'with bigger, more ambitious projects', 863.195, 865.625, NULL),
  (4748, 88, 'that required more engineering skills.', 865.625, 868.332, NULL),
  (4749, 88, 'And in 2014, I set the goal
to wrap six massive boulders', 868.932, 872.562, NULL),
  (4750, 88, 'in Los Padres National Forest
at the top of the mountains.', 872.562, 875.774, NULL),
  (4751, 88, 'But if I was going to pull this off,
I''d need help.', 875.774, 878.312, NULL),
  (4752, 88, 'So at this point, I had a few
thousand followers on social media', 878.312, 882.377, NULL),
  (4753, 88, 'as "The Yarnbomber."', 882.377, 884.367, NULL),
  (4754, 88, '(Laughter)', 884.367, 886.314, NULL),
  (4755, 88, 'And I started getting packages -
lots of packages -', 886.314, 890.243, NULL),
  (4756, 88, '388 contributors
from 36 countries in all 50 states.', 890.243, 894.904, NULL),
  (4757, 88, 'In the end, I didn''t wrap
one massive boulder,', 895.444, 898.365, NULL),
  (4758, 88, 'I wrapped 18.', 898.925, 900.460, NULL),
  (4759, 88, '(Applause)', 902.213, 905.353, NULL),
  (4760, 88, 'So I kept going', 906.753, 908.303, NULL),
  (4761, 88, 'with bigger, more ambitious projects', 908.303, 910.483, NULL),
  (4762, 88, 'that would require me
to work with new materials,', 910.483, 912.874, NULL),
  (4763, 88, 'like fiberglass, and wood, and metals,', 912.874, 916.094, NULL),
  (4764, 88, 'which culminates in a project
that is currently at TMC, here in Tucson,', 916.094, 921.015, NULL),
  (4765, 88, 'where I wrapped the Children''s Hospital.', 921.015, 923.336, NULL),
  (4766, 88, '(Applause)', 923.336, 926.306, NULL),
  (4767, 88, 'Along the way, I stopped knitting.', 926.316, 928.395, NULL),
  (4768, 88, 'I never really liked it.', 928.395, 929.855, NULL),
  (4769, 88, '(Laughter)', 929.855, 931.074, NULL),
  (4770, 88, 'But ...', 931.074, 932.114, NULL),
  (4771, 88, 'I like crocheting.', 932.994, 934.544, NULL),
  (4772, 88, '(Laughter)', 934.544, 937.534, NULL),
  (4773, 88, 'So, I started making these
seven-inch granny squares -', 938.034, 941.076, NULL),
  (4774, 88, 'because that''s
the standard granny square -', 941.076, 943.105, NULL),
  (4775, 88, 'and I thought along the way:
why am I stopping at seven inches?', 943.105, 946.435, NULL),
  (4776, 88, 'I need big stuff.', 946.435, 948.176, NULL),
  (4777, 88, 'So, I started making
bigger granny squares.', 948.176, 951.225, NULL),
  (4778, 88, 'So one day, I come home
from a business trip,', 951.225, 953.434, NULL),
  (4779, 88, 'and I''ve got this really large granny,', 953.434, 955.565, NULL),
  (4780, 88, 'and I went to the website of Guinness.', 955.565, 958.155, NULL),
  (4781, 88, 'I was curious what''s the world''s
largest granny square.', 958.155, 961.478, NULL),
  (4782, 88, 'And it turns out
there''s no category for it.', 961.478, 964.075, NULL),
  (4783, 88, '(Laughter)', 964.075, 965.555, NULL),
  (4784, 88, 'So I applied,', 965.555, 966.682, NULL),
  (4785, 88, 'and they rejected me.', 967.162, 969.256, NULL),
  (4786, 88, 'So I appealed,', 969.736, 971.418, NULL),
  (4787, 88, 'and they rejected me.', 971.418, 972.676, NULL),
  (4788, 88, 'I appealed again, and they said fine,', 973.556, 975.873, NULL),
  (4789, 88, 'if you make it ten meters by ten meters,
we''ll create a new category,', 975.873, 979.536, NULL),
  (4790, 88, 'and you will be a Guinness
world record holder.', 979.536, 982.326, NULL),
  (4791, 88, 'So, for the next two years,', 982.326, 984.666, NULL),
  (4792, 88, 'seven months, 17 days,', 984.666, 988.162, NULL),
  (4793, 88, 'one stitch at a time,', 988.162, 990.014, NULL),
  (4794, 88, 'I finally reached more
than half a million stitches,', 990.014, 992.533, NULL),
  (4795, 88, 'incorporated more than 30 miles of yarn,', 992.533, 995.305, NULL),
  (4796, 88, 'and I am now the official
Guinness world record holder', 995.305, 998.057, NULL),
  (4797, 88, 'for the largest crocheted granny square.', 998.057, 1000.149, NULL),
  (4798, 88, '(Applause) (Cheering)', 1000.149, 1003.549, NULL),
  (4799, 88, 'Along the way, I''ve garnered an awful lot
of attention for my escapades.', 1007.889, 1012.095, NULL),
  (4800, 88, 'I''ve been featured in Newsweek magazine,', 1012.095, 1014.588, NULL),
  (4801, 88, 'Eric news, which is
kind of the Bible for artists.', 1014.588, 1017.408, NULL),
  (4802, 88, 'But what I want you to realize
when you hear these things:', 1017.408, 1020.846, NULL),
  (4803, 88, 'I''m still that C- student.', 1021.456, 1023.878, NULL),
  (4804, 88, 'I''m still that kid who can''t settle down', 1024.858, 1027.518, NULL),
  (4805, 88, 'or focus for more than five
or ten minutes at a time.', 1027.518, 1030.777, NULL),
  (4806, 88, 'And I remain a guy who possesses
no special gift of talent or skill.', 1030.777, 1036.028, NULL),
  (4807, 88, 'All I do is take really big,
ambitious projects', 1036.718, 1039.518, NULL),
  (4808, 88, 'that people seem to marvel at,', 1039.518, 1041.118, NULL),
  (4809, 88, 'break them down to their simplest form', 1041.118, 1043.146, NULL),
  (4810, 88, 'and then just make
marginal improvements along the way', 1043.146, 1045.759, NULL),
  (4811, 88, 'to improve my odds of achieving them.', 1045.759, 1048.184, NULL),
  (4812, 88, 'And so the whole reason
I''m giving this talk is', 1048.184, 1050.418, NULL),
  (4813, 88, 'I''m hoping to inspire several of you', 1050.418, 1053.369, NULL),
  (4814, 88, 'to pull some of those ambitious dreams
that you have for yourself', 1053.369, 1056.789, NULL),
  (4815, 88, 'off the bookshelf', 1056.789, 1058.138, NULL),
  (4816, 88, 'and start pursuing them by making
that marginal adjustment to your routine.', 1058.138, 1062.558, NULL),
  (4817, 88, 'Thank you.', 1062.558, 1063.708, NULL),
  (4818, 88, '(Applause)', 1063.708, 1066.748, NULL),
  (4819, 89, 'Transcriber: Joseph Geni
Reviewer: Morton Bast', 0.000, 7.000, NULL),
  (4820, 89, 'When I was 27 years old,', 12.863, 14.930, NULL),
  (4821, 89, 'I left a very demanding job
in management consulting', 14.963, 18.263, NULL),
  (4822, 89, 'for a job that was even more
demanding: teaching.', 18.297, 22.063, NULL),
  (4823, 89, 'I went to teach seventh graders math', 23.297, 25.763, NULL),
  (4824, 89, 'in the New York City public schools.', 25.797, 27.697, NULL),
  (4825, 89, 'And like any teacher,
I made quizzes and tests.', 28.197, 31.063, NULL),
  (4826, 89, 'I gave out homework assignments.', 31.097, 33.063, NULL),
  (4827, 89, 'When the work came back,
I calculated grades.', 33.097, 35.830, NULL),
  (4828, 89, 'What struck me was that IQ
was not the only difference', 36.763, 41.297, NULL),
  (4829, 89, 'between my best and my worst students.', 41.330, 44.463, NULL),
  (4830, 89, 'Some of my strongest performers
did not have stratospheric IQ scores.', 45.030, 49.797, NULL),
  (4831, 89, 'Some of my smartest kids
weren''t doing so well.', 50.330, 53.563, NULL),
  (4832, 89, 'And that got me thinking.', 54.297, 55.697, NULL),
  (4833, 89, 'The kinds of things you need
to learn in seventh grade math,', 56.430, 59.397, NULL),
  (4834, 89, 'sure, they''re hard: ratios, decimals,
the area of a parallelogram.', 59.397, 64.330, NULL),
  (4835, 89, 'But these concepts are not impossible,', 64.663, 67.330, NULL),
  (4836, 89, 'and I was firmly convinced
that every one of my students', 67.363, 71.463, NULL),
  (4837, 89, 'could learn the material', 71.497, 74.063, NULL),
  (4838, 89, 'if they worked hard and long enough.', 74.097, 76.163, NULL),
  (4839, 89, 'After several more years of teaching,', 76.830, 79.297, NULL),
  (4840, 89, 'I came to the conclusion
that what we need in education', 79.330, 83.063, NULL),
  (4841, 89, 'is a much better understanding
of students and learning', 83.097, 86.530, NULL),
  (4842, 89, 'from a motivational perspective,', 86.563, 88.897, NULL),
  (4843, 89, 'from a psychological perspective.', 88.897, 91.130, NULL),
  (4844, 89, 'In education, the one thing
we know how to measure best is IQ.', 91.797, 97.297, NULL),
  (4845, 89, 'But what if doing
well in school and in life', 98.163, 102.030, NULL),
  (4846, 89, 'depends on much more', 102.030, 104.130, NULL),
  (4847, 89, 'than your ability to learn
quickly and easily?', 104.163, 107.530, NULL),
  (4848, 89, 'So I left the classroom,', 108.363, 110.297, NULL),
  (4849, 89, 'and I went to graduate school
to become a psychologist.', 110.330, 113.297, NULL),
  (4850, 89, 'I started studying kids and adults', 113.863, 116.030, NULL),
  (4851, 89, 'in all kinds of super
challenging settings,', 116.063, 118.897, NULL),
  (4852, 89, 'and in every study my question was,', 118.897, 121.330, NULL),
  (4853, 89, 'who is successful here and why?', 121.363, 123.597, NULL),
  (4854, 89, 'My research team and I went
to West Point Military Academy.', 124.397, 127.963, NULL),
  (4855, 89, 'We tried to predict which cadets', 128.463, 130.130, NULL),
  (4856, 89, 'would stay in military training
and which would drop out.', 130.163, 133.663, NULL),
  (4857, 89, 'We went to the National Spelling Bee', 134.397, 136.630, NULL),
  (4858, 89, 'and tried to predict which children
would advance farthest in competition.', 136.663, 141.197, NULL),
  (4859, 89, 'We studied rookie teachers
working in really tough neighborhoods,', 141.863, 145.930, NULL),
  (4860, 89, 'asking which teachers are still
going to be here in teaching', 145.930, 149.363, NULL),
  (4861, 89, 'by the end of the school year,', 149.397, 151.363, NULL),
  (4862, 89, 'and of those, who will be
the most effective', 151.397, 154.430, NULL),
  (4863, 89, 'at improving learning
outcomes for their students?', 154.430, 157.130, NULL),
  (4864, 89, 'We partnered with private
companies, asking,', 157.597, 159.830, NULL),
  (4865, 89, 'which of these salespeople
is going to keep their jobs?', 159.830, 162.530, NULL),
  (4866, 89, 'And who''s going to earn the most money?', 162.563, 164.430, NULL),
  (4867, 89, 'In all those very different contexts,', 164.797, 167.463, NULL),
  (4868, 89, 'one characteristic emerged
as a significant predictor of success.', 167.463, 171.963, NULL),
  (4869, 89, 'And it wasn''t social intelligence.', 172.463, 174.230, NULL),
  (4870, 89, 'It wasn''t good looks, physical health,', 174.663, 177.630, NULL),
  (4871, 89, 'and it wasn''t IQ.', 177.663, 178.997, NULL),
  (4872, 89, 'It was grit.', 179.763, 180.863, NULL),
  (4873, 89, 'Grit is passion and perseverance
for very long-term goals.', 181.897, 186.530, NULL),
  (4874, 89, 'Grit is having stamina.', 186.997, 188.663, NULL),
  (4875, 89, 'Grit is sticking with your future,
day in, day out,', 189.230, 193.430, NULL),
  (4876, 89, 'not just for the week,
not just for the month,', 193.463, 196.830, NULL),
  (4877, 89, 'but for years,', 196.863, 198.363, NULL),
  (4878, 89, 'and working really hard
to make that future a reality.', 198.397, 202.130, NULL),
  (4879, 89, 'Grit is living life
like it''s a marathon, not a sprint.', 202.963, 207.230, NULL),
  (4880, 89, 'A few years ago,', 208.163, 209.597, NULL),
  (4881, 89, 'I started studying grit
in the Chicago public schools.', 209.597, 212.630, NULL),
  (4882, 89, 'I asked thousands of high school juniors', 213.130, 215.430, NULL),
  (4883, 89, 'to take grit questionnaires,', 215.463, 217.263, NULL),
  (4884, 89, 'and then waited around more than a year', 217.297, 219.263, NULL),
  (4885, 89, 'to see who would graduate.', 219.263, 220.630, NULL),
  (4886, 89, 'Turns out that grittier kids', 221.530, 223.730, NULL),
  (4887, 89, 'were significantly more
likely to graduate,', 223.763, 226.930, NULL),
  (4888, 89, 'even when I matched them
on every characteristic I could measure,', 226.963, 230.730, NULL),
  (4889, 89, 'things like family income,', 230.763, 232.997, NULL),
  (4890, 89, 'standardized achievement test scores,', 233.030, 235.763, NULL),
  (4891, 89, 'even how safe kids felt
when they were at school.', 235.763, 238.797, NULL),
  (4892, 89, 'So it''s not just at West Point
or the National Spelling Bee', 239.363, 242.297, NULL),
  (4893, 89, 'that grit matters.', 242.330, 243.463, NULL),
  (4894, 89, 'It''s also in school,', 243.463, 245.430, NULL),
  (4895, 89, 'especially for kids
at risk for dropping out.', 245.430, 247.830, NULL),
  (4896, 89, 'To me, the most shocking thing about grit', 249.097, 252.063, NULL),
  (4897, 89, 'is how little we know,', 252.097, 254.063, NULL),
  (4898, 89, 'how little science knows,
about building it.', 254.063, 256.563, NULL),
  (4899, 89, 'Every day, parents and teachers ask me,', 256.997, 259.263, NULL),
  (4900, 89, '"How do I build grit in kids?', 259.263, 261.463, NULL),
  (4901, 89, 'What do I do to teach kids
a solid work ethic?', 261.497, 264.430, NULL),
  (4902, 89, 'How do I keep them motivated
for the long run?"', 264.763, 267.230, NULL),
  (4903, 89, 'The honest answer is,', 267.863, 269.830, NULL),
  (4904, 89, 'I don''t know.', 269.863, 270.930, NULL),
  (4905, 89, '(Laughter)', 270.963, 272.430, NULL),
  (4906, 89, 'What I do know is that talent
doesn''t make you gritty.', 272.463, 275.497, NULL),
  (4907, 89, 'Our data show very clearly', 275.530, 277.863, NULL),
  (4908, 89, 'that there are many talented individuals', 277.863, 280.297, NULL),
  (4909, 89, 'who simply do not follow through
on their commitments.', 280.297, 283.430, NULL),
  (4910, 89, 'In fact, in our data,
grit is usually unrelated', 283.797, 288.030, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (4911, 89, 'or even inversely related
to measures of talent.', 288.063, 291.163, NULL),
  (4912, 89, 'So far, the best idea I''ve heard
about building grit in kids', 292.463, 296.563, NULL),
  (4913, 89, 'is something called "growth mindset."', 296.597, 298.797, NULL),
  (4914, 89, 'This is an idea developed
at Stanford University by Carol Dweck,', 299.430, 303.130, NULL),
  (4915, 89, 'and it is the belief that the ability
to learn is not fixed,', 303.130, 308.230, NULL),
  (4916, 89, 'that it can change with your effort.', 308.263, 310.730, NULL),
  (4917, 89, 'Dr. Dweck has shown', 311.430, 312.763, NULL),
  (4918, 89, 'that when kids read
and learn about the brain', 312.763, 315.930, NULL),
  (4919, 89, 'and how it changes and grows
in response to challenge,', 315.930, 319.397, NULL),
  (4920, 89, 'they''re much more likely
to persevere when they fail,', 319.430, 323.430, NULL),
  (4921, 89, 'because they don''t believe that failure
is a permanent condition.', 323.463, 328.063, NULL),
  (4922, 89, 'So growth mindset
is a great idea for building grit.', 329.063, 332.163, NULL),
  (4923, 89, 'But we need more.', 332.730, 334.263, NULL),
  (4924, 89, 'And that''s where I''m going
to end my remarks,', 334.830, 336.930, NULL),
  (4925, 89, 'because that''s where we are.', 336.930, 338.297, NULL),
  (4926, 89, 'That''s the work that stands before us.', 338.297, 340.463, NULL),
  (4927, 89, 'We need to take our best ideas,
our strongest intuitions,', 340.497, 344.397, NULL),
  (4928, 89, 'and we need to test them.', 344.397, 346.030, NULL),
  (4929, 89, 'We need to measure
whether we''ve been successful,', 346.497, 349.230, NULL),
  (4930, 89, 'and we have to be willing
to fail, to be wrong,', 349.230, 352.963, NULL),
  (4931, 89, 'to start over again with lessons learned.', 352.963, 355.597, NULL),
  (4932, 89, 'In other words, we need to be gritty', 356.330, 359.263, NULL),
  (4933, 89, 'about getting our kids grittier.', 359.297, 361.763, NULL),
  (4934, 89, 'Thank you.', 362.163, 363.197, NULL),
  (4935, 89, '(Applause)', 363.230, 366.063, NULL),
  (4936, 90, 'ARTHUR BROOKS: You
need to be bored.', 0.000, 1.500, NULL),
  (4937, 90, 'You will have less
meaning and you', 1.500, 3.560, NULL),
  (4938, 90, 'will be more depressed
if you never are bored.', 3.560, 5.778, NULL),
  (4939, 90, 'I mean, it couldn''t be clearer.', 5.778, 7.070, NULL),
  (4940, 90, 'Let me give you the good
side of boredom in general.', 10.120, 14.680, NULL),
  (4941, 90, 'Boredom is a tendency
for us to not be occupied', 14.680, 18.600, NULL),
  (4942, 90, 'otherwise cognitively, which
switches over our thinking', 18.600, 22.680, NULL),
  (4943, 90, 'system to use a
part of our brain', 22.680, 24.980, NULL),
  (4944, 90, 'that''s called the
default mode network.', 24.980, 27.060, NULL),
  (4945, 90, 'That sounds fancy.', 27.060, 27.980, NULL),
  (4946, 90, 'It''s really not.', 27.980, 28.740, NULL),
  (4947, 90, 'The default mode
network is a bunch', 28.740, 30.198, NULL),
  (4948, 90, 'of structures in your
brain that switch', 30.198, 32.439, NULL),
  (4949, 90, 'on when you don''t have
anything else to think about.', 32.439, 35.560, NULL),
  (4950, 90, 'So you forgot your
phone and you''re sitting', 35.560, 37.480, NULL),
  (4951, 90, 'at a light, for example.', 37.480, 39.600, NULL),
  (4952, 90, 'That''s when your default
mode network goes on.', 39.600, 42.480, NULL),
  (4953, 90, 'We don''t like it.', 42.480, 43.660, NULL),
  (4954, 90, 'My colleague in the
psychology department', 43.660, 45.680, NULL),
  (4955, 90, 'here at Harvard, Dan
Gilbert, he did experiments', 45.680, 48.360, NULL),
  (4956, 90, 'where people had to
sit in a room for 15', 48.360, 50.840, NULL),
  (4957, 90, 'minutes with instructions
to do absolutely nothing,', 50.840, 53.060, NULL),
  (4958, 90, 'and there was nothing
in the room to do,', 53.060, 55.120, NULL),
  (4959, 90, 'except there was a
button in front of them', 55.120, 57.625, NULL),
  (4960, 90, 'that they could push.', 57.625, 58.500, NULL),
  (4961, 90, 'And if they did,
they gave themselves', 58.500, 60.042, NULL),
  (4962, 90, 'a painful electric shock.', 60.042, 62.020, NULL),
  (4963, 90, 'Sit there bored, or get a shock.', 62.020, 64.260, NULL),
  (4964, 90, 'A big majority of
the participants', 64.260, 65.800, NULL),
  (4965, 90, 'gave themselves shocks instead
of thinking about nothing.', 65.800, 68.540, NULL),
  (4966, 90, 'We don''t like boredom.', 68.540, 69.920, NULL),
  (4967, 90, 'Boredom is boredom is terrible.', 69.920, 71.330, NULL),
  (4968, 90, 'Why is boredom so bad?', 71.330, 72.710, NULL),
  (4969, 90, 'Well, because the default
mode network makes', 72.710, 75.370, NULL),
  (4970, 90, 'us think about things that
might be kind of uncomfortable.', 75.370, 78.290, NULL),
  (4971, 90, 'When you think about nothing
while your mind wanders', 78.290, 80.770, NULL),
  (4972, 90, 'and thinks about, for example,
big questions of meaning', 80.770, 83.610, NULL),
  (4973, 90, 'in your life.', 83.610, 84.190, NULL),
  (4974, 90, 'What does my life mean?', 84.190, 85.350, NULL),
  (4975, 90, 'You go to uncomfortable
existential questions', 85.350, 88.410, NULL),
  (4976, 90, 'when you''re bored.', 88.410, 89.690, NULL),
  (4977, 90, 'That turns out to be incredibly
important, incredibly good.', 89.690, 92.633, NULL),
  (4978, 90, 'One of the reasons we have
such an explosion of depression', 92.633, 95.050, NULL),
  (4979, 90, 'and anxiety in our society
today is because people actually', 95.050, 98.927, NULL),
  (4980, 90, 'don''t know the meaning
of their lives,', 98.927, 100.510, NULL),
  (4981, 90, 'much less so in
previous generations.', 100.510, 102.430, NULL),
  (4982, 90, 'Tons of data show this,
and furthermore, we''re', 102.430, 105.770, NULL),
  (4983, 90, 'not even looking.', 105.770, 106.830, NULL),
  (4984, 90, 'Why not?', 106.830, 108.130, NULL),
  (4985, 90, 'I''ll tell you why not.', 108.130, 109.330, NULL),
  (4986, 90, 'We figured out a way
to eliminate boredom.', 109.330, 112.930, NULL),
  (4987, 90, 'We''ve been able,
almost completely,', 112.930, 116.010, NULL),
  (4988, 90, 'to shut off the default
mode network in our brains.', 116.010, 119.170, NULL),
  (4989, 90, 'How?', 119.170, 120.450, NULL),
  (4990, 90, 'The answer is that thing in
your pocket with the screen,', 120.450, 123.490, NULL),
  (4991, 90, 'which you take out even when
you''re standing on the street', 123.490, 126.250, NULL),
  (4992, 90, 'corner waiting for
the light to change,', 126.250, 127.910, NULL),
  (4993, 90, 'is like, I might have to
wait here for 15 seconds.', 127.910, 132.078, NULL),
  (4994, 90, 'What are you doing?', 132.078, 132.870, NULL),
  (4995, 90, 'You''re actually trying to not be
bored because the default mode', 132.870, 135.495, NULL),
  (4996, 90, 'network is mildly uncomfortable,
because it sends you', 135.495, 138.137, NULL),
  (4997, 90, 'to the types of questions that
you can''t get your mind around.', 138.137, 140.720, NULL),
  (4998, 90, 'You can''t get your arms around.', 140.720, 142.120, NULL),
  (4999, 90, 'Well, that''s a big problem.', 142.120, 143.740, NULL),
  (5000, 90, 'That''s a doom loop of meaning.', 143.740, 146.300, NULL),
  (5001, 90, 'If every time you''re slightly
bored pull out your phone,', 146.300, 149.580, NULL),
  (5002, 90, 'it''s going to get harder and
harder for you to find meaning,', 149.580, 152.080, NULL),
  (5003, 90, 'and that''s the recipe for
depression and anxiety', 152.080, 156.380, NULL),
  (5004, 90, 'and a sense of hollowness,
which, by the way,', 156.380, 159.540, NULL),
  (5005, 90, 'are all through the roof.', 159.540, 162.820, NULL),
  (5006, 90, 'I get it.', 162.820, 163.500, NULL),
  (5007, 90, 'You don''t want to be bored.', 163.500, 164.840, NULL),
  (5008, 90, 'You need to be bored.', 164.840, 166.340, NULL),
  (5009, 90, 'Be bored more.', 166.340, 167.660, NULL),
  (5010, 90, 'Tomorrow, when you go to
the gym in the morning', 167.660, 169.700, NULL),
  (5011, 90, 'after you wake up,
don''t take your phone.', 169.700, 172.060, NULL),
  (5012, 90, 'Can you handle it?', 172.060, 173.420, NULL),
  (5013, 90, 'Not listening to a podcast
while you''re working out.', 173.420, 176.380, NULL),
  (5014, 90, 'Just being in your head.', 176.380, 177.600, NULL),
  (5015, 90, 'I promise you, you''ll have
your most interesting ideas', 177.600, 180.340, NULL),
  (5016, 90, 'while you''re working
out without devices.', 180.340, 182.080, NULL),
  (5017, 90, 'It''s probably been a long
time since you''ve done that.', 182.080, 184.330, NULL),
  (5018, 90, 'Commute with nothing,
not even the radio.', 184.330, 187.060, NULL),
  (5019, 90, 'Can you do that?', 187.060, 188.500, NULL),
  (5020, 90, 'Start getting better
at periods that', 188.500, 190.860, NULL),
  (5021, 90, 'are 15 minutes and
longer of boredom,', 190.860, 193.960, NULL),
  (5022, 90, 'and watch your life change.', 193.960, 196.000, NULL),
  (5023, 90, 'Number one, you''ll be less
bored with ordinary things', 196.000, 198.580, NULL),
  (5024, 90, 'in your life.', 198.580, 199.240, NULL),
  (5025, 90, 'If you get better at
the skill of boredom,', 199.240, 201.160, NULL),
  (5026, 90, 'you''ll be less
bored with your job.', 201.160, 202.440, NULL),
  (5027, 90, 'You''ll be less bored
with your relationships.', 202.440, 204.040, NULL),
  (5028, 90, 'You''ll be less bored
with the things that', 204.040, 205.748, NULL),
  (5029, 90, 'are going on around you.', 205.748, 207.020, NULL),
  (5030, 90, 'But more importantly,
you''ll start digging', 207.020, 209.390, NULL),
  (5031, 90, 'into the biggest questions in
your life, purpose, meaning,', 209.390, 213.490, NULL),
  (5032, 90, 'coherence, significance.', 213.490, 216.990, NULL),
  (5033, 90, 'And who knows?', 216.990, 218.136, NULL),
  (5034, 90, 'You might just get happier.', 218.136, 220.922, NULL),
  (5035, 90, 'People ask me all the
time, is the doctor', 220.922, 222.630, NULL),
  (5036, 90, 'taking his own prescriptions?', 222.630, 224.590, NULL),
  (5037, 90, 'And the answer is, yes.', 224.590, 225.620, NULL),
  (5038, 90, 'Yes, I am.', 225.620, 226.730, NULL),
  (5039, 90, 'I''m prone to the same
pathologies as anybody else', 226.730, 229.153, NULL),
  (5040, 90, 'because I have the same brain
chemistry as everybody else.', 229.153, 231.570, NULL),
  (5041, 90, 'So what do I do to fight that?', 231.570, 232.770, NULL),
  (5042, 90, 'And the answer is, well,
I do a number of things.', 232.770, 234.812, NULL),
  (5043, 90, 'I have a no device policy
after 7:00 in the afternoon.', 234.812, 239.910, NULL),
  (5044, 90, 'I don''t sleep with my phone.', 239.910, 241.530, NULL),
  (5045, 90, 'We don''t have devices when
we have meals in my family.', 241.530, 246.070, NULL),
  (5046, 90, 'Because we''re there
for each other.', 246.070, 247.770, NULL),
  (5047, 90, 'We''re not there for
people who aren''t there.', 247.770, 250.550, NULL),
  (5048, 90, 'Three, I have
regular social media', 250.550, 252.790, NULL),
  (5049, 90, 'and screen cleanses where
I don''t use my device', 252.790, 256.390, NULL),
  (5050, 90, 'for longer periods of time.', 256.390, 258.769, NULL),
  (5051, 90, 'First, it''s like children
screaming in my head', 258.769, 262.029, NULL),
  (5052, 90, 'because that''s how dopamine
is saying, get the phone,', 262.029, 265.570, NULL),
  (5053, 90, 'get the phone.', 265.570, 266.470, NULL),
  (5054, 90, 'That''s addiction.', 266.470, 267.870, NULL),
  (5055, 90, 'But it calms down
and I feel better.', 267.870, 270.390, NULL),
  (5056, 90, 'And I feel sort of
blessed by the end.', 270.390, 273.250, NULL),
  (5057, 90, 'And I pick the
phone up by the end', 273.250, 275.053, NULL),
  (5058, 90, 'because I have to
check my emails.', 275.053, 276.470, NULL),
  (5059, 90, 'And I have to be a normal,
functioning, connected person', 276.470, 279.360, NULL),
  (5060, 90, 'in the world.', 279.360, 280.320, NULL),
  (5061, 90, 'But it does remind me that my
life doesn''t have to revolve', 280.320, 283.320, NULL),
  (5062, 90, 'around these devices.', 283.320, 284.260, NULL),
  (5063, 90, 'These protocols are
really, really helpful', 284.260, 286.680, NULL),
  (5064, 90, 'and I recommend them to
anybody and everybody.', 286.680, 289.540, NULL),
  (5065, 90, 'Don''t sleep with your phone.', 289.540, 290.760, NULL),
  (5066, 90, 'No phones during meals.', 290.760, 292.320, NULL),
  (5067, 90, 'Regular social media fasts.', 292.320, 294.640, NULL),
  (5068, 90, 'You''ll get better.', 294.640, 296.830, NULL),
  (5069, 90, 'People worry that if
they do these things,', 296.830, 298.580, NULL),
  (5070, 90, 'they''re going to miss something.', 298.580, 299.700, NULL),
  (5071, 90, 'There are ways that
you can remedy that.', 299.700, 301.060, NULL),
  (5072, 90, 'One of the things
that you can do', 301.060, 302.435, NULL),
  (5073, 90, 'is you can have your phone on.', 302.435, 303.810, NULL),
  (5074, 90, 'You''re just not looking
at it, and there''s', 303.810, 305.560, NULL),
  (5075, 90, 'only one or two numbers
that can reach you', 305.560, 307.800, NULL),
  (5076, 90, 'in case of emergencies.', 307.800, 309.340, NULL),
  (5077, 90, 'Phones can do that by the way.', 309.340, 310.900, NULL),
  (5078, 90, 'If you don''t have to
do that, ask your kid.', 310.900, 313.020, NULL),
  (5079, 90, 'But don''t use emergencies
in as an excuse.', 313.020, 315.760, NULL),
  (5080, 90, 'Here''s something that''s
not an emergency.', 315.760, 318.200, NULL),
  (5081, 90, 'What''s going on Twitter.', 318.200, 319.860, NULL),
  (5082, 90, 'That''s not an emergency
answer nothing.', 319.860, 323.000, NULL),
  (5083, 90, 'It doesn''t matter.', 323.000, 324.120, NULL),
  (5084, 90, 'The news can wait.', 324.120, 325.140, NULL),
  (5085, 90, 'Seriously your
grandparents didn''t', 325.140, 327.240, NULL),
  (5086, 90, 'what was going on every single
second in Washington, DC.', 327.240, 330.780, NULL),
  (5087, 90, 'You''re killing yourself
with this stuff.', 330.780, 333.380, NULL),
  (5088, 90, 'Are you kidding me?', 333.380, 334.220, NULL),
  (5089, 90, 'It''s bad for you.', 334.220, 335.760, NULL),
  (5090, 90, 'So let me say it
straight to my kids.', 335.760, 338.720, NULL),
  (5091, 90, 'Put down your phones.', 338.720, 341.400, NULL),
  (5092, 90, 'You need more
meaning in your life.', 341.400, 343.320, NULL),
  (5093, 90, 'And so do I.', 343.320, 345.090, NULL),
  (5094, 91, 'Clicking on this video
activated circuits in your brain', 0.120, 3.320, NULL),
  (5095, 91, 'that took thousands of years to develop
the ones required for reading.', 3.320, 8.800, NULL),
  (5096, 91, 'We think of language as natural
and reading is written language,', 8.800, 14.280, NULL),
  (5097, 91, 'so it must be natural. But it isn''t.', 14.280, 17.160, NULL),
  (5098, 91, 'It isn''t natural at all.', 17.160, 19.400, NULL),
  (5099, 91, 'Scientific studies indicate
that a neurotypical brain is born', 19.400, 23.040, NULL),
  (5100, 91, 'with the circuitry that allows
our eyes to see', 23.040, 25.640, NULL),
  (5101, 91, 'and our vocal cords
to produce sounds,', 25.640, 28.160, NULL),
  (5102, 91, 'but it doesn''t innately have
the ability to read.', 28.160, 31.560, NULL),
  (5103, 91, 'From an evolutionary time scale,
our brain hasn''t had enough time', 31.560, 34.920, NULL),
  (5104, 91, 'to develop a dedicated reading brain.', 34.920, 38.080, NULL),
  (5105, 91, 'And so to build
a reading brain network,', 38.080, 40.880, NULL),
  (5106, 91, 'we co-opt parts of the brain involved
in vision and auditory processing,', 40.880, 46.000, NULL),
  (5107, 91, 'and language
and attention and affect.', 46.000, 49.880, NULL),
  (5108, 91, 'The Sumerian cuneiform symbols
are thought to be one', 49.880, 52.880, NULL),
  (5109, 91, 'of the earliest writing systems
in the world,', 52.880, 55.480, NULL),
  (5110, 91, 'dating back to around 3300 BC.', 55.480, 58.880, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (5111, 91, 'Around the same time, though, Egyptians
started developing their hieroglyphics.', 58.880, 64.360, NULL),
  (5112, 91, 'Symbols evolved over time.', 64.360, 67.040, NULL),
  (5113, 91, 'The more we read and wrote,
the more sophisticated', 67.040, 69.520, NULL),
  (5114, 91, 'they became becoming the letters
and characters we recognise today.', 69.520, 74.800, NULL),
  (5115, 91, 'Scientists now know
that reading activates the brain', 74.800, 78.640, NULL),
  (5116, 91, 'so that letters and words become
associated with sounds and meanings.', 78.640, 83.280, NULL),
  (5117, 91, 'Reading is really
a whole brain process.', 83.280, 86.480, NULL),
  (5118, 91, 'It involves activation
and all four lobes of the cortex.', 86.480, 92.000, NULL),
  (5119, 91, 'The process of developing
a reading brain alters everything', 92.000, 96.000, NULL),
  (5120, 91, 'from brain activity to brain
structure and brain connectivity.', 96.000, 103.200, NULL),
  (5121, 91, 'And the language we read
also shapes our brain.', 103.200, 107.120, NULL),
  (5122, 91, 'Chinese characters, for instance, are
an example of the logographic system.', 107.120, 112.080, NULL),
  (5123, 91, 'Each object or idea is represented by
a symbol rather than', 112.080, 115.840, NULL),
  (5124, 91, 'by a set of letters of the alphabet.', 115.840, 117.920, NULL),
  (5125, 91, 'Research indicates that learning
logographic writing systems activates
different areas of the brain', 117.920, 124.120, NULL),
  (5126, 91, 'than learning an alphabet-based
language like English.', 124.120, 127.520, NULL),
  (5127, 91, 'The areas involved in visual memory and
visual association do more of the work.', 127.520, 132.960, NULL),
  (5128, 91, 'This theory was corroborated
after scientists studied', 132.960, 135.640, NULL),
  (5129, 91, 'a bilingual patient
who knew both Chinese and English.', 135.640, 139.560, NULL),
  (5130, 91, 'The man suffered a massive stroke,
which affected some areas of his brain,', 139.560, 143.760, NULL),
  (5131, 91, 'including his ability
to read Chinese,', 143.760, 146.800, NULL),
  (5132, 91, 'but astonishingly, his proficiency
in English remained intact.', 146.800, 151.320, NULL),
  (5133, 91, 'It''s a beautiful', 151.320, 152.200, NULL),
  (5134, 91, 'example of how the brain circuit
reflects the requirements of Chinese,', 152.200, 160.200, NULL),
  (5135, 91, 'which inevitably means more
visual memory and visual processing', 160.200, 166.560, NULL),
  (5136, 91, 'of those beautifully intricate
symbols or characters.', 166.560, 172.920, NULL),
  (5137, 91, 'Whatever the language,
reading not only impacts the brain,', 172.920, 176.440, NULL),
  (5138, 91, 'but it also affects us
on a physical level.', 176.440, 179.480, NULL),
  (5139, 91, 'We might feel in our guts the
nervousness or the pain of a character.', 179.480, 185.320, NULL),
  (5140, 91, 'And I mean that not only like I feel it
inside me, but I mean that literally.', 185.320, 190.480, NULL),
  (5141, 91, 'Like the anterior insula, which is
responsible for gastromotoric', 190.480, 197.120, NULL),
  (5142, 91, 'movement for feelings
of nausea and pain and discomfort', 197.120, 201.200, NULL),
  (5143, 91, 'is also the part of the brain
that''s associated with', 201.200, 205.280, NULL),
  (5144, 91, 'many of the empathic processes.', 205.280, 208.600, NULL),
  (5145, 91, 'And the brain is very adaptable.', 208.600, 211.600, NULL),
  (5146, 91, 'Evidence suggests
that it''s already changing
as a result of new technologies.', 211.600, 215.720, NULL),
  (5147, 91, 'Reading on a phone or tablet
is generally passive scrolling,', 215.720, 219.480, NULL),
  (5148, 91, 'often interrupted by messages
and alerts.', 219.480, 223.480, NULL),
  (5149, 91, 'When we read on screens,
we tend to skim,', 223.480, 225.960, NULL),
  (5150, 91, 'and when we skim, we''re more
susceptible to misinformation.', 225.960, 229.400, NULL),
  (5151, 91, 'We need to support individuals', 229.400, 231.400, NULL),
  (5152, 91, 'in being able to think critically
about the things that they''re reading,', 231.400, 234.680, NULL),
  (5153, 91, 'because that''s fundamental to
a democracy is our ability to analyse', 234.680, 239.280, NULL),
  (5154, 91, 'and think deeply about the information
that''s that we''re consuming.', 239.280, 244.480, NULL),
  (5155, 91, 'Some academic research even suggests
that children who use cell phones', 244.480, 248.160, NULL),
  (5156, 91, 'from an early age perform worse
in school later in life.', 248.160, 252.840, NULL),
  (5157, 91, 'At eight years of age, the amount
of digital exposure predicted', 252.840, 257.840, NULL),
  (5158, 91, 'their attentional executive function
processing and academic performance.', 257.840, 263.240, NULL),
  (5159, 91, 'And it''s a negative.
The more digital, the worse academic.', 263.240, 268.400, NULL),
  (5160, 91, 'If you can imagine if that brain
is constantly being distracted', 268.400, 273.480, NULL),
  (5161, 91, 'and hyper stimulated,
you''re going to have them not able', 273.480, 277.840, NULL),
  (5162, 91, 'to really move from one stimulus
to the next', 277.840, 284.000, NULL),
  (5163, 91, 'without a desire for ever quicker
intervals between stimuli.', 284.000, 289.880, NULL),
  (5164, 91, 'So then you have kids going offline
and saying they''re bored.', 289.880, 294.200, NULL),
  (5165, 91, 'It''s a relatively new field
of research,', 294.200, 296.560, NULL),
  (5166, 91, 'and some studies suggest
that monitored', 296.560, 298.600, NULL),
  (5167, 91, 'and education-focused screen time
can be beneficial to children.', 298.600, 302.400, NULL),
  (5168, 91, 'For parents concerned
about navigating the digital world,', 302.400, 305.240, NULL),
  (5169, 91, 'the advice is to go back to basics.', 305.240, 307.920, NULL),
  (5170, 91, 'The antidote to all that''s happening
is the simplest, most beautiful one,', 307.920, 313.000, NULL),
  (5171, 91, 'and that is to have
our children immersed', 313.000, 315.840, NULL),
  (5172, 91, 'in reading and have a reading life.', 315.840, 318.160, NULL),
  (5173, 91, 'Our parents
and teachers all have to help,', 318.160, 321.640, NULL),
  (5174, 91, 'you know, they have to model,
they have to read to their child.', 321.640, 325.040, NULL),
  (5175, 91, 'They have to love it themselves.', 325.040, 328.440, NULL),
  (5176, 91, 'And this is likely to have benefits
beyond the individual reader.', 328.440, 332.840, NULL),
  (5177, 91, 'The power of deep reading is
really fundamental to our humanity.', 332.840, 337.240, NULL),
  (5178, 91, 'When we read deeply, we change
our brains and we change who we are.', 337.240, 342.040, NULL),
  (5179, 91, 'And that process of changing
the minds and hearts of individuals', 342.040, 346.320, NULL),
  (5180, 91, 'changes society and allows us to
build bigger, more beautiful futures.', 346.320, 352.920, NULL),
  (5181, 92, 'I love learning foreign languages.', 13.760, 16.656, NULL),
  (5182, 92, 'In fact, I love it so much that I like
to learn a new language every two years,', 16.680, 20.736, NULL),
  (5183, 92, 'currently working on my eighth one.', 20.760, 22.856, NULL),
  (5184, 92, 'When people find that out about me,
they always ask me,', 22.880, 25.496, NULL),
  (5185, 92, '"How do you do that? What''s your secret?"', 25.520, 27.616, NULL),
  (5186, 92, 'And to be honest, for many years,
my answer would be,', 27.640, 30.656, NULL),
  (5187, 92, '"I don''t know. I simply
love learning languages."', 30.680, 33.000, NULL),
  (5188, 92, 'But people were never
happy with that answer.', 33.720, 35.976, NULL),
  (5189, 92, 'They wanted to know why they are spending
years trying to learn even one language,', 36.000, 39.976, NULL),
  (5190, 92, 'never achieving fluency,', 40.000, 41.536, NULL),
  (5191, 92, 'and here I come, learning
one language after another.', 41.560, 44.616, NULL),
  (5192, 92, 'They wanted to know
the secret of polyglots,', 44.640, 46.856, NULL),
  (5193, 92, 'people who speak a lot of languages.', 46.880, 48.600, NULL),
  (5194, 92, 'And that made me wonder, too,', 49.400, 50.816, NULL),
  (5195, 92, 'how do actually other polyglots do it?', 50.840, 53.136, NULL),
  (5196, 92, 'What do we have in common?', 53.160, 54.656, NULL),
  (5197, 92, 'And what is it that enables us', 54.680, 56.616, NULL),
  (5198, 92, 'to learn languages
so much faster than other people?', 56.640, 59.080, NULL),
  (5199, 92, 'I decided to meet other people
like me and find that out.', 59.880, 62.720, NULL),
  (5200, 92, 'The best place to meet a lot of polyglots', 63.760, 65.816, NULL),
  (5201, 92, 'is an event where hundreds
of language lovers', 65.840, 68.136, NULL),
  (5202, 92, 'meet in one place
to practice their languages.', 68.160, 71.016, NULL),
  (5203, 92, 'There are several such polyglot events
organized all around the world,', 71.040, 74.336, NULL),
  (5204, 92, 'and so I decided to go there', 74.360, 75.736, NULL),
  (5205, 92, 'and ask polyglots
about the methods that they use.', 75.760, 78.200, NULL),
  (5206, 92, 'And so I met Benny from Ireland,', 79.200, 81.136, NULL),
  (5207, 92, 'who told me that his method
is to start speaking from day one.', 81.160, 85.320, NULL),
  (5208, 92, 'He learns a few phrases
from a travel phrasebook', 86.240, 89.136, NULL),
  (5209, 92, 'and goes to meet native speakers', 89.160, 90.736, NULL),
  (5210, 92, 'and starts having conversations
with them right away.', 90.760, 93.576, NULL),
  (5211, 92, 'He doesn''t mind making
even 200 mistakes a day,', 93.600, 96.376, NULL),
  (5212, 92, 'because that''s how he learns,
based on the feedback.', 96.400, 98.840, NULL),
  (5213, 92, 'And the best thing is, he doesn''t
even need to travel a lot today,', 99.480, 102.616, NULL),
  (5214, 92, 'because you can easily have
conversations with native speakers', 102.640, 105.576, NULL),
  (5215, 92, 'from the comfort of
your living room, using websites.', 105.600, 108.296, NULL),
  (5216, 92, 'I also met Lucas from Brazil', 108.320, 110.096, NULL),
  (5217, 92, 'who had a really interesting
method to learn Russian.', 110.120, 112.600, NULL),
  (5218, 92, 'He simply added a hundred random
Russian speakers on Skype as friends,', 113.200, 118.856, NULL),
  (5219, 92, 'and then he opened
a chat window with one of them', 118.880, 122.776, NULL),
  (5220, 92, 'and wrote "Hi" in Russian.', 122.800, 124.240, NULL),
  (5221, 92, 'And the person replied, "Hi, how are you?"', 125.000, 127.576, NULL),
  (5222, 92, 'Lucas copied this and put it
into a text window with another person,', 127.600, 132.056, NULL),
  (5223, 92, 'and the person replied,
"I''m fine, thank you, and how are you?"', 132.080, 135.656, NULL),
  (5224, 92, 'Lucas copied this
back to the first person,', 135.680, 138.656, NULL),
  (5225, 92, 'and in this way, he had two strangers
have a conversation with each other', 138.680, 142.136, NULL),
  (5226, 92, 'without knowing about it.', 142.160, 143.576, NULL),
  (5227, 92, '(Laughter)', 143.600, 144.856, NULL),
  (5228, 92, 'And soon he would start typing himself,', 144.880, 146.776, NULL),
  (5229, 92, 'because he had so many
of these conversations', 146.800, 148.936, NULL),
  (5230, 92, 'that he figured out how
the Russian conversation usually starts.', 148.960, 151.976, NULL),
  (5231, 92, 'What an ingenious method, right?', 152.000, 154.336, NULL),
  (5232, 92, 'And then I met polyglots who always start
by imitating sounds of the language,', 154.360, 158.856, NULL),
  (5233, 92, 'and others who always learn the 500
most frequent words of the language,', 158.880, 163.296, NULL),
  (5234, 92, 'and yet others who always start
by reading about the grammar.', 163.320, 166.720, NULL),
  (5235, 92, 'If I asked a hundred different polyglots,', 167.600, 169.896, NULL),
  (5236, 92, 'I heard a hundred different
approaches to learning languages.', 169.920, 173.536, NULL),
  (5237, 92, 'Everybody seems to have a unique way
they learn a language,', 173.560, 177.176, NULL),
  (5238, 92, 'and yet we all come to the same result
of speaking several languages fluently.', 177.200, 181.080, NULL),
  (5239, 92, 'And as I was listening to these polyglots
telling me about their methods,', 182.120, 186.416, NULL),
  (5240, 92, 'it suddenly dawned on me:', 186.440, 188.736, NULL),
  (5241, 92, 'the one thing we all have in common', 188.760, 191.896, NULL),
  (5242, 92, 'is that we simply found ways to enjoy
the language-learning process.', 191.920, 197.456, NULL),
  (5243, 92, 'All of these polyglots
were talking about language learning', 197.480, 200.256, NULL),
  (5244, 92, 'as if it was great fun.', 200.280, 201.536, NULL),
  (5245, 92, 'You should have seen their faces', 201.560, 203.136, NULL),
  (5246, 92, 'when they were showing me
their colorful grammar charts', 203.160, 205.776, NULL),
  (5247, 92, 'and their carefully handmade flash cards,', 205.800, 208.296, NULL),
  (5248, 92, 'and their statistics
about learning vocabulary using apps,', 208.320, 211.336, NULL),
  (5249, 92, 'or even how they love to cook
based on recipes in a foreign language.', 211.360, 215.560, NULL),
  (5250, 92, 'All of them use different methods,', 216.680, 218.416, NULL),
  (5251, 92, 'but they always make sure
it''s something that they personally enjoy.', 218.440, 222.216, NULL),
  (5252, 92, 'I realized that this is actually
how I learn languages myself.', 222.240, 226.136, NULL),
  (5253, 92, 'When I was learning Spanish,
I was bored with the text in the textbook.', 226.160, 229.736, NULL),
  (5254, 92, 'I mean, who wants to read about Jose', 229.760, 231.496, NULL),
  (5255, 92, 'asking about the directions
to the train station. Right?', 231.520, 234.656, NULL),
  (5256, 92, 'I wanted to read "Harry Potter" instead,', 234.680, 237.016, NULL),
  (5257, 92, 'because that was
my favorite book as a child,', 237.040, 239.176, NULL),
  (5258, 92, 'and I have read it many times.', 239.200, 240.856, NULL),
  (5259, 92, 'So I got the Spanish translation
of "Harry Potter" and started reading,', 240.880, 244.496, NULL),
  (5260, 92, 'and sure enough, I didn''t understand
almost anything at the beginning,', 244.520, 247.856, NULL),
  (5261, 92, 'but I kept on reading
because I loved the book,', 247.880, 250.096, NULL),
  (5262, 92, 'and by the end of the book, I was able
to follow it almost without any problems.', 250.120, 254.256, NULL),
  (5263, 92, 'And the same thing happened
when I was learning German.', 254.280, 256.896, NULL),
  (5264, 92, 'I decided to watch "Friends,"
my favorite sitcom, in German,', 256.920, 260.216, NULL),
  (5265, 92, 'and again, at the beginning
it was all just gibberish.', 260.240, 263.336, NULL),
  (5266, 92, 'I didn''t know where one word finished
and another one started,', 263.360, 266.536, NULL),
  (5267, 92, 'but I kept on watching every day
because it''s "Friends."', 266.560, 269.216, NULL),
  (5268, 92, 'I can watch it in any language.
I love it so much.', 269.240, 271.616, NULL),
  (5269, 92, 'And after the second or third season,', 271.640, 273.656, NULL),
  (5270, 92, 'seriously, the dialogue
started to make sense.', 273.680, 276.040, NULL),
  (5271, 92, 'I only realized this
after meeting other polyglots.', 277.080, 280.136, NULL),
  (5272, 92, 'We are no geniuses', 280.160, 281.736, NULL),
  (5273, 92, 'and we have no shortcut
to learning languages.', 281.760, 284.176, NULL),
  (5274, 92, 'We simply found ways
how to enjoy the process,', 284.200, 288.016, NULL),
  (5275, 92, 'how to turn language learning
from a boring school subject', 288.040, 291.416, NULL),
  (5276, 92, 'into a pleasant activity
which you don''t mind doing every day.', 291.440, 294.640, NULL),
  (5277, 92, 'If you don''t like writing
words down on paper,', 295.520, 297.696, NULL),
  (5278, 92, 'you can always type them in an app.', 297.720, 299.416, NULL),
  (5279, 92, 'If you don''t like listening
to boring textbook material,', 299.440, 302.256, NULL),
  (5280, 92, 'find interesting content on YouTube
or in podcasts for any language.', 302.280, 306.576, NULL),
  (5281, 92, 'If you''re a more introverted person', 306.600, 308.296, NULL),
  (5282, 92, 'and you can''t imagine speaking
to native speakers right away,', 308.320, 311.336, NULL),
  (5283, 92, 'you can apply the method of self-talk.', 311.360, 313.696, NULL),
  (5284, 92, 'You can talk to yourself
in the comfort of your room,', 313.720, 316.296, NULL),
  (5285, 92, 'describing your plans for the weekend,
how your day has been,', 316.320, 319.216, NULL),
  (5286, 92, 'or even take a random
picture from your phone', 319.240, 321.376, NULL),
  (5287, 92, 'and describe the picture
to your imaginary friend.', 321.400, 325.136, NULL),
  (5288, 92, 'This is how polyglots learn languages,', 325.160, 327.656, NULL),
  (5289, 92, 'and the best news is,
it''s available to anyone', 327.680, 330.536, NULL),
  (5290, 92, 'who is willing to take the learning
into their own hands.', 330.560, 333.240, NULL),
  (5291, 92, 'So meeting other polyglots
helped me realize', 334.520, 336.616, NULL),
  (5292, 92, 'that it is really crucial
to find enjoyment', 336.640, 339.656, NULL),
  (5293, 92, 'in the process of learning languages,', 339.680, 341.776, NULL),
  (5294, 92, 'but also that joy in itself is not enough.', 341.800, 344.840, NULL),
  (5295, 92, 'If you want to achieve fluency
in a foreign language,', 345.680, 348.416, NULL),
  (5296, 92, 'you''ll also need to apply
three more principles.', 348.440, 350.920, NULL),
  (5297, 92, 'First of all, you''ll need
effective methods.', 351.760, 354.360, NULL),
  (5298, 92, 'If you try to memorize a list of words
for a test tomorrow,', 355.160, 358.576, NULL),
  (5299, 92, 'the words will be stored
in your short-term memory', 358.600, 360.976, NULL),
  (5300, 92, 'and you''ll forget them after a few days.', 361.000, 362.905, NULL),
  (5301, 92, 'If you, however,
want to keep words long term,', 363.400, 366.336, NULL),
  (5302, 92, 'you need to revise them
in the course of a few days repeatedly', 366.360, 369.296, NULL),
  (5303, 92, 'using the so-called space repetition.', 369.320, 371.536, NULL),
  (5304, 92, 'You can use apps which are based
on this system such as Anki or Memrise,', 371.560, 375.816, NULL),
  (5305, 92, 'or you can write lists of word
in a notebook using the Goldlist method,', 375.840, 379.176, NULL),
  (5306, 92, 'which is also very popular
with many polyglots.', 379.200, 381.896, NULL),
  (5307, 92, 'If you''re not sure which methods are
effective and what is available out there,', 381.920, 385.656, NULL),
  (5308, 92, 'just check out polyglots''
YouTube channels and websites', 385.680, 388.696, NULL),
  (5309, 92, 'and get inspiration from them.', 388.720, 390.496, NULL),
  (5310, 92, 'If it works for them,
it will most probably work for you too.', 390.520, 393.440, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (5311, 92, 'The third principle to follow', 394.840, 396.816, NULL),
  (5312, 92, 'is to create a system in your learning.', 396.840, 399.000, NULL),
  (5313, 92, 'We''re all very busy and no one
really has time to learn a language today.', 399.720, 403.936, NULL),
  (5314, 92, 'But we can create that time
if we just plan a bit ahead.', 403.960, 407.736, NULL),
  (5315, 92, 'Can you wake up 15 minutes earlier
than you normally do?', 407.760, 411.176, NULL),
  (5316, 92, 'That would be the perfect time
to revise some vocabulary.', 411.200, 414.496, NULL),
  (5317, 92, 'Can you listen to a podcast
on your way to work while driving?', 414.520, 418.256, NULL),
  (5318, 92, 'Well, that would be great
to get some listening experience.', 418.280, 421.736, NULL),
  (5319, 92, 'There are so many things we can do
without even planning that extra time,', 421.760, 425.216, NULL),
  (5320, 92, 'such as listening to podcasts
on our way to work', 425.240, 427.896, NULL),
  (5321, 92, 'or doing our household chores.', 427.920, 429.576, NULL),
  (5322, 92, 'The important thing is
to create a plan in the learning.', 429.600, 432.896, NULL),
  (5323, 92, '"I will practice speaking
every Tuesday and Thursday', 432.920, 435.416, NULL),
  (5324, 92, 'with a friend for 20 minutes.', 435.440, 437.496, NULL),
  (5325, 92, 'I will listen to a YouTube video
while having breakfast."', 437.520, 441.936, NULL),
  (5326, 92, 'If you create a system in your learning,', 441.960, 444.096, NULL),
  (5327, 92, 'you don''t need to find that extra time,', 444.120, 446.016, NULL),
  (5328, 92, 'because it will become
a part of your everyday life.', 446.040, 448.480, NULL),
  (5329, 92, 'And finally, if you want to learn
a language fluently,', 449.880, 453.096, NULL),
  (5330, 92, 'you need also a bit of patience.', 453.120, 455.840, NULL),
  (5331, 92, 'It''s not possible to learn
a language within two months,', 456.600, 459.336, NULL),
  (5332, 92, 'but it''s definitely possible to make
a visible improvement in two months,', 459.360, 463.256, NULL),
  (5333, 92, 'if you learn in small chunks every day
in a way that you enjoy.', 463.280, 467.016, NULL),
  (5334, 92, 'And there is nothing
that motivates us more', 467.040, 469.176, NULL),
  (5335, 92, 'than our own success.', 469.200, 470.440, NULL),
  (5336, 92, 'I vividly remember the moment', 471.120, 473.016, NULL),
  (5337, 92, 'when I understood the first joke
in German when watching "Friends."', 473.040, 476.720, NULL),
  (5338, 92, 'I was so happy and motivated', 477.280, 479.136, NULL),
  (5339, 92, 'that I just kept on watching that day
two more episodes,', 479.160, 482.176, NULL),
  (5340, 92, 'and as I kept watching,', 482.200, 483.936, NULL),
  (5341, 92, 'I had more and more of those moments
of understanding, these little victories,', 483.960, 488.176, NULL),
  (5342, 92, 'and step by step, I got to a level
where I could use the language', 488.200, 491.656, NULL),
  (5343, 92, 'freely and fluently to express anything.', 491.680, 494.536, NULL),
  (5344, 92, 'This is a wonderful feeling.', 494.560, 496.080, NULL),
  (5345, 92, 'I can''t get enough of that feeling,', 496.800, 498.496, NULL),
  (5346, 92, 'and that''s why I learn
a language every two years.', 498.520, 501.336, NULL),
  (5347, 92, 'So this is the whole polyglot secret.', 501.360, 503.416, NULL),
  (5348, 92, 'Find effective methods
which you can use systematically', 503.440, 506.296, NULL),
  (5349, 92, 'over the period of some time
in a way which you enjoy,', 506.320, 509.616, NULL),
  (5350, 92, 'and this is how polyglots learn
languages within months, not years.', 509.640, 513.520, NULL),
  (5351, 92, 'Now, some of you may be thinking,', 515.160, 516.776, NULL),
  (5352, 92, '"That''s all very nice
to enjoy language learning,', 516.800, 519.136, NULL),
  (5353, 92, 'but isn''t the real secret
that you polyglots', 519.160, 521.696, NULL),
  (5354, 92, 'are just super talented
and most of us aren''t?"', 521.720, 524.320, NULL),
  (5355, 92, 'Well, there''s one thing
I haven''t told you about Benny and Lucas.', 525.320, 528.400, NULL),
  (5356, 92, 'Benny had 11 years of Irish Gaelic
and five years of German at school.', 529.159, 534.976, NULL),
  (5357, 92, 'He couldn''t speak them
at all when graduating.', 535.000, 538.216, NULL),
  (5358, 92, 'Up to the age of 21, he thought
he didn''t have the language gene', 538.240, 542.416, NULL),
  (5359, 92, 'and he could not speak another language.', 542.440, 544.856, NULL),
  (5360, 92, 'Then he started to look
for his way of learning languages,', 544.880, 547.816, NULL),
  (5361, 92, 'which was speaking to native speakers
and getting feedback from them,', 547.840, 551.696, NULL),
  (5362, 92, 'and today Benny can easily
have a conversation in 10 languages.', 551.720, 555.680, NULL),
  (5363, 92, 'Lucas tried to learn English
at school for 10 years.', 557.120, 560.416, NULL),
  (5364, 92, 'He was one of the worst students in class.', 560.440, 563.056, NULL),
  (5365, 92, 'His friends even made fun of him', 563.080, 564.696, NULL),
  (5366, 92, 'and gave him a Russian textbook as a joke', 564.720, 567.336, NULL),
  (5367, 92, 'because they thought he would never
learn that language, or any language.', 567.360, 571.096, NULL),
  (5368, 92, 'And then Lucas started
to experiment with methods,', 571.120, 573.496, NULL),
  (5369, 92, 'looking for his own way to learn,', 573.520, 575.320, NULL),
  (5370, 92, 'for example, by having Skype chat
conversations with strangers.', 576.520, 580.696, NULL),
  (5371, 92, 'And after just 10 years,', 580.720, 582.536, NULL),
  (5372, 92, 'Lucas is able to speak
11 languages fluently.', 582.560, 585.880, NULL),
  (5373, 92, 'Does that sound like a miracle?', 587.000, 588.560, NULL),
  (5374, 92, 'Well, I see such miracles
every single day.', 589.440, 592.040, NULL),
  (5375, 92, 'As a language mentor,', 592.760, 594.096, NULL),
  (5376, 92, 'I help people learn
languages by themselves,', 594.120, 596.536, NULL),
  (5377, 92, 'and I see this every day.', 596.560, 597.856, NULL),
  (5378, 92, 'People struggle with language learning
for five, 10, even 20 years,', 597.880, 602.056, NULL),
  (5379, 92, 'and then they suddenly take
their learning into their own hands,', 602.080, 605.936, NULL),
  (5380, 92, 'start using materials which they enjoy,
more effective methods,', 605.960, 609.256, NULL),
  (5381, 92, 'or they start tracking their learning', 609.280, 611.096, NULL),
  (5382, 92, 'so that they can appreciate
their own progress,', 611.120, 614.056, NULL),
  (5383, 92, 'and that''s when suddenly', 614.080, 616.016, NULL),
  (5384, 92, 'they magically find the language talent
that they were missing all their lives.', 616.040, 620.240, NULL),
  (5385, 92, 'So if you''ve also tried
to learn a language', 621.480, 623.656, NULL),
  (5386, 92, 'and you gave up,
thinking it''s too difficult', 623.680, 626.096, NULL),
  (5387, 92, 'or you don''t have the language talent,', 626.120, 628.376, NULL),
  (5388, 92, 'give it another try.', 628.400, 629.936, NULL),
  (5389, 92, 'Maybe you''re also
just one enjoyable method away', 629.960, 632.816, NULL),
  (5390, 92, 'from learning that language fluently.', 632.840, 634.602, NULL),
  (5391, 92, 'Maybe you''re just one method away
from becoming a polyglot.', 634.960, 638.896, NULL),
  (5392, 92, 'Thank you.', 638.920, 640.136, NULL),
  (5393, 92, '(Applause)', 640.160, 644.360, NULL),
  (5394, 93, 'my first guest is the man who made', 0.000, 3.360, NULL),
  (5395, 93, 'electric cars a thing', 1.560, 5.339, NULL),
  (5396, 93, 'and is currently working on perfecting', 3.360, 7.680, NULL),
  (5397, 93, 'reusable Rockets space travel connecting', 5.339, 9.480, NULL),
  (5398, 93, 'the human brain directly to computers', 7.680, 11.519, NULL),
  (5399, 93, 'connecting cities with electromagnetic', 9.480, 13.679, NULL),
  (5400, 93, 'bullet trains the Starling satellite', 11.519, 15.299, NULL),
  (5401, 93, 'system that''s so important to the war in', 13.679, 18.800, NULL),
  (5402, 93, 'Ukraine and then on Tuesday', 15.299, 18.800, NULL),
  (5403, 93, 'on traffic he also tweets a lot Elon', 20.160, 25.460, NULL),
  (5404, 93, 'Musk', 23.100, 25.460, NULL),
  (5405, 93, 'wow', 30.900, 35.369, NULL),
  (5406, 93, '[Music]', 32.280, 35.369, NULL),
  (5407, 93, 'what did I get the full order of things', 39.899, 43.739, NULL),
  (5408, 93, 'that you do in a day there when I was', 42.120, 45.300, NULL),
  (5409, 93, 'reading there I left out the tunnel', 43.739, 47.520, NULL),
  (5410, 93, 'thing at the end um do you work on all', 45.300, 49.440, NULL),
  (5411, 93, 'these a lot of jobs do you do all these', 47.520, 50.879, NULL),
  (5412, 93, 'things every day do you work on all of', 49.440, 54.480, NULL),
  (5413, 93, 'them in a single day no no but I do have', 50.879, 57.300, NULL),
  (5414, 93, 'I do have a long work day', 54.480, 59.760, NULL),
  (5415, 93, 'um yeah so', 57.300, 62.660, NULL),
  (5416, 93, 'I work a lot', 59.760, 62.660, NULL),
  (5417, 93, 'I''m so thrilled you''re here because you', 63.000, 66.360, NULL),
  (5418, 93, 'know we do a show where we talk about', 64.739, 69.000, NULL),
  (5419, 93, 'what changes happen in the world and but', 66.360, 71.159, NULL),
  (5420, 93, 'we just talk there''s a very few people', 69.000, 74.820, NULL),
  (5421, 93, 'who actually make change happen you are', 71.159, 78.140, NULL),
  (5422, 93, 'one of those people probably', 74.820, 78.140, NULL),
  (5423, 93, 'um you know', 80.759, 84.840, NULL),
  (5424, 93, 'I just want to say I just want to say I', 83.280, 86.650, NULL),
  (5425, 93, 'love this audience', 84.840, 89.749, NULL),
  (5426, 93, '[Applause]', 86.650, 89.749, NULL),
  (5427, 93, 'well you''re a likable guy I mean thanks', 89.880, 94.920, NULL),
  (5428, 93, 'I mean they attack you a lot they do', 91.799, 95.200, NULL),
  (5429, 93, 'yeah', 94.920, 97.500, NULL),
  (5430, 93, '[Laughter]', 95.200, 99.360, NULL),
  (5431, 93, 'and you seem to laugh it off which I', 97.500, 101.460, NULL),
  (5432, 93, 'think is fantastic I love it that you', 99.360, 104.280, NULL),
  (5433, 93, 'have a sense of humor because a guy as', 101.460, 106.619, NULL),
  (5434, 93, 'important as you who makes changes could', 104.280, 109.500, NULL),
  (5435, 93, 'use your powers for evil and not good', 106.619, 113.939, NULL),
  (5436, 93, 'the fact that absolutely you could', 109.500, 115.680, NULL),
  (5437, 93, 'of course I would yeah never use them', 113.939, 118.979, NULL),
  (5438, 93, 'for equal deaths no I know but but the', 115.680, 121.320, NULL),
  (5439, 93, 'way I know that is because you have a', 118.979, 123.500, NULL),
  (5440, 93, 'sense of humor uh yeah you really do', 121.320, 126.240, NULL),
  (5441, 93, 'yeah you like laughing you like to be', 123.500, 129.800, NULL),
  (5442, 93, 'funny I kill me right', 126.240, 132.500, NULL),
  (5443, 93, '[Applause]', 129.800, 135.060, NULL),
  (5444, 93, 'as opposed to somebody like Zuckerberg', 132.500, 138.980, NULL),
  (5445, 93, 'who I''m not even sure is a real boy', 135.060, 138.980, NULL),
  (5446, 93, 'yeah', 139.200, 143.060, NULL),
  (5447, 93, 'um', 141.000, 143.060, NULL),
  (5448, 93, 'yeah I I actually love comedy and and uh', 143.340, 147.959, NULL),
  (5449, 93, 'actually you know like um many years ago', 146.040, 149.340, NULL),
  (5450, 93, 'actually was in the audience here and', 147.959, 151.200, NULL),
  (5451, 93, 'watched your show oh really been a long', 149.340, 153.840, NULL),
  (5452, 93, 'time admirer of your show oh well thank', 151.200, 154.680, NULL),
  (5453, 93, 'you', 153.840, 157.680, NULL),
  (5454, 93, 'I', 154.680, 157.680, NULL),
  (5455, 93, 'let me get back to you being ingenious', 159.300, 164.459, NULL),
  (5456, 93, 'okay but that has always been my view is', 161.040, 166.200, NULL),
  (5457, 93, 'that as I was a history major and when', 164.459, 168.239, NULL),
  (5458, 93, 'you study history what you realize is', 166.200, 169.860, NULL),
  (5459, 93, 'that you know there''s the great man', 168.239, 171.660, NULL),
  (5460, 93, 'Theory and they talk about Kings and', 169.860, 174.420, NULL),
  (5461, 93, 'princes and queens and presidents it''s', 171.660, 177.239, NULL),
  (5462, 93, 'really the people in Tech who change the', 174.420, 179.700, NULL),
  (5463, 93, 'world they''re the people who deal the', 177.239, 182.879, NULL),
  (5464, 93, 'cards at whether it''s fire or', 179.700, 185.459, NULL),
  (5465, 93, 'electricity for good or bad or the', 182.879, 188.700, NULL),
  (5466, 93, 'cotton gin or the iPhone or the atom', 185.459, 190.980, NULL),
  (5467, 93, 'bomb those are the cards and the rest of', 188.700, 193.319, NULL),
  (5468, 93, 'us just play it would you agree with', 190.980, 194.819, NULL),
  (5469, 93, 'that assessment', 193.319, 197.220, NULL),
  (5470, 93, 'I think I think technology is the thing', 194.819, 200.519, NULL),
  (5471, 93, 'that causes these big step changes in in', 197.220, 202.680, NULL),
  (5472, 93, 'Civilization so obviously you''ve got', 200.519, 205.440, NULL),
  (5473, 93, 'things like say the Gutenberg Press', 202.680, 207.120, NULL),
  (5474, 93, 'um before which uh right it was very', 205.440, 208.500, NULL),
  (5475, 93, 'difficult to get books they were very', 207.120, 210.599, NULL),
  (5476, 93, 'rare even if you had a thirst for', 208.500, 211.560, NULL),
  (5477, 93, 'knowledge you really couldn''t do', 210.599, 212.760, NULL),
  (5478, 93, 'anything about it', 211.560, 214.140, NULL),
  (5479, 93, 'um because there were very few books to', 212.760, 215.700, NULL),
  (5480, 93, 'read so', 214.140, 218.099, NULL),
  (5481, 93, 'uh and the the internet is something', 215.700, 221.159, NULL),
  (5482, 93, 'beyond beyond the bug price I think but', 218.099, 223.379, NULL),
  (5483, 93, 'you know it''s it''s a', 221.159, 225.659, NULL),
  (5484, 93, 'like when I first saw the internet uh', 223.379, 227.580, NULL),
  (5485, 93, 'coming into being in a way that that the', 225.659, 229.200, NULL),
  (5486, 93, 'general public could use it it felt like', 227.580, 232.980, NULL),
  (5487, 93, 'the what the the humanity as a whole was', 229.200, 234.540, NULL),
  (5488, 93, 'uh', 232.980, 236.459, NULL),
  (5489, 93, 'developing a nervous system so', 234.540, 238.260, NULL),
  (5490, 93, 'previously uh the way the information', 236.459, 240.060, NULL),
  (5491, 93, 'would travel would be by osmosis one', 238.260, 242.220, NULL),
  (5492, 93, 'person to another or one person calling', 240.060, 243.360, NULL),
  (5493, 93, 'another', 242.220, 245.519, NULL),
  (5494, 93, 'um but uh', 243.360, 247.140, NULL),
  (5495, 93, 'you did the access to information was', 245.519, 249.780, NULL),
  (5496, 93, 'very limited now with the Internet it''s', 247.140, 250.980, NULL),
  (5497, 93, 'like having a nervous system it''s like', 249.780, 253.500, NULL),
  (5498, 93, 'any part of of humanity has access to', 250.980, 256.019, NULL),
  (5499, 93, 'almost all the information of humanity', 253.500, 258.600, NULL),
  (5500, 93, 'hmm like you could be in the in the', 256.019, 260.699, NULL),
  (5501, 93, 'middle of the Amazon jungle uh whether', 258.600, 262.620, NULL),
  (5502, 93, 'it''s a starling terminal and have access', 260.699, 265.320, NULL),
  (5503, 93, 'to more information uh than the', 262.620, 267.720, NULL),
  (5504, 93, 'president did in 1980. right well', 265.320, 270.540, NULL),
  (5505, 93, 'anything on your phone everything is', 267.720, 273.540, NULL),
  (5506, 93, 'yeah okay so so you are one of these', 270.540, 276.240, NULL),
  (5507, 93, 'dealers these people who deal the cards', 273.540, 279.500, NULL),
  (5508, 93, 'and I feel some memes too', 276.240, 279.500, NULL),
  (5509, 93, 'quickly', 286.020, 288.979, NULL),
  (5510, 93, 'so I think a lot of people thought when', 290.280, 294.000, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (5511, 93, 'you bought Twitter that this is kind of', 292.199, 295.740, NULL),
  (5512, 93, 'an outlier like how does this what', 294.000, 297.660, NULL),
  (5513, 93, 'doesn''t fit with these other things', 295.740, 299.040, NULL),
  (5514, 93, 'you''re doing I never thought that', 297.660, 301.680, NULL),
  (5515, 93, 'because I think you''re dealing with big', 299.040, 304.320, NULL),
  (5516, 93, 'civilizational issues and problems and I', 301.680, 306.600, NULL),
  (5517, 93, 'was right on your page I think Twitter', 304.320, 308.520, NULL),
  (5518, 93, 'is one of them I mean you have talked', 306.600, 311.580, NULL),
  (5519, 93, 'about this at woke mind virus yes and', 308.520, 314.460, NULL),
  (5520, 93, 'really apocalyptic terms yeah I don''t', 311.580, 316.380, NULL),
  (5521, 93, 'you should explain why you don''t think', 314.460, 318.120, NULL),
  (5522, 93, 'it''s hyperbole to say things like it''s', 316.380, 320.220, NULL),
  (5523, 93, 'pushing civilization towards suicide', 318.120, 322.440, NULL),
  (5524, 93, 'first of all what is the walk mine virus', 320.220, 324.660, NULL),
  (5525, 93, 'and if we don''t deal with this nothing', 322.440, 326.639, NULL),
  (5526, 93, 'else can get done tell me why you think', 324.660, 327.900, NULL),
  (5527, 93, 'that', 326.639, 329.580, NULL),
  (5528, 93, 'yeah so', 327.900, 330.479, NULL),
  (5529, 93, 'um', 329.580, 331.860, NULL),
  (5530, 93, 'I think we need to be very cautious', 330.479, 334.940, NULL),
  (5531, 93, 'about anything that is anti-meritocratic', 331.860, 338.699, NULL),
  (5532, 93, 'and anything that is uh', 334.940, 340.680, NULL),
  (5533, 93, 'that that results in the suppression of', 338.699, 342.320, NULL),
  (5534, 93, 'a free speech', 340.680, 344.940, NULL),
  (5535, 93, 'so you know those are two other aspects', 342.320, 346.320, NULL),
  (5536, 93, 'of the work mind virus that I think are', 344.940, 348.560, NULL),
  (5537, 93, 'very dangerous uh is that it''s often', 346.320, 350.699, NULL),
  (5538, 93, 'anti-mureaucratic you can''t you can''t', 348.560, 353.460, NULL),
  (5539, 93, 'question things uh even the questioning', 350.699, 358.199, NULL),
  (5540, 93, 'is bad so uh you know you know another', 353.460, 359.759, NULL),
  (5541, 93, 'way to', 358.199, 362.400, NULL),
  (5542, 93, 'almost Anonymous would we cancel culture', 359.759, 363.780, NULL),
  (5543, 93, 'and obviously people try to cancel you', 362.400, 366.120, NULL),
  (5544, 93, 'many times many times yeah I mean every', 363.780, 368.180, NULL),
  (5545, 93, 'week yeah', 366.120, 370.500, NULL),
  (5546, 93, 'from left and right I''ve had it from', 368.180, 372.539, NULL),
  (5547, 93, 'both sides yeah and it''s interesting', 370.500, 374.639, NULL),
  (5548, 93, 'people you and I are both like in that', 372.539, 376.080, NULL),
  (5549, 93, 'little group of people maybe it''s a', 374.639, 378.360, NULL),
  (5550, 93, 'bigger group now yeah who who are called', 376.080, 380.460, NULL),
  (5551, 93, 'conservative who haven''t really changed', 378.360, 382.199, NULL),
  (5552, 93, 'I don''t see you think of you as a', 380.460, 383.639, NULL),
  (5553, 93, 'conservative definitely', 382.199, 386.460, NULL),
  (5554, 93, 'yeah like I I at least think of myself', 383.639, 389.819, NULL),
  (5555, 93, 'as a moderate uh you know uh so I mean', 386.460, 393.120, NULL),
  (5556, 93, 'uh at least that like I''ve spent a', 389.819, 394.440, NULL),
  (5557, 93, 'massive amount of My Life Energy', 393.120, 397.199, NULL),
  (5558, 93, 'building sustainable energy uh you know', 394.440, 399.240, NULL),
  (5559, 93, 'electric vehicles and and batteries and', 397.199, 401.100, NULL),
  (5560, 93, 'solar and stuff uh to help save the', 399.240, 402.600, NULL),
  (5561, 93, 'environment that''s that''s not that''s not', 401.100, 404.720, NULL),
  (5562, 93, 'a', 402.600, 404.720, NULL),
  (5563, 93, 'it''s not exactly far right now you drew', 408.660, 413.580, NULL),
  (5564, 93, 'that diagram you drew that diagram once', 410.699, 415.560, NULL),
  (5565, 93, 'where you''re here I I related to that', 413.580, 417.840, NULL),
  (5566, 93, 'and like the world has changed right I', 415.560, 419.940, NULL),
  (5567, 93, 'feel the same way I feel like very often', 417.840, 421.800, NULL),
  (5568, 93, 'wokeness is it''s not building on', 419.940, 423.300, NULL),
  (5569, 93, 'liberalism it''s the opposite of', 421.800, 424.919, NULL),
  (5570, 93, 'liberalism I can mention yes exactly', 423.300, 426.600, NULL),
  (5571, 93, 'many examples where it''s the op', 424.919, 428.880, NULL),
  (5572, 93, 'including Free Speech free speech is', 426.600, 431.100, NULL),
  (5573, 93, 'actually is extremely important and it''s', 428.880, 432.600, NULL),
  (5574, 93, 'bizarre that we''ve come to this point', 431.100, 433.860, NULL),
  (5575, 93, 'where', 432.600, 436.560, NULL),
  (5576, 93, 'um like free speech used to be a left or', 433.860, 440.759, NULL),
  (5577, 93, 'liberal value and and yet we see uh from', 436.560, 444.300, NULL),
  (5578, 93, 'you know in quotes left uh a desire to', 440.759, 446.280, NULL),
  (5579, 93, 'actually censor', 444.300, 447.840, NULL),
  (5580, 93, 'um and uh', 446.280, 450.120, NULL),
  (5581, 93, 'that seems crazy I mean I think we', 447.840, 452.520, NULL),
  (5582, 93, 'should be extremely concerned about', 450.120, 455.580, NULL),
  (5583, 93, 'anything that uh', 452.520, 457.440, NULL),
  (5584, 93, 'undermines the First Amendment there''s a', 455.580, 459.000, NULL),
  (5585, 93, 'reason for the First Amendment', 457.440, 460.800, NULL),
  (5586, 93, 'um the first amendment is because people', 459.000, 462.479, NULL),
  (5587, 93, 'came from countries where they could not', 460.800, 463.979, NULL),
  (5588, 93, 'speak freely', 462.479, 466.259, NULL),
  (5589, 93, 'and and where and we''re saying certain', 463.979, 468.300, NULL),
  (5590, 93, 'things would get you thrown into prison', 466.259, 469.500, NULL),
  (5591, 93, 'and they were like well we don''t want', 468.300, 470.580, NULL),
  (5592, 93, 'that here', 469.500, 472.199, NULL),
  (5593, 93, 'and by the way in many parts of the', 470.580, 473.520, NULL),
  (5594, 93, 'world', 472.199, 475.380, NULL),
  (5595, 93, 'including possible that people might', 473.520, 477.360, NULL),
  (5596, 93, 'think are relatively similar to the', 475.380, 479.699, NULL),
  (5597, 93, 'United States the the speech laws are', 477.360, 483.060, NULL),
  (5598, 93, 'draconian England is quite different I', 479.699, 486.360, NULL),
  (5599, 93, 'won''t name any countries but', 483.060, 488.880, NULL),
  (5600, 93, 'why are we protecting them they have no', 486.360, 489.680, NULL),
  (5601, 93, 'first', 488.880, 492.720, NULL),
  (5602, 93, 'it''s very easy to prove libel in England', 489.680, 494.580, NULL),
  (5603, 93, 'whereas here it''s almost England', 492.720, 495.800, NULL),
  (5604, 93, 'um', 494.580, 497.880, NULL),
  (5605, 93, 'I wouldn''t want to say the wrong thing', 495.800, 501.300, NULL),
  (5606, 93, 'or uh yes you could be sued easier there', 497.880, 503.099, NULL),
  (5607, 93, 'I mean there are a lot in in France I', 501.300, 505.139, NULL),
  (5608, 93, 'think if you deny the Holocaust', 503.099, 507.060, NULL),
  (5609, 93, 'which I think is abhorrent but I also', 505.139, 508.680, NULL),
  (5610, 93, 'think it should be part of free speech', 507.060, 511.379, NULL),
  (5611, 93, 'right you can be thrown into jail okay', 508.680, 514.140, NULL),
  (5612, 93, 'so this my I I really can''t emphasize', 511.379, 517.200, NULL),
  (5613, 93, 'this enough we must uh uh we must', 514.140, 519.599, NULL),
  (5614, 93, 'protect free speech and Free Speech only', 517.200, 521.399, NULL),
  (5615, 93, 'matters it''s only relevant when it''s', 519.599, 523.320, NULL),
  (5616, 93, 'someone you don''t like saying something', 521.399, 525.720, NULL),
  (5617, 93, 'in your life because obviously every', 523.320, 527.820, NULL),
  (5618, 93, 'speech that you like is uh yes that''s', 525.720, 528.839, NULL),
  (5619, 93, 'easy', 527.820, 531.959, NULL),
  (5620, 93, 'um so it it''s uh and it''s the thing', 528.839, 534.180, NULL),
  (5621, 93, 'about censorship is that sure for those', 531.959, 536.040, NULL),
  (5622, 93, 'who would Advocate it um just remember', 534.180, 538.320, NULL),
  (5623, 93, 'at some point that will be turned on you', 536.040, 541.440, NULL),
  (5624, 93, '[Applause]', 538.320, 544.040, NULL),
  (5625, 93, 'so', 541.440, 549.060, NULL),
  (5626, 93, 'this uh woke mind virus how did it start', 544.040, 552.540, NULL),
  (5627, 93, 'was it bats was it a yeah escape from a', 549.060, 554.880, NULL),
  (5628, 93, 'lab I mean what is your assessment of', 552.540, 558.540, NULL),
  (5629, 93, 'what because it''s fairly recent why how', 554.880, 560.459, NULL),
  (5630, 93, 'did it start and why', 558.540, 563.160, NULL),
  (5631, 93, 'I was I was trying to figure out where', 560.459, 564.660, NULL),
  (5632, 93, 'where it''s coming from I think it''s', 563.160, 566.339, NULL),
  (5633, 93, 'actually been a long time Brewing', 564.660, 568.440, NULL),
  (5634, 93, 'um in that it''s uh', 566.339, 570.720, NULL),
  (5635, 93, 'I think it''s been going on for a while', 568.440, 571.680, NULL),
  (5636, 93, 'um', 570.720, 574.260, NULL),
  (5637, 93, 'it it and', 571.680, 575.700, NULL),
  (5638, 93, 'um', 574.260, 577.620, NULL),
  (5639, 93, 'the amount of indoctrination that that''s', 575.700, 580.740, NULL),
  (5640, 93, 'happening in schools and universities is', 577.620, 583.920, NULL),
  (5641, 93, 'I think far beyond what parents realize', 580.740, 585.959, NULL),
  (5642, 93, 'um and I only I sort of came to realize', 583.920, 588.720, NULL),
  (5643, 93, 'this somewhat late um', 585.959, 591.779, NULL),
  (5644, 93, 'the the experience that we had uh in', 588.720, 593.220, NULL),
  (5645, 93, 'high school and college is not the', 591.779, 594.899, NULL),
  (5646, 93, 'experience that that kids today are', 593.220, 595.980, NULL),
  (5647, 93, 'having', 594.899, 598.380, NULL),
  (5648, 93, 'um and and hasn''t been for I don''t know', 595.980, 600.839, NULL),
  (5649, 93, '10 years maybe 20 years', 598.380, 601.980, NULL),
  (5650, 93, 'so', 600.839, 604.440, NULL),
  (5651, 93, 'uh my parents themselves also a big part', 601.980, 605.640, NULL),
  (5652, 93, 'of the problem', 604.440, 609.120, NULL),
  (5653, 93, 'they well I I suppose in some cases that', 605.640, 612.060, NULL),
  (5654, 93, 'parents but but I think like the parents', 609.120, 613.500, NULL),
  (5655, 93, 'are just generally not aware of what', 612.060, 615.660, NULL),
  (5656, 93, 'their their kids are being told or what', 613.500, 617.399, NULL),
  (5657, 93, 'they''re not being taught', 615.660, 619.080, NULL),
  (5658, 93, 'um they''re letting the kids think that', 617.399, 621.839, NULL),
  (5659, 93, 'they''re equal I mean yeah let me let me', 619.080, 623.940, NULL),
  (5660, 93, 'let me give you an example that a', 621.839, 625.740, NULL),
  (5661, 93, 'Fairmont told me which uh you know his', 623.940, 628.140, NULL),
  (5662, 93, 'daughters uh go to college and and sorry', 625.740, 630.360, NULL),
  (5663, 93, 'go to high school in the Bay Area', 628.140, 631.740, NULL),
  (5664, 93, 'um and um', 630.360, 634.560, NULL),
  (5665, 93, 'and he he was asking them like well so', 631.740, 635.820, NULL),
  (5666, 93, 'who are the', 634.560, 636.899, NULL),
  (5667, 93, 'you know who are the first few', 635.820, 639.060, NULL),
  (5668, 93, 'presidents of the United States uh that', 636.899, 641.279, NULL),
  (5669, 93, 'they could name Washington but and I', 639.060, 642.300, NULL),
  (5670, 93, 'said what do you know about him well he', 641.279, 643.920, NULL),
  (5671, 93, 'was a slave owner what else right', 642.300, 645.959, NULL),
  (5672, 93, 'exactly nothing', 643.920, 648.360, NULL),
  (5673, 93, 'right like uh okay that''s maybe you', 645.959, 651.060, NULL),
  (5674, 93, 'should know more than that you know yeah', 648.360, 653.339, NULL),
  (5675, 93, 'yeah that and that that is the world', 651.060, 656.959, NULL),
  (5676, 93, 'mind virus exactly yeah so', 653.339, 662.040, NULL),
  (5677, 93, 'exactly it''s it''s like you know the uh', 656.959, 664.680, NULL),
  (5678, 93, 'you know slavery is obviously a horrific', 662.040, 666.480, NULL),
  (5679, 93, 'institution but we should still know', 664.680, 668.700, NULL),
  (5680, 93, 'more about George Washington than that', 666.480, 670.320, NULL),
  (5681, 93, 'and by the way one that was practiced', 668.700, 672.360, NULL),
  (5682, 93, 'all over the world forever since the', 670.320, 673.920, NULL),
  (5683, 93, 'beginning of time by every race', 672.360, 676.019, NULL),
  (5684, 93, 'including people of color I''m sorry to', 673.920, 677.700, NULL),
  (5685, 93, 'tell you that it''s huge in the Bible', 676.019, 681.440, NULL),
  (5686, 93, 'absolutely so the Bible loves it', 677.700, 684.420, NULL),
  (5687, 93, 'really yes they''re quite strict about', 681.440, 686.160, NULL),
  (5688, 93, 'like you know don''t take someone else''s', 684.420, 687.360, NULL),
  (5689, 93, 'slave and that kind of thing right but', 686.160, 689.519, NULL),
  (5690, 93, 'no one ever says just don''t do it they', 687.360, 691.440, NULL),
  (5691, 93, 'don''t they don''t they don''t at no point', 689.519, 692.940, NULL),
  (5692, 93, 'does it say slavery is bad in the Bible', 691.440, 696.540, NULL),
  (5693, 93, 'no they do not condemn it at all they', 692.940, 699.060, NULL),
  (5694, 93, 'just have so so it''s um but Twitter is', 696.540, 701.300, NULL),
  (5695, 93, 'not doing bad right I mean I saw today', 699.060, 704.760, NULL),
  (5696, 93, 'that Tucker Carlson yeah recently fired', 701.300, 706.140, NULL),
  (5697, 93, 'you were just on his show and he lost', 704.760, 708.060, NULL),
  (5698, 93, 'his job so I hope this isn''t enough yeah', 706.140, 712.260, NULL),
  (5699, 93, 'yeah but uh luckily uh the angel of', 708.060, 715.260, NULL),
  (5700, 93, 'death exactly I''m not the Typhoid Mary', 712.260, 719.060, NULL),
  (5701, 93, 'of uh talk shows uh', 715.260, 719.060, NULL),
  (5702, 93, 'his rant yesterday or today on Twitter', 719.660, 727.560, NULL),
  (5703, 93, 'yesterday or something more than every', 723.959, 730.500, NULL),
  (5704, 93, 'cable news monologue or something like', 727.560, 732.779, NULL),
  (5705, 93, 'that is that right well Twitter has a', 730.500, 734.399, NULL),
  (5706, 93, 'tremendous audience so there''s 250', 732.779, 736.440, NULL),
  (5707, 93, 'million people that spend an average of', 734.399, 737.700, NULL),
  (5708, 93, 'half an hour a day on Twitter so it''s', 736.440, 740.339, NULL),
  (5709, 93, 'about 120 to 130 million user hours per', 737.700, 744.120, NULL),
  (5710, 93, 'day and it''s been increasing so', 740.339, 746.220, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (5711, 93, 'um the we didn''t do anything to be clear', 744.120, 748.200, NULL),
  (5712, 93, 'we did nothing special whatsoever I', 746.220, 750.060, NULL),
  (5713, 93, 'learned about it afterwards that he had', 748.200, 752.880, NULL),
  (5714, 93, 'posted something on Twitter um so it''s', 750.060, 754.980, NULL),
  (5715, 93, 'just the Twitter has a lot of people''s', 752.880, 757.560, NULL),
  (5716, 93, 'attention uh so and it tends to be the', 754.980, 760.740, NULL),
  (5717, 93, 'people that are uh that read read a lot', 757.560, 763.079, NULL),
  (5718, 93, 'or or interested in current events', 760.740, 764.519, NULL),
  (5719, 93, 'um and um', 763.079, 767.399, NULL),
  (5720, 93, 'generally are pretty influential so but', 764.519, 769.079, NULL),
  (5721, 93, 'most of the people who tweet are the', 767.399, 770.880, NULL),
  (5722, 93, 'same people right I mean the people who', 769.079, 772.620, NULL),
  (5723, 93, 'actually tweet it''s mostly just reading', 770.880, 774.899, NULL),
  (5724, 93, 'it yeah I feel like that''s I''ve read', 772.620, 777.060, NULL),
  (5725, 93, 'this many times it''s a very very small', 774.899, 779.160, NULL),
  (5726, 93, 'percentage of the people on Twitter and', 777.060, 781.320, NULL),
  (5727, 93, 'it seems like yeah see here''s why I', 779.160, 782.820, NULL),
  (5728, 93, 'don''t tweet anymore because you may be', 781.320, 785.360, NULL),
  (5729, 93, 'the mayor of tweak town now yeah', 782.820, 788.160, NULL),
  (5730, 93, 'I''m getting a cap with that and I''m glad', 785.360, 790.560, NULL),
  (5731, 93, 'and I like it that the mayor likes my', 788.160, 792.540, NULL),
  (5732, 93, 'jokes but the reason I don''t do it', 790.560, 795.600, NULL),
  (5733, 93, 'anymore is because the mob of Mean Girls', 792.540, 798.779, NULL),
  (5734, 93, 'is still there and that has not changed', 795.600, 801.180, NULL),
  (5735, 93, 'I know like it''s too easy to get', 798.779, 803.399, NULL),
  (5736, 93, 'canceled', 801.180, 805.560, NULL),
  (5737, 93, 'and I don''t even know what pisses them', 803.399, 808.139, NULL),
  (5738, 93, 'off they''re so nuts these kids I feel', 805.560, 809.760, NULL),
  (5739, 93, 'like I''m walking on a roof with a', 808.139, 812.100, NULL),
  (5740, 93, 'blindfold I could fall off anytime yeah', 809.760, 814.320, NULL),
  (5741, 93, 'that was the most innocuous thing but', 812.100, 815.700, NULL),
  (5742, 93, 'it''s like you know I said George', 814.320, 817.800, NULL),
  (5743, 93, 'Washington was a great president oh how', 815.700, 820.200, NULL),
  (5744, 93, 'dare you yeah yeah exactly had some', 817.800, 822.480, NULL),
  (5745, 93, 'flows but but how do you fix this', 820.200, 823.980, NULL),
  (5746, 93, 'instrumental in this Mr Mayor creation', 822.480, 826.920, NULL),
  (5747, 93, 'of the United States so yeah', 823.980, 829.019, NULL),
  (5748, 93, 'um well you have to say like what does', 826.920, 831.000, NULL),
  (5749, 93, 'canceled mean you know uh I mean it''s', 829.019, 832.560, NULL),
  (5750, 93, 'yes people attacking on Twitter that''s', 831.000, 834.120, NULL),
  (5751, 93, 'one thing but frankly that''s just going', 832.560, 835.380, NULL),
  (5752, 93, 'to increase engagement', 834.120, 838.200, NULL),
  (5753, 93, 'so I would just ignore it well that''s', 835.380, 840.120, NULL),
  (5754, 93, 'easy for you because they can''t take', 838.200, 841.620, NULL),
  (5755, 93, 'your job away', 840.120, 844.200, NULL),
  (5756, 93, 'or any of your main 10 jobs but they', 841.620, 846.000, NULL),
  (5757, 93, 'could take mine and they did Once by the', 844.200, 848.339, NULL),
  (5758, 93, 'way yeah so still Affair you know I was', 846.000, 851.160, NULL),
  (5759, 93, 'like literally canceled yeah I mean like', 848.339, 853.320, NULL),
  (5760, 93, 'the Show is canceled', 851.160, 855.540, NULL),
  (5761, 93, 'so you but okay so you were in Congress', 853.320, 857.459, NULL),
  (5762, 93, 'uh at Congress the other day talking', 855.540, 859.500, NULL),
  (5763, 93, 'with Chuck Schumer about AI I''m very', 857.459, 861.000, NULL),
  (5764, 93, 'interested in this because you''ve been', 859.500, 862.860, NULL),
  (5765, 93, 'on this for years I''ve always thought', 861.000, 864.720, NULL),
  (5766, 93, 'you were right about this I think you''re', 862.860, 866.160, NULL),
  (5767, 93, 'right about almost everything I mean', 864.720, 868.079, NULL),
  (5768, 93, 'let''s have more babies and raise them on', 866.160, 871.079, NULL),
  (5769, 93, 'Mars I don''t get that but okay well uh I', 868.079, 873.120, NULL),
  (5770, 93, 'just think we should be cautious about', 871.079, 875.639, NULL),
  (5771, 93, 'civilizational decline with with and we', 873.120, 877.260, NULL),
  (5772, 93, 'have plummeting growth rates', 875.639, 879.779, NULL),
  (5773, 93, 'um most places yeah right and also', 877.260, 882.839, NULL),
  (5774, 93, 'plummeting resources no no resources', 879.779, 885.260, NULL),
  (5775, 93, 'will be fine', 882.839, 885.260, NULL),
  (5776, 93, 'look I''m not suggesting complacency but', 886.160, 890.880, NULL),
  (5777, 93, 'we do want to move to a sustainable', 889.079, 892.560, NULL),
  (5778, 93, 'energy economy as quickly as possible', 890.880, 895.740, NULL),
  (5779, 93, 'but but we''re not in any danger of uh', 892.560, 897.779, NULL),
  (5780, 93, 'resource collapse but lots of people', 895.740, 900.620, NULL),
  (5781, 93, 'don''t have enough food or water', 897.779, 903.180, NULL),
  (5782, 93, 'we will run out of water they''re running', 900.620, 904.760, NULL),
  (5783, 93, 'they''re running out of sand', 903.180, 908.040, NULL),
  (5784, 93, 'Earth is 70 Water by surface area', 904.760, 910.160, NULL),
  (5785, 93, 'um but you can''t drink that', 908.040, 913.260, NULL),
  (5786, 93, 'desalination is absurdly Chief why don''t', 910.160, 915.839, NULL),
  (5787, 93, 'we do it then we do it is you have a lot', 913.260, 918.360, NULL),
  (5788, 93, 'of free time it is done this there is a', 915.839, 920.160, NULL),
  (5789, 93, 'lot of desalination done okay but', 918.360, 921.300, NULL),
  (5790, 93, 'there''s plenty of water this is not an', 920.160, 922.800, NULL),
  (5791, 93, 'issue I want to be clear all right so', 921.300, 924.720, NULL),
  (5792, 93, 'but let''s talk about AI because like you', 922.800, 926.459, NULL),
  (5793, 93, 'were you were on this tip 10 years ago', 924.720, 928.139, NULL),
  (5794, 93, 'when nobody else was that and I always', 926.459, 930.120, NULL),
  (5795, 93, 'thought he''s right why because I''ve seen', 928.139, 931.800, NULL),
  (5796, 93, 'too many movies everything that happens', 930.120, 934.320, NULL),
  (5797, 93, 'in movies that happens in real life and', 931.800, 936.899, NULL),
  (5798, 93, 'yeah you know if you make things that', 934.320, 939.000, NULL),
  (5799, 93, 'are way smarter than you why wouldn''t', 936.899, 941.279, NULL),
  (5800, 93, 'they become your overlords so what did', 939.000, 942.899, NULL),
  (5801, 93, 'you say to Chuck Schumer and what are we', 941.279, 944.220, NULL),
  (5802, 93, 'doing about this I know you want to', 942.899, 946.500, NULL),
  (5803, 93, 'pause in AI because in the just in the', 944.220, 948.839, NULL),
  (5804, 93, 'last six months with chat GPT which came', 946.500, 951.060, NULL),
  (5805, 93, 'from a company you started', 948.839, 952.140, NULL),
  (5806, 93, 'yes', 951.060, 955.380, NULL),
  (5807, 93, '[Laughter]', 952.140, 956.940, NULL),
  (5808, 93, 'um well I mean A friend of mine has a', 955.380, 958.740, NULL),
  (5809, 93, 'sort of modification of Occam''s razor', 956.940, 960.240, NULL),
  (5810, 93, 'you know you know instead of the', 958.740, 961.680, NULL),
  (5811, 93, 'simplest thing being the most likely', 960.240, 963.480, NULL),
  (5812, 93, 'that like the most ironic outcome is', 961.680, 968.459, NULL),
  (5813, 93, 'most likely right right yes so', 963.480, 971.040, NULL),
  (5814, 93, 'um with respect to AI', 968.459, 972.839, NULL),
  (5815, 93, 'um I just think we should be uh we', 971.040, 973.980, NULL),
  (5816, 93, 'should have some sort of regulatory', 972.839, 976.740, NULL),
  (5817, 93, 'oversight so uh you know for anything', 973.980, 978.600, NULL),
  (5818, 93, 'that is a danger to the public uh if', 976.740, 981.660, NULL),
  (5819, 93, 'it''s sort of uh aircraft uh cars uh Food', 978.600, 982.980, NULL),
  (5820, 93, 'and Drug and whatnot we''ve got some', 981.660, 984.540, NULL),
  (5821, 93, 'regulatory oversight like a referee', 982.980, 986.639, NULL),
  (5822, 93, 'essentially and making sure that uh', 984.540, 989.399, NULL),
  (5823, 93, 'companies don''t cut Corners so', 986.639, 990.120, NULL),
  (5824, 93, 'um', 989.399, 993.839, NULL),
  (5825, 93, 'I think that since if one agrees that uh', 990.120, 995.579, NULL),
  (5826, 93, 'AI is a potential risk to the public', 993.839, 997.199, NULL),
  (5827, 93, 'then there should be some regulatory', 995.579, 1000.199, NULL),
  (5828, 93, 'body that oversees uh what companies are', 997.199, 1001.820, NULL),
  (5829, 93, 'doing so they don''t cut corners and', 1000.199, 1005.139, NULL),
  (5830, 93, 'potentially do something very dangerous', 1001.820, 1005.139, NULL),
  (5831, 93, 'don''t do something', 1006.139, 1011.300, NULL),
  (5832, 93, 'lay out a scenario for me in the next', 1009.139, 1013.579, NULL),
  (5833, 93, 'two five ten years if nothing is done', 1011.300, 1015.199, NULL),
  (5834, 93, 'because we''re very good at doing nothing', 1013.579, 1017.300, NULL),
  (5835, 93, 'especially when it comes in the way of', 1015.199, 1019.160, NULL),
  (5836, 93, 'profit and this is a big profit engine', 1017.300, 1021.380, NULL),
  (5837, 93, 'now for companies they''re going to want', 1019.160, 1023.240, NULL),
  (5838, 93, 'to just compete with each other I mean', 1021.380, 1024.980, NULL),
  (5839, 93, 'there are people like Ray Kurzweil who', 1023.240, 1027.140, NULL),
  (5840, 93, 'doesn''t think it''s a problem at all uh', 1024.980, 1028.819, NULL),
  (5841, 93, 'actually Ray kurzweil''s prediction for', 1027.140, 1031.600, NULL),
  (5842, 93, 'artificial super intelligence uh is', 1028.819, 1035.179, NULL),
  (5843, 93, '2029. he''s not far wrong right but he', 1031.600, 1036.559, NULL),
  (5844, 93, 'doesn''t think it''s a problem whereas', 1035.179, 1038.780, NULL),
  (5845, 93, 'people like you and Bill Gates and', 1036.559, 1041.120, NULL),
  (5846, 93, 'Stephen Hawking thought think it''s a', 1038.780, 1042.439, NULL),
  (5847, 93, 'problem', 1041.120, 1044.360, NULL),
  (5848, 93, 'um yeah it depends if some people want', 1042.439, 1046.040, NULL),
  (5849, 93, 'to live forever or for a much longer', 1044.360, 1048.140, NULL),
  (5850, 93, 'period of time and they see AI as the', 1046.040, 1050.120, NULL),
  (5851, 93, 'only way to or', 1048.140, 1051.919, NULL),
  (5852, 93, 'digital super intelligence is as the', 1050.120, 1053.059, NULL),
  (5853, 93, 'only thing that can figure out how to', 1051.919, 1054.440, NULL),
  (5854, 93, 'get them to live forever I think', 1053.059, 1056.600, NULL),
  (5855, 93, 'Kurzweil is in that category so he would', 1054.440, 1058.059, NULL),
  (5856, 93, 'prefer to have ai', 1056.600, 1060.020, NULL),
  (5857, 93, 'artificial general intelligence than', 1058.059, 1062.000, NULL),
  (5858, 93, 'than not uh because it can figure out', 1060.020, 1063.500, NULL),
  (5859, 93, 'longevity', 1062.000, 1065.900, NULL),
  (5860, 93, 'so are you are you optimistic I read in', 1063.500, 1067.760, NULL),
  (5861, 93, 'your Rolling Stone article back in the', 1065.900, 1069.500, NULL),
  (5862, 93, 'day that you said you can never be happy', 1067.760, 1072.320, NULL),
  (5863, 93, 'unless you''re in love', 1069.500, 1076.000, NULL),
  (5864, 93, 'well you can be half happy I suppose', 1072.320, 1078.440, NULL),
  (5865, 93, 'I mean this I mean there''s two things I', 1076.000, 1080.720, NULL),
  (5866, 93, 'think if to be to be full to be to be', 1078.440, 1082.280, NULL),
  (5867, 93, 'most happy if you''re happy in love and', 1080.720, 1084.620, NULL),
  (5868, 93, 'and you love your work then then you''ll', 1082.280, 1087.260, NULL),
  (5869, 93, 'be I think fully happy if you lack', 1084.620, 1089.539, NULL),
  (5870, 93, 'either of those two if you have one of', 1087.260, 1091.520, NULL),
  (5871, 93, 'those two things be half happy you know', 1089.539, 1094.039, NULL),
  (5872, 93, 'roughly I feel like the theme in a lot', 1091.520, 1095.600, NULL),
  (5873, 93, 'of your works that connect all these', 1094.039, 1097.700, NULL),
  (5874, 93, 'different things is connecting', 1095.600, 1100.280, NULL),
  (5875, 93, 'like you want to connect things you know', 1097.700, 1102.740, NULL),
  (5876, 93, 'you want to connect on the hyperloop and', 1100.280, 1104.860, NULL),
  (5877, 93, 'you want to connect this to Mars and', 1102.740, 1108.520, NULL),
  (5878, 93, 'even to connect four', 1104.860, 1112.520, NULL),
  (5879, 93, 'people in that game what uh Connect Four', 1108.520, 1113.310, NULL),
  (5880, 93, 'you know', 1112.520, 1117.210, NULL),
  (5881, 93, '[Laughter]', 1113.310, 1117.210, NULL),
  (5882, 93, 'this is a comedy right you know', 1119.240, 1122.320, NULL),
  (5883, 93, 'it''s hard for you because when you', 1124.240, 1130.340, NULL),
  (5884, 93, 'bought Twitter you''re kind of doing what', 1127.400, 1132.320, NULL),
  (5885, 93, 'you did when you took over when you', 1130.340, 1134.179, NULL),
  (5886, 93, 'started Tesla you lived at the factory', 1132.320, 1137.120, NULL),
  (5887, 93, 'right I feel like that''s your that''s', 1134.179, 1140.480, NULL),
  (5888, 93, 'your your your pattern you get into this', 1137.120, 1141.980, NULL),
  (5889, 93, 'thing and then you got to live at the', 1140.480, 1144.020, NULL),
  (5890, 93, 'factory to make it work if you''ve been', 1141.980, 1146.299, NULL),
  (5891, 93, 'back in you moved to Texas then you went', 1144.020, 1148.220, NULL),
  (5892, 93, 'back up to San Francisco because of', 1146.299, 1150.380, NULL),
  (5893, 93, 'Twitter I just I was living in the in', 1148.220, 1152.660, NULL),
  (5894, 93, 'the library of Twitter for a while', 1150.380, 1155.059, NULL),
  (5895, 93, 'um yes but it''s I think things are', 1152.660, 1156.860, NULL),
  (5896, 93, 'reasonably stabilized right now it was', 1155.059, 1159.620, NULL),
  (5897, 93, 'uh just on the fast track to bankruptcy', 1156.860, 1161.600, NULL),
  (5898, 93, 'after that position so I had to take a', 1159.620, 1163.280, NULL),
  (5899, 93, 'drastic action there wasn''t any choice', 1161.600, 1164.900, NULL),
  (5900, 93, 'I''m just saying it''s hard for a woman', 1163.280, 1167.360, NULL),
  (5901, 93, 'yeah to like when the guy lives at the', 1164.900, 1168.620, NULL),
  (5902, 93, 'factory', 1167.360, 1171.220, NULL),
  (5903, 93, 'yes', 1168.620, 1171.220, NULL),
  (5904, 93, 'that could be that could be a stumbling', 1172.160, 1177.620, NULL),
  (5905, 93, 'block but yes but', 1174.080, 1180.140, NULL),
  (5906, 93, 'um overall with you know my my concern', 1177.620, 1182.780, NULL),
  (5907, 93, 'with Twitter was to that it is somewhat', 1180.140, 1185.240, NULL),
  (5908, 93, 'of the digital Town Square and um it''s', 1182.780, 1187.100, NULL),
  (5909, 93, 'it''s important that there be both the', 1185.240, 1191.419, NULL),
  (5910, 93, 'reality uh and perception of of trust uh', 1187.100, 1193.880, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (5911, 93, 'for a wide range of viewpoints', 1191.419, 1195.080, NULL),
  (5912, 93, 'um and', 1193.880, 1196.760, NULL),
  (5913, 93, 'uh there was a lot of censorship going', 1195.080, 1197.660, NULL),
  (5914, 93, 'on', 1196.760, 1199.520, NULL),
  (5915, 93, 'um and we''ve we sort of uncovered a lot', 1197.660, 1201.260, NULL),
  (5916, 93, 'of that with uh the Twitter files', 1199.520, 1203.000, NULL),
  (5917, 93, 'including a lot of of government-driven', 1201.260, 1204.500, NULL),
  (5918, 93, 'censorship which', 1203.000, 1207.100, NULL),
  (5919, 93, 'you know', 1204.500, 1207.100, NULL),
  (5920, 93, 'it''s it''s I mean it seems that that''s', 1207.799, 1211.820, NULL),
  (5921, 93, 'got to be a constitutional violation of', 1210.380, 1213.799, NULL),
  (5922, 93, 'what was going on there but', 1211.820, 1215.960, NULL),
  (5923, 93, 'um so so and I can since I''m like I have', 1213.799, 1217.400, NULL),
  (5924, 93, 'a Twitter user I could detect that like', 1215.960, 1219.380, NULL),
  (5925, 93, 'something''s not right here um and so', 1217.400, 1222.080, NULL),
  (5926, 93, 'that''s that''s really why uh I did that', 1219.380, 1223.400, NULL),
  (5927, 93, 'position it wasn''t because I thought', 1222.080, 1224.660, NULL),
  (5928, 93, 'this was an easy way to make money or', 1223.400, 1227.539, NULL),
  (5929, 93, 'something like that it was a man this is', 1224.660, 1229.760, NULL),
  (5930, 93, 'being mayor Twitter town tweetown or', 1227.539, 1232.280, NULL),
  (5931, 93, 'whatever is is is definitely like', 1229.760, 1233.840, NULL),
  (5932, 93, 'there''s a lot of arrows pointed at you', 1232.280, 1236.360, NULL),
  (5933, 93, 'like flying at you of course but you', 1233.840, 1238.520, NULL),
  (5934, 93, 'know but you seem to handle that okay I', 1236.360, 1240.740, NULL),
  (5935, 93, 'hope you do because yeah', 1238.520, 1243.740, NULL),
  (5936, 93, 'look I mean Geniuses are going to be a', 1240.740, 1246.020, NULL),
  (5937, 93, 'little quirky sometimes but your heart', 1243.740, 1247.460, NULL),
  (5938, 93, 'is always in the right place you were', 1246.020, 1250.400, NULL),
  (5939, 93, 'trying to fix this world and look I', 1247.460, 1252.260, NULL),
  (5940, 93, 'could talk to you forever we can''t today', 1250.400, 1253.880, NULL),
  (5941, 93, 'I''d love to get high with you I know a', 1252.260, 1255.679, NULL),
  (5942, 93, 'great place', 1253.880, 1257.419, NULL),
  (5943, 93, 'I can''t tell you how much I appreciate', 1255.679, 1259.160, NULL),
  (5944, 93, 'you I know you have a lot of choices and', 1257.419, 1261.799, NULL),
  (5945, 93, 'places you can go thank you Elon Musk', 1259.160, 1263.900, NULL),
  (5946, 93, 'ladies and gentlemen all right I''ll see', 1261.799, 1266.200, NULL),
  (5947, 93, 'you soon', 1263.900, 1266.200, NULL),
  (5948, 94, 'I''d love to start with these. 10 years of work 
right there. Someone on your team called these  ', 0.080, 4.760, NULL),
  (5949, 94, 'the real life Tony Stark glasses. Very hard 
to make each one of these... That makes me feel  ', 4.760, 8.440, NULL),
  (5950, 94, 'incredibly optimistic... In a world where AI 
gets smarter and smarter... This is probably  ', 8.440, 11.800, NULL),
  (5951, 94, 'going to be the next major platform after 
phones... I miss hugging my mom. Yeah haptics  ', 11.800, 16.320, NULL),
  (5952, 94, 'is hard... How does generative AI change 
how social media feels?... We haven''t found  ', 16.320, 21.320, NULL),
  (5953, 94, 'the end yet... The average American has fewer 
friends now than they did 15 years ago. Why  ', 21.320, 26.040, NULL),
  (5954, 94, 'do you think that''s happening? I mean 
there''s a lot going on to to unpack there...', 26.040, 32.751, NULL),
  (5955, 94, 'I''m about to interview Meta CEO
Mark Zuckerberg. There are not  ', 33.835, 41.080, NULL),
  (5956, 94, 'that many people with more power over what our 
future might look like. Nearly half the total human  ', 41.080, 47.320, NULL),
  (5957, 94, 'population now uses Meta products and I just 
tested some of their new tech that feels like  ', 47.320, 52.760, NULL),
  (5958, 94, 'science fiction. This is crazy! Mark Zuckerberg and 
the team at Meta are imagining a future that billions  ', 52.760, 60.160, NULL),
  (5959, 94, 'of other people might actually end up living in. So 
my goal for this conversation is to try to figure  ', 60.160, 65.080, NULL),
  (5960, 94, 'out what that future really looks like. To paint a 
picture of the future Mark Zuckerberg is trying to  ', 65.080, 70.680, NULL),
  (5961, 94, 'build so that you can decide for yourself what you 
think of it. Welcome to the first episode of our  ', 70.680, 75.073, NULL),
  (5962, 94, 'new series, Huge Conversations', 75.073, 77.749, NULL),
  (5963, 94, 'Hey, good to meet you! Thanks
for doing this. Yeah looking forward  ', 83.012, 86.079, NULL),
  (5964, 94, 'to it. Awesome. I''d love to tell you what my goal 
is of this conversation. Go for it. We have a called  ', 86.079, 94.320, NULL),
  (5965, 94, 'huge if true which is this very optimistic about 
science and technology and the potential futures  ', 94.320, 99.760, NULL),
  (5966, 94, 'that we can build and in every episode we''re sort 
of exploring what does it look like if you play a  ', 99.760, 105.680, NULL),
  (5967, 94, 'certain technological future out and so my goal 
in this conversation is to try to help people  ', 105.680, 112.840, NULL),
  (5968, 94, 'see the future that you''re imagining when you''re 
building the products that you and the Meta team  ', 112.840, 117.240, NULL),
  (5969, 94, 'are building. What are you imagining this looks 
like in future? How are you imagining people use  ', 117.240, 121.440, NULL),
  (5970, 94, 'this? All of that. Cool. All right awesome. So 
I''d love to start with these. Let''s do it. 10 years  ', 121.440, 129.240, NULL),
  (5971, 94, 'of work right there! I got to demo them a little 
bit earlier today. I heard someone on your team  ', 129.240, 135.880, NULL),
  (5972, 94, 'call these the real life Tony Stark glasses? We''re 
getting there. But I''d love to just hear in your  ', 135.880, 140.680, NULL),
  (5973, 94, 'voice what are these? Well these are the first full 
holographic augmented reality glasses I think that  ', 140.680, 149.320, NULL),
  (5974, 94, 'exist in the world. We''ve made I think it''s a 
a few thousand or something right. Very hard to  ', 149.320, 157.400, NULL),
  (5975, 94, 'make each one of these but this is the culmination 
of 10 years of research and and development that  ', 157.400, 163.600, NULL),
  (5976, 94, 'we''ve done to basically miniaturize all the 
computing that you need to have glasses not a  ', 163.600, 173.440, NULL),
  (5977, 94, 'headset but glasses that can put full holograms 
into the world with a wide field of view. So you  ', 173.440, 180.960, NULL),
  (5978, 94, 'can imagine sort of in the future we''d be having a 
version of this conversation where you know maybe  ', 180.960, 186.200, NULL),
  (5979, 94, 'I or you are not even here it''s like one of us is 
physically here and the other one is here as a as  ', 186.200, 190.680, NULL),
  (5980, 94, 'kind of a full body hologram and it''s not just 
a video call you can actually interact you can  ', 190.680, 194.920, NULL),
  (5981, 94, 'do things I mean in the the demo we had the you 
know ping pong and games and things like that but  ', 194.920, 200.000, NULL),
  (5982, 94, 'I mean you could you can interact you can work 
together you can you know play poker play chests  ', 200.000, 204.240, NULL),
  (5983, 94, 'whatever like the holographic cards holographic 
board game. I just think it''s going to be wild.', 204.240, 209.400, NULL),
  (5984, 94, 'it''s going to remake I think so many different 
fields that we think about today from how we work  ', 209.400, 216.760, NULL),
  (5985, 94, 'and productivity to a lot of things around science 
a lot of things around education entertainment fun  ', 216.760, 223.160, NULL),
  (5986, 94, 'gaming. But this is just the beginning you 
know this is the first version, it''s a  ', 223.160, 228.280, NULL),
  (5987, 94, 'prototype version that we''ve made in order 
to develop the next version which is hopefully  ', 228.280, 234.880, NULL),
  (5988, 94, 'going to be the consumer one that we sell to 
a lot of people. Why build these? Well I think  ', 234.880, 239.840, NULL),
  (5989, 94, 'it''s going to be the next major computing platform. 
So if you look at like the grand arc of computing  ', 239.840, 244.760, NULL),
  (5990, 94, 'over time you''ve you''ve gone from like main 
frames to computers that basically like live  ', 244.760, 251.000, NULL),
  (5991, 94, 'on you know your desk or on a tower to phones 
that you have in your hand that you basically  ', 251.000, 257.400, NULL),
  (5992, 94, 'like you know can take with you everywhere that 
you want but it''s it''s pretty unnatural right it  ', 257.400, 261.880, NULL),
  (5993, 94, 'takes you away from the world around you and. I 
think that the trend in computing is it gets more  ', 261.880, 268.920, NULL),
  (5994, 94, 'ubiquitous it gets more natural and it just 
gets more social right so you want to be able  ', 268.920, 274.760, NULL),
  (5995, 94, 'to interact with people in the world around you 
and I think that this is probably going to be  ', 274.760, 278.720, NULL),
  (5996, 94, 'the next major platform after phones. I''ll give 
these to you. These are the clear ones that show  ', 278.720, 284.080, NULL),
  (5997, 94, 'all the... The whole thing is a special edition and 
this is like a really special edition. There''s  ', 284.080, 288.160, NULL),
  (5998, 94, 'not a single millimeter of of space. You know 
everything in here from the micro projectors that  ', 288.160, 300.000, NULL),
  (5999, 94, 'um basically shoot light into the wave guides 
right it''s a special type of display system. I  ', 300.000, 306.120, NULL),
  (6000, 94, 'mean these aren''t normal displays like you have 
in a phone or a TV or computer like the type of  ', 306.120, 311.360, NULL),
  (6001, 94, 'displays that people have been building for 
decades. It''s a waveguide system. The projector  ', 311.360, 315.960, NULL),
  (6002, 94, 'that''s shooting light basically goes into these 
nano etchings across the wave guide that are what  ', 315.960, 323.240, NULL),
  (6003, 94, 'catches and creates the holograms. In order to 
synchronize that with your where you''re looking  ', 323.240, 330.120, NULL),
  (6004, 94, 'there''s eye tracking and little cameras, 
they illuminate your eyes and then of course  ', 330.120, 335.520, NULL),
  (6005, 94, 'there''s all the basic stuff that you need all the 
computing, the batteries to power the whole thing,  ', 335.520, 341.840, NULL),
  (6006, 94, 'microphones, the speakers because it needs to be 
able to play audio and speak with you and the  ', 341.840, 348.320, NULL),
  (6007, 94, 'cameras and sensors to see things around you in 
the world so that way when it''s placing holograms  ', 348.320, 353.240, NULL),
  (6008, 94, 'in the world it can do that in the right place 
and understand where you are so that probably  ', 353.240, 358.040, NULL),
  (6009, 94, 'is still not covering everything because there''s 
a lot of things that need to go into syncing up  ', 358.040, 363.200, NULL),
  (6010, 94, 'the holographic images between the two displays 
because you don''t just have a single display  ', 363.200, 368.760, NULL),
  (6011, 94, 'like you have in a phone or TV you have two and 
it moves around and you know physical things  ', 368.760, 375.200, NULL),
  (6012, 94, 'are hard and need to be synced up. There''s also 
the radio that has to communicate with your other  ', 375.200, 379.480, NULL),
  (6013, 94, 'computing devices to do heavier computing um and 
the wrist based neural interface that you probably  ', 379.480, 385.680, NULL),
  (6014, 94, 'got to try out. We kind of miniaturized all of this 
and fit it into uh you know normal looking pair of  ', 385.680, 391.200, NULL),
  (6015, 94, 'glasses which is... you know when I told the team 
that we were going to do this 10 years ago you  ', 391.200, 398.360, NULL),
  (6016, 94, 'know people weren''t sure if we were going to be 
able to but I think you not only we''re going  ', 398.360, 402.280, NULL),
  (6017, 94, 'to be able to do this but I think we''re going to 
be able to get it cheaper and higher quality and  ', 402.280, 406.120, NULL),
  (6018, 94, 'even even smaller and more stylish over time. So 
I think this is going to be a pretty wild future.  ', 406.120, 411.000, NULL),
  (6019, 94, 'There are so many versions of trying to get 
a similar idea of digital objects in physical  ', 411.000, 417.240, NULL),
  (6020, 94, 'space. I''m thinking of for example of glasses that 
have heads up displays where it''s headlocked and  ', 417.240, 425.800, NULL),
  (6021, 94, 'it''s moving with my eyes, glasses that are really 
creating digital objects in physical space that  ', 425.800, 430.720, NULL),
  (6022, 94, 'don''t move as I move, I''m thinking of these, I''m 
also thinking of the Snapchat Spectacles that they  ', 430.720, 436.920, NULL),
  (6023, 94, 'just announced, then on the other hand there are 
headsets like the Quest and also like the Apple  ', 436.920, 442.080, NULL),
  (6024, 94, 'Vision Pro that seem to fall into a different 
category. I''m curious how you would organize this  ', 442.080, 446.760, NULL),
  (6025, 94, 'landscape for people and how you think about 
people using these tools in their real lives  ', 446.760, 451.120, NULL),
  (6026, 94, 'in the near future? Yeah so when we were getting 
started on this about 10 years ago I thought that  ', 451.120, 456.240, NULL),
  (6027, 94, 'something like this was going to be the ultimate 
product for everyone. Right you get to you know  ', 456.240, 461.360, NULL),
  (6028, 94, 'normal looking pair of glasses and we''ll continue 
improving that that can have full holographic  ', 461.360, 466.040, NULL),
  (6029, 94, 'images. I think it''s super powerful 
and it is sort of the science fiction future that  ', 466.040, 471.680, NULL),
  (6030, 94, 'I think we all hope to get to. On the journey we 
took a few other approaches as well um to help us  ', 471.680, 479.560, NULL),
  (6031, 94, 'develop towards that including building glasses 
that don''t have displays to try to learn. Just  ', 479.560, 486.240, NULL),
  (6032, 94, 'take a stylish pair of glasses today and put as 
much technology into it as you can but really  ', 486.240, 491.120, NULL),
  (6033, 94, 'focus on the form factor and that''s the Ray Ban 
Meta glasses and it''s doing really well and  ', 491.120, 496.880, NULL),
  (6034, 94, 'initially we thought that that was sort of intro 
product for us to learn how to build this but one  ', 496.880, 503.120, NULL),
  (6035, 94, 'of the things that''s clear now is you''re going to 
be able to make that product a lot more affordable  ', 503.120, 509.920, NULL),
  (6036, 94, 'than this probably permanently. So I actually think 
that there are going to be a bunch of different of  ', 509.920, 515.800, NULL),
  (6037, 94, 'these paths that we''ve taken are going to be 
kind of permanent product lines that people  ', 515.800, 520.440, NULL),
  (6038, 94, 'will choose. I think you''ll see display-less glasses 
like the Ray Ban Metas continue to get better and  ', 520.440, 525.840, NULL),
  (6039, 94, 'better, great for AI, no display but you can talk 
to it, it can talk back. I think there''s going to  ', 525.840, 531.240, NULL),
  (6040, 94, 'be something in between these that''s basically a 
heads up display, so it''s not a 70° field of view,  ', 531.240, 537.240, NULL),
  (6041, 94, 'maybe it''s a 20° or 30 degree field of view, 
so that''s not going to be what you want for  ', 537.240, 543.600, NULL),
  (6042, 94, 'putting kind of a full hologram of a person or 
interacting with the world around you but it''s  ', 543.600, 548.360, NULL),
  (6043, 94, 'going to be great for you know when you''re talking 
to AI, not just having voice but also being able  ', 548.360, 552.880, NULL),
  (6044, 94, 'to see what it''s saying or being able to text 
someone with your wrist-based neural interface and  ', 552.880, 558.760, NULL),
  (6045, 94, 'then have their text show up rather than having it 
read to you, which is, we read faster than we  ', 558.760, 562.920, NULL),
  (6046, 94, 'can listen or getting directions right or just 
being able to search for information get all that.  ', 562.920, 568.120, NULL),
  (6047, 94, 'So there''s a lot of value for heads up display 
that will be somewhat more expensive than the  ', 568.120, 572.120, NULL),
  (6048, 94, 'display-less but somewhat cheaper than this. 
Then I think you''re going to get this. It''s going  ', 572.120, 578.560, NULL),
  (6049, 94, 'to be probably the most premium and and expensive 
of glasses products but hopefully still something  ', 578.560, 586.000, NULL),
  (6050, 94, 'that you know like a computer is generally 
accessible to most people in the world but I think  ', 586.000, 591.200, NULL),
  (6051, 94, 'that there are going to be all of those and I 
I think people will like them. I also think that  ', 591.200, 595.600, NULL),
  (6052, 94, 'the headsets that people are using around mixed 
reality will continue to be a thing too because  ', 595.600, 601.000, NULL),
  (6053, 94, 'no matter how good we get at miniaturizing 
the tech for this you''re just going to be  ', 601.000, 604.600, NULL),
  (6054, 94, 'able to fit more compute into a full headset. 
Fundamentally our mission is not you know build  ', 604.600, 611.360, NULL),
  (6055, 94, 'something that is advanced and only a few people 
can use, we want to take it you the last mile and  ', 611.360, 617.200, NULL),
  (6056, 94, 'do all the innovation to get it to everyone. We 
you know just shipped or announced Quest 3S,  ', 617.200, 622.760, NULL),
  (6057, 94, 'the new mixed reality headset where we basically are 
delivering high quality mixed reality for $299.  ', 622.760, 629.320, NULL),
  (6058, 94, 'I was really proud last year when we delivered 
Quest 3, the first kind of really high quality  ', 630.320, 636.000, NULL),
  (6059, 94, 'high resolution color mixed reality device for 
$500, right it was like, it''s like a fraction of  ', 636.000, 642.920, NULL),
  (6060, 94, 'the cost of of what the competitors are doing 
and I think it''s actually higher quality in a  ', 642.920, 646.880, NULL),
  (6061, 94, 'lot of ways, and now we''ve just doubled down on 
that. So I think that they''re all actually going  ', 646.880, 652.680, NULL),
  (6062, 94, 'to end up being important long-term product lines: 
display-less, heads up display, full holographic  ', 652.680, 659.640, NULL),
  (6063, 94, 'AR, full headsets. I think that they''re all going 
to be important. Yeah. If you play out the future  ', 659.640, 666.560, NULL),
  (6064, 94, 'of not just the hardware that we''ve been talking 
about so Meta Ray Bans, Quest, Orion, but also  ', 666.560, 676.280, NULL),
  (6065, 94, 'the Llama models, if everything goes according to 
you and the teams wildest dreams, I''d love for  ', 676.280, 683.160, NULL),
  (6066, 94, 'you to just begin to describe what that feels like. 
I mean I think that there are two primary values  ', 683.160, 688.280, NULL),
  (6067, 94, 'that we''re trying to bring. On the AR and kind of 
mixed reality side, the main value we''re trying to  ', 688.280, 694.560, NULL),
  (6068, 94, 'bring is this feeling of presence .Right so there''s 
something that I think is just really deep about  ', 694.560, 699.800, NULL),
  (6069, 94, 'being physically present with another person that 
you don''t get from any other technology today and  ', 699.800, 705.960, NULL),
  (6070, 94, 'I think that''s the thing when people have a very 
visceral reaction to experiencing virtual or mixed  ', 705.960, 711.040, NULL),
  (6071, 94, 'reality what they''re really reacting to is that 
they actually for the first time with technology  ', 711.040, 716.800, NULL),
  (6072, 94, 'feel a sense of presence like they''re in a place 
with the person and that''s super powerful. I  ', 716.800, 722.200, NULL),
  (6073, 94, 'focused on designing social apps and experiences 
for 20 years that''s sort of like the Holy Grail  ', 722.200, 728.520, NULL),
  (6074, 94, 'of that is being able to build a technology 
platform that delivers this like deep sense of  ', 728.520, 733.680, NULL),
  (6075, 94, 'of social presence. The other big track is around 
personalized AI and for that and that''s sort of  ', 733.680, 740.480, NULL),
  (6076, 94, 'where Llama and Meta AI and all those things are 
going. There''s all this development that''s going  ', 740.480, 745.200, NULL),
  (6077, 94, 'into making the models smarter and smarter over 
time but I think where this is going to get  ', 745.200, 751.680, NULL),
  (6078, 94, 'really compelling is when it''s personalized for 
you and in order for it to be personalized for you  ', 751.680, 758.040, NULL),
  (6079, 94, 'it has to have context and understand what''s going 
on in your life both kind of at a global level and  ', 758.040, 764.520, NULL),
  (6080, 94, 'like what''s physically happening around you right 
now and in order to do that I think that glasses  ', 764.520, 769.560, NULL),
  (6081, 94, 'are going to be the ideal form factor because 
they''re positioned on your face in a way where  ', 769.560, 773.960, NULL),
  (6082, 94, 'they can let them see what you see and hear what 
you hear which are the two most important senses  ', 773.960, 778.840, NULL),
  (6083, 94, 'that we use for for kind of taking information 
and context about the world. I think that this is  ', 778.840, 783.800, NULL),
  (6084, 94, 'all going to be kind of really deep and profound 
stuff but it''s basically those two things: It''s  ', 783.800, 787.480, NULL),
  (6085, 94, 'this feeling of presence and this capability 
of really personalized intelligence that can  ', 787.480, 792.520, NULL),
  (6086, 94, 'help you. I''d love to talk about each of those 
two things. The first on presence, I owe a lot  ', 792.520, 800.040, NULL),
  (6087, 94, 'to being able to connect with people online. Right 
this job that I have is by definition that, also with  ', 800.040, 805.880, NULL),
  (6088, 94, 'my family. My parents don''t live anywhere close 
to me. I video call them a lot and when I think  ', 805.880, 811.760, NULL),
  (6089, 94, 'about the progress of technology like this in a 
timeline from the telegram to the telephone  ', 811.760, 819.680, NULL),
  (6090, 94, 'to video call to some feeling of presence with 
another person who''s feels like they''re right  ', 819.680, 825.160, NULL),
  (6091, 94, 'there in front of me, that makes me feel incredibly 
optimistic. I would love a future where like I can  ', 825.160, 831.200, NULL),
  (6092, 94, 'lose in Scrabble to my mom and feel like she''s 
really there in front of me. Yeah and it feels like  ', 831.200, 837.200, NULL),
  (6093, 94, 'we''re not that far away from something - I agree! - that
persuades my brain that that''s happening. Yeah  ', 837.200, 841.640, NULL),
  (6094, 94, 'totally. And also I miss hugging my mom right like 
that never goes away. Yeah haptics is hard. Yeah and  ', 841.640, 852.320, NULL),
  (6095, 94, 'so my question is about that 
it''s about this this feeling of like it''s hard  ', 852.320, 856.080, NULL),
  (6096, 94, 'for me to imagine um a future where real physical 
presence is not different and special in some way  ', 856.080, 865.520, NULL),
  (6097, 94, 'where I don''t miss literally hugging my 
mom and I''m curious how you think about the  ', 865.520, 873.760, NULL),
  (6098, 94, 'parts of human connection that are eye contact and 
physical touch and things that our ape brains  ', 873.760, 881.360, NULL),
  (6099, 94, 'value for connection with other people. Yeah well eye
contact I think we''re going to get to a lot before  ', 881.360, 887.520, NULL),
  (6100, 94, 'the the touch part. For haptics I do think we''ll 
make progress on that but it''s it''s obviously  ', 887.520, 893.920, NULL),
  (6101, 94, 'there''s a spectrum there too from kind of hands 
which is where if you you draw out the kind  ', 893.920, 901.120, NULL),
  (6102, 94, 'of like homunculus version of a person in terms 
of like what are what are our kind of sensory you  ', 901.120, 905.920, NULL),
  (6103, 94, 'know what what''s like the majority of what we''re 
sensing it''s like yeah yeah so I think being  ', 905.920, 910.760, NULL),
  (6104, 94, 'able to do that for your hands is probably the 
most important place to start and you have a rough  ', 910.760, 916.520, NULL),
  (6105, 94, 'version of that with controllers today. I think 
that that''ll get even more over time. We have this  ', 916.520, 921.160, NULL),
  (6106, 94, 'demo playing pingpong where you have a controller 
where as the digital ball hits the ping pong  ', 921.160, 927.040, NULL),
  (6107, 94, 'paddle you feel it hit the as if it''s hitting the 
ping pong paddle wherever it is so you actually  ', 927.040, 931.600, NULL),
  (6108, 94, 'have a sense of like where it''s it''s hitting 
the the the paddle so I think that was that  ', 931.600, 936.640, NULL),
  (6109, 94, 'was just a wild demo so I think we''ll get some of 
that the most extreme version of this is wanting  ', 936.640, 941.920, NULL),
  (6110, 94, 'force feedback right so I mean like for doing a lot 
of sports right it''s it''s like okay we can kind of  ', 941.920, 947.600, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (6111, 94, 'do a good approximation of like boxing today or 
you get like good feedback on your hands but it  ', 947.600, 954.120, NULL),
  (6112, 94, 'would be hard to do a virtual reality version of 
Jiu-Jitsu where you''re like grappling with someone and  ', 954.120, 959.600, NULL),
  (6113, 94, 'you need like real kind of force feedback on 
that so that''s probably like the hardest thing  ', 959.600, 964.040, NULL),
  (6114, 94, 'right to go do but I think we''ll get there. 
You know I think like most science fiction it''s  ', 964.040, 971.040, NULL),
  (6115, 94, 'not this binary thing that you just like wake up 
one day and we''re like oh we''ve realized all the  ', 971.040, 974.960, NULL),
  (6116, 94, 'dreams but but I I do think that these platforms 
are going to be the first time that I think that  ', 974.960, 980.920, NULL),
  (6117, 94, 'there''s a realistic sense of presence in all 
the ways that that''s special to people for  ', 980.920, 989.080, NULL),
  (6118, 94, 'most things that people want to do which are not 
the most physical ones and even some of the basic  ', 989.080, 993.640, NULL),
  (6119, 94, 'physical ones I think we''ll get. But then there''s 
a long tale of other stuff I mean smell is also  ', 993.640, 998.000, NULL),
  (6120, 94, 'really important for people yeah right it''s 
I think it''s disproportionately important for  ', 998.000, 1002.520, NULL),
  (6121, 94, 'memories and that''s not really a thing that 
I think in the next few years we''re going to  ', 1002.520, 1009.240, NULL),
  (6122, 94, 'have in any of these devices I mean that''s a very 
difficult and challenging thing on its own. What is  ', 1009.240, 1015.160, NULL),
  (6123, 94, 'the piece of that that you feel most interested in, 
that you keep coming back to in your mind? This has  ', 1015.160, 1021.720, NULL),
  (6124, 94, 'the frustrating property to develop that the 
sense of presence is almost like when you''re  ', 1021.720, 1027.320, NULL),
  (6125, 94, 'designing something that that''s sort of trying 
to artificially deliver it you''re delivering  ', 1027.320, 1032.280, NULL),
  (6126, 94, 'an illusion to a person and more than any one 
thing that provides a sense of presence it''s  ', 1032.280, 1040.280, NULL),
  (6127, 94, 'actually more the case that any one thing done 
wrong breaks the sense of presence. You kind  ', 1040.280, 1044.720, NULL),
  (6128, 94, 'of know that you''re interacting with technology 
but it''s so convincing that um that you just kind  ', 1044.720, 1053.080, NULL),
  (6129, 94, 'of go along with it. You''re like okay yeah no this 
person feels like it feel like they''re there right.  ', 1053.080, 1057.680, NULL),
  (6130, 94, 'When I did that pingpong demo I like at the end 
of it I dropped the pingpong paddle on the virtual  ', 1057.680, 1064.520, NULL),
  (6131, 94, 'table and it shattered so that was not the best 
for for our internal development but  ', 1064.520, 1070.920, NULL),
  (6132, 94, 'like that''s winning in our in our development 
right it''s like when when you feel like something  ', 1070.920, 1075.040, NULL),
  (6133, 94, 'is is kind of so realistic that you you''re just 
convinced that um that it''s there now and there  ', 1075.040, 1081.880, NULL),
  (6134, 94, 'are a lot of things that can break that right so 
I think a a field of view that''s too low right so  ', 1081.880, 1086.800, NULL),
  (6135, 94, 'something feels real but then you turn your head 
and it''s not there um latency read physics that  ', 1086.800, 1092.600, NULL),
  (6136, 94, 'don''t behave like realistic physics. It also is 
interesting in some ways what people can accept  ', 1092.600, 1099.760, NULL),
  (6137, 94, 'as physically real even though it''s not right 
so like we''ve done a ton of work on avatars we  ', 1099.760, 1105.560, NULL),
  (6138, 94, 'we have this whole work stream on Kodak avatars 
to do these photo avatars and it''s I think it''s  ', 1105.560, 1110.560, NULL),
  (6139, 94, 'going to be incredbly compelling and people are 
going to love it but one of the things I found  ', 1110.560, 1116.040, NULL),
  (6140, 94, 'interesting is the ability to mix photorealistic 
and expressive kind of the cartoony avatars with  ', 1116.040, 1122.640, NULL),
  (6141, 94, 'photorealistic worlds and kind of more cartoony 
computer game type worlds so you can have the  ', 1122.640, 1129.520, NULL),
  (6142, 94, 'a Kodak kind of photorealistic avatar of a 
person in what is clearly like a video game  ', 1129.520, 1134.760, NULL),
  (6143, 94, 'or cartoon world and people are generally 
pretty fine with that it''s like okay that  ', 1134.760, 1138.920, NULL),
  (6144, 94, 'that feels pretty good and similarly having 
a photorealistic world but good increasingly  ', 1138.920, 1146.480, NULL),
  (6145, 94, 'good kind of cartoon avatars as long as the 
avatars move in a way that feels authentic to  ', 1146.480, 1153.160, NULL),
  (6146, 94, 'the person you''re interacting with it actually 
feels pretty good you know it''s when you look at  ', 1153.160, 1157.040, NULL),
  (6147, 94, 'a 2d still frame of it some of the stuff can 
look a little bit silly and and we''ve certainly  ', 1157.040, 1162.640, NULL),
  (6148, 94, 'you know had had a our share of memes around 
that but um but when you''re in there you know and  ', 1162.640, 1167.840, NULL),
  (6149, 94, 'you you''ve played around with lot of the stuff it 
feels realistic because it''s basically mimicking  ', 1167.840, 1172.480, NULL),
  (6150, 94, 'the kind of authentic mannerisms of of a person 
that you''re interacting with and even if it''s not  ', 1172.480, 1177.640, NULL),
  (6151, 94, 'a Kodak photo realistic avatar if it''s kind of 
a more cartoony expressive one so I I think that  ', 1177.640, 1182.400, NULL),
  (6152, 94, 'that''s it''s very interesting to see kind of 
which pieces you need to unlock and what where you  ', 1182.400, 1188.120, NULL),
  (6153, 94, 'just need to be like very technically excellent 
and consistent but it''s um this isn''t a space  ', 1188.120, 1192.840, NULL),
  (6154, 94, 'where it''s like you deliver one thing and it''s 
good this is like there''s a wide breth of things  ', 1192.840, 1198.800, NULL),
  (6155, 94, 'that you need to nail and then have it all come 
together and that''s why these are you know 10 year', 1198.800, 1203.480, NULL),
  (6156, 94, 'projects. It seems like an interesting way to learn 
about the human brain and what we actually care  ', 1203.480, 1211.840, NULL),
  (6157, 94, 'about with respect to what feels real. I was 
wondering about, there was this moment in an  ', 1211.840, 1217.320, NULL),
  (6158, 94, 'interview that you did with Lex Friedman, you quoted 
research that says that the average American has  ', 1217.320, 1225.040, NULL),
  (6159, 94, 'fewer friends now than they did 15 years ago  and I was so interested in that because  ', 1225.040, 1230.400, NULL),
  (6160, 94, 'it seems like if we want to get to a world where 
there''s more human connection this is the trend  ', 1230.400, 1236.440, NULL),
  (6161, 94, 'that we''re going to have to grapple with and just 
to give some data on this in the American Time Use ', 1236.440, 1243.760, NULL),
  (6162, 94, 'Survey over the last 20 years the amount of time 
American adults spend socializing in person has  ', 1243.760, 1249.120, NULL),
  (6163, 94, 'dropped by nearly 30%. For ages 15 to 24 according 
to the Surgeon General it''s nearly 70%. and I  ', 1249.120, 1258.840, NULL),
  (6164, 94, 'look at that data and I think to myself well maybe 
if we''re all socializing digitally that doesn''t  ', 1258.840, 1263.480, NULL),
  (6165, 94, 'matter so much maybe there''s a future where that''s 
actually fine but there''s also data that suggest  ', 1263.480, 1268.640, NULL),
  (6166, 94, 'that we''re struggling somewhat. The number of 
Americans who say that they don''t have a single  ', 1268.640, 1275.240, NULL),
  (6167, 94, 'close friend - yeah it''s really sad - that share has
jumped from 3% to 12% in the last 30 years. It feels to', 1275.240, 1284.280, NULL),
  (6168, 94, 'me like with all the tools that we''ve built for human
connection, we''re struggling to connect and I''m curious  ', 1284.280, 1293.440, NULL),
  (6169, 94, 'why do you think that''s happening? I mean there''s a lot 
going on to to unpack there. A lot has changed  ', 1293.440, 1303.400, NULL),
  (6170, 94, 'sort of economically and socially during that 
period and a lot of those trends go back before  ', 1303.400, 1309.120, NULL),
  (6171, 94, 'a lot of the modern technology. So I mean this 
is something that a lot of academics and folks  ', 1309.120, 1314.520, NULL),
  (6172, 94, 'have have studied but it is an interesting lens 
to look at this though because I think whenever  ', 1314.520, 1321.520, NULL),
  (6173, 94, 'you''re talking about building digital types 
of connection one of the first questions that  ', 1321.520, 1327.200, NULL),
  (6174, 94, 'you get is is that going to replace the physical 
connection and my answer to that especially in the  ', 1327.200, 1336.280, NULL),
  (6175, 94, 'case of something like this is that no because 
people already don''t have as much connection  ', 1336.280, 1345.200, NULL),
  (6176, 94, 'as they would like to have. It''s not like this is 
replacing some sort of better physical connection  ', 1345.200, 1350.480, NULL),
  (6177, 94, 'that they would have otherwise had. It''s that the 
average person would like to have 10 friends and  ', 1350.480, 1357.240, NULL),
  (6178, 94, 'they have two right or three and there''s just 
more demand to socialize than what people are  ', 1357.240, 1365.880, NULL),
  (6179, 94, 'able to do given the current construct and giving 
people the ability to be present with people who  ', 1365.880, 1372.200, NULL),
  (6180, 94, 'are in other places physically just seems like 
it will unlock more. It''s not going to make it  ', 1372.200, 1376.440, NULL),
  (6181, 94, 'so, if I have glasses, it''s not going to make 
it that I spend less time with my wife, it''s going  ', 1376.440, 1380.560, NULL),
  (6182, 94, 'to make it so that I spend more time with you 
know my sister who lives across the country. And  ', 1380.560, 1386.360, NULL),
  (6183, 94, 'that''s, I think that''s good. I 
think people need that. As for the rest, I  ', 1386.360, 1392.960, NULL),
  (6184, 94, 'I think we could probably spend a multi-hour 
podcast just going into all of the different  ', 1392.960, 1399.080, NULL),
  (6185, 94, 'kind of socioeconomic political dynamics that are 
going on but none of the trends that I''ve seen  ', 1399.080, 1408.520, NULL),
  (6186, 94, 'does it seem like the primary thing that''s going 
on is that because people are interacting online  ', 1408.520, 1413.520, NULL),
  (6187, 94, 'they''re now not interacting with their with people
physically. Now certainly I think you  ', 1413.520, 1422.920, NULL),
  (6188, 94, 'you I do interact with people online who I also 
like to interact with physically but and I think  ', 1422.920, 1428.480, NULL),
  (6189, 94, 'that that''s kind of like a combination um like 
more combined richer relationship that you have  ', 1428.480, 1434.160, NULL),
  (6190, 94, 'overall but I think that there''s a lot going 
on with the loss of of kind of social capital and  ', 1434.160, 1441.080, NULL),
  (6191, 94, 'connections that really predates a lot of the 
modern technology. The goal of what, I''m what I''m  ', 1441.080, 1448.520, NULL),
  (6192, 94, 'trying most to learn about is how we can structure 
the technologies that we use in the future to get  ', 1448.520, 1455.920, NULL),
  (6193, 94, 'toward this future I think you''re imagining of 
more human connection in more ways. I''m curious, you  ', 1455.920, 1462.000, NULL),
  (6194, 94, 'brought up the other big pillar of AI and in some 
of your conversations, I''m thinking of a conversation  ', 1462.000, 1469.240, NULL),
  (6195, 94, 'with Tim Ferris in particular, you talked about 
a lot of different use cases of AI and they seem  ', 1469.240, 1475.480, NULL),
  (6196, 94, 'to me to fall on somewhat of a spectrum. Like 
for example you mentioned automatic real-time  ', 1475.480, 1482.760, NULL),
  (6197, 94, 'translation, like basically the Star Trek 
Universal translator. We''re pretty  ', 1482.760, 1487.520, NULL),
  (6198, 94, 'much there! Yeah and that''s one example on one 
end of the spectrum where some people might argue  ', 1487.520, 1494.560, NULL),
  (6199, 94, 'that there is a chance that someone is less likely 
for example to learn a language because we can all  ', 1494.560, 1499.360, NULL),
  (6200, 94, 'speak to each other in real time in different 
languages. I think nobody would really argue  ', 1499.360, 1504.040, NULL),
  (6201, 94, 'that therefore we shouldn''t have that kind of 
universal translator. People still learn Latin and  ', 1504.040, 1508.560, NULL),
  (6202, 94, 'Greek. Right exactly and so I think that end 
of the spectrum is something like um technologies  ', 1508.560, 1516.640, NULL),
  (6203, 94, 'that really measurably unlock our humanity because 
they remove a struggle between people and then on  ', 1516.640, 1523.840, NULL),
  (6204, 94, 'the other end of the spectrum there are a lot of 
educational things for example where the struggle  ', 1523.840, 1527.640, NULL),
  (6205, 94, 'is kind of the point right? Like it''s like building 
a muscle. I can think of so many times  ', 1527.640, 1532.760, NULL),
  (6206, 94, 'in my life where like the reason why I was doing 
something was not the output it was the fact that  ', 1532.760, 1536.960, NULL),
  (6207, 94, 'I was trying so hard to do it. There''s one example 
in the Tim Ferris interview where you talked  ', 1536.960, 1541.880, NULL),
  (6208, 94, 'about your kids struggling to articulate 
themselves emotionally and adults very much had  ', 1541.880, 1548.040, NULL),
  (6209, 94, 'the same problem and you talked about AI as a way 
to help them articulate those emotions. Yeah and  ', 1548.040, 1554.480, NULL),
  (6210, 94, 'I thought about all of the many times in my life 
where I have struggled to articulate my emotions  ', 1554.480, 1560.080, NULL),
  (6211, 94, 'and how I really could have used some help in 
those moments and I also found myself thinking  ', 1560.080, 1564.240, NULL),
  (6212, 94, 'about the times when that was really building 
a muscle where like the act of struggling to  ', 1564.240, 1569.320, NULL),
  (6213, 94, 'communicate with someone and understand what they 
wanted from me was was important to my development.  ', 1569.320, 1574.080, NULL),
  (6214, 94, 'And so my question is if you think about that 
as a spectrum between things that are really  ', 1574.080, 1579.560, NULL),
  (6215, 94, 'important to our humanity where and the struggle 
being removed is helpful versus things where the  ', 1579.560, 1585.440, NULL),
  (6216, 94, 'struggle is the point and it unlocks 
something about our humanity and is important  ', 1585.440, 1591.440, NULL),
  (6217, 94, 'to preserve like building a muscle, how do you 
draw the line between those things and how do  ', 1591.440, 1597.480, NULL),
  (6218, 94, 'we ensure that the muscles that we''re building for 
this future are stronger and not weaker? Yeah it''s  ', 1597.480, 1602.600, NULL),
  (6219, 94, 'interesting I mean I think we''re always going to 
find new things to struggle with and I mean it''s  ', 1602.600, 1607.480, NULL),
  (6220, 94, 'you can always get better at communicating with 
other people and kind of expressing yourself and  ', 1607.480, 1612.040, NULL),
  (6221, 94, 'understanding other people so having a tool that 
can help you do that better isn''t going to mean  ', 1612.040, 1616.960, NULL),
  (6222, 94, 'that like oh now we perfectly understand every you 
know it''s I mean I think the maybe one  ', 1616.960, 1625.600, NULL),
  (6223, 94, 'of the most functional aspects of this you''re 
already seeing a lot of these AI models really  ', 1625.600, 1629.040, NULL),
  (6224, 94, 'help people with coding right like a generation 
ago um before I was getting started a lot of  ', 1629.040, 1634.920, NULL),
  (6225, 94, 'coding was like really low-level system software 
and you know then by the time that I got into  ', 1634.920, 1640.760, NULL),
  (6226, 94, 'it there was a little bit of that but um you you 
can make websites pretty easily make apps pretty  ', 1640.760, 1646.840, NULL),
  (6227, 94, 'easily and I think in 20 years or a lot sooner 
than that you''re going to basically be in a  ', 1646.840, 1654.120, NULL),
  (6228, 94, 'world where kids will be able to just describe the 
things that they want and build incredibly complex  ', 1654.120, 1659.480, NULL),
  (6229, 94, 'pieces of software so it''s um in that world 
are kids going to be not struggling I I don''t  ', 1659.480, 1667.080, NULL),
  (6230, 94, 'think so I think that they''re going to be just 
expressing their creativity and and it''ll it''ll  ', 1667.080, 1671.880, NULL),
  (6231, 94, 'be this kind of constant iterative feedback loop 
around like okay like yeah I you know took a few  ', 1671.880, 1679.240, NULL),
  (6232, 94, 'minutes to describe this thing and like yeah this 
whole like amazing virtual world was created that  ', 1679.240, 1685.120, NULL),
  (6233, 94, 'I can have see on my glasses or whatever but like 
these things are not exactly what I want them to  ', 1685.120, 1690.440, NULL),
  (6234, 94, 'be so now I need to like go back and edit them it 
just I don''t know I think that there''s always  ', 1690.440, 1695.040, NULL),
  (6235, 94, 'more. Another way to get this - it''s one of the things 
that I think makes makes people so good. It just  ', 1695.040, 1701.120, NULL),
  (6236, 94, 'there''s there''s always more to do. We''ll always 
find the struggle? Yeah. Another way to get at this  ', 1701.120, 1705.120, NULL),
  (6237, 94, 'is if you if you play this out to make the 
tools even better in like 10 years let''s say  ', 1705.120, 1710.960, NULL),
  (6238, 94, 'your kids are in high school are there ways that 
you would want them using AI because you think it  ', 1710.960, 1715.760, NULL),
  (6239, 94, 'would accelerate them intellectually and ways that 
you would advocate for them not to use it or  ', 1715.760, 1722.680, NULL),
  (6240, 94, 'things that you would have concerns about? I mean 
I think that there''s some things that you need  ', 1722.680, 1726.560, NULL),
  (6241, 94, 'to be able to do yourself. I think that''s a lot of 
the basic fear that people have around this is ', 1726.560, 1732.800, NULL),
  (6242, 94, 'that while we''re building these amazing tools we 
get away from this self-confidence and ability of  ', 1732.800, 1741.840, NULL),
  (6243, 94, 'being able to do like this basic stuff yourself so 
it''s like all right you have a calculator but it''s  ', 1741.840, 1748.120, NULL),
  (6244, 94, 'still good to be able to do kind of basic math in 
your head because there are a lot of things that  ', 1748.120, 1753.000, NULL),
  (6245, 94, 'come up throughout the day that you just want to 
have a general numeracy around right that often  ', 1753.000, 1759.960, NULL),
  (6246, 94, 'they''re not expressed in numerical terms but just 
in terms of understanding trends or understanding  ', 1759.960, 1765.520, NULL),
  (6247, 94, 'arguments that people are making, you you kind of 
need to understand the shape of how numbers come  ', 1765.520, 1770.320, NULL),
  (6248, 94, 'together and so I think one of the big debates 
is like should we still teach our kids to program  ', 1770.320, 1775.440, NULL),
  (6249, 94, 'computers even though you''re going to have
these tools in the future that are just so much  ', 1775.440, 1782.680, NULL),
  (6250, 94, 'more powerful than anything that we have now to 
produce incredibly complicated pieces of software.  ', 1782.680, 1789.000, NULL),
  (6251, 94, 'I think the answer to that is probably yes 
because I think teaching someone how to code  ', 1789.000, 1795.440, NULL),
  (6252, 94, 'is teaching them a way to think rigorously and 
that even if they''re not doing most of the code  ', 1795.440, 1801.520, NULL),
  (6253, 94, 'production I think it''s important that you kind of 
have the ability to think in that way and I think  ', 1801.520, 1806.080, NULL),
  (6254, 94, 'it''s going to just make you generally a better 
thinker and better person so yeah maybe that''s  ', 1806.080, 1814.000, NULL),
  (6255, 94, 'like this generation''s version of calculators 
it''s like so you you want to you want to use the  ', 1814.000, 1818.200, NULL),
  (6256, 94, 'calculator but you''ll also want to be able to 
generally do without it. Other ones like language  ', 1818.200, 1825.120, NULL),
  (6257, 94, 'I don''t know I mean different people can come 
out I think this is one of the interesting  ', 1825.120, 1828.160, NULL),
  (6258, 94, 'questions about parenting these days is like is 
is just kind of like what what''s important to  ', 1828.160, 1834.920, NULL),
  (6259, 94, 'teach your your kids and in an era where so much 
is going to change over the the time that they''re  ', 1834.920, 1840.120, NULL),
  (6260, 94, 'even in school. Language I think you can make 
similar arguments. I think there''s a lot of it''s  ', 1840.120, 1845.200, NULL),
  (6261, 94, 'like it''s probably going to be less functionally 
relevant in the future to learn multiple languages  ', 1845.200, 1849.600, NULL),
  (6262, 94, 'but it sort of helps you think in different ways,
you know I found from the languages that I''ve  ', 1849.600, 1854.840, NULL),
  (6263, 94, 'studied that a lot of it you learn about 
the structure of your own language, you can  ', 1854.840, 1860.640, NULL),
  (6264, 94, 'you know you also learn about the culture right 
because so much of how things are expressed in  ', 1860.640, 1864.480, NULL),
  (6265, 94, 'different places is tied to the nuance and the 
history of kind of what how so I think  ', 1864.480, 1869.960, NULL),
  (6266, 94, 'like you that''s all valuable and interesting 
stuff to get into but then I don''t know at the  ', 1869.960, 1875.520, NULL),
  (6267, 94, 'same time we only have so many hours in the day 
so people need to prioritize what they''re going  ', 1875.520, 1878.640, NULL),
  (6268, 94, 'to learn and it may be that okay in a world with 
perfect translation which by the way we basically  ', 1878.640, 1883.760, NULL),
  (6269, 94, 'just announced on the Ray Ban Metas that now 
you''re going to be able to just like you go to  ', 1883.760, 1887.920, NULL),
  (6270, 94, 'countries yeah we''re starting out with just a few 
languages but we''ll roll it out to more and you  ', 1888.520, 1893.600, NULL),
  (6271, 94, 'know you''ll be you could be traveling anywhere and 
you have your glasses and they just translate in  ', 1893.600, 1896.800, NULL),
  (6272, 94, 'real time in your ear. So it''s wild, yeah so 
I think people are going to need to choose what  ', 1896.800, 1902.840, NULL),
  (6273, 94, 'what what they want to focus on going forward. 
How do the developments that we''ve been talking  ', 1902.840, 1908.080, NULL),
  (6274, 94, 'about in AI intersect with social media and the 
platforms that most people use today? There''s a ', 1908.080, 1914.760, NULL),
  (6275, 94, 'future where there''s images and generated text 
and maybe AI influencers. How does generative  ', 1914.760, 1923.680, NULL),
  (6276, 94, 'AI change how social media feels in the future? 
Yeah I mean I think that that''s a really  ', 1923.680, 1930.280, NULL),
  (6277, 94, 'deep one. You know there''s already been one 
big shift which is that social media started  ', 1930.280, 1936.680, NULL),
  (6278, 94, 'out as people primarily interacting with their 
friends and now it is you know at least half of  ', 1936.680, 1943.200, NULL),
  (6279, 94, 'the content is basically people interacting 
with creators or content that''s not created  ', 1943.200, 1948.040, NULL),
  (6280, 94, 'by people who they kind of personally know so 
we sort sort of already have that paradigm and  ', 1948.040, 1956.320, NULL),
  (6281, 94, 'I think AI is probably going to accelerate that. It 
will give all these people additional tools right  ', 1956.320, 1962.080, NULL),
  (6282, 94, 'so your friends will create kind of funnier memes 
and more interesting content um that''ll come from  ', 1962.080, 1969.880, NULL),
  (6283, 94, 'a lot of different ways. I think some of it will 
be okay your friends have glasses and they capture  ', 1969.880, 1974.520, NULL),
  (6284, 94, 'a bunch of stuff and before they might have not 
been able bble to edit it to make it interesting  ', 1974.520, 1979.040, NULL),
  (6285, 94, 'or maybe it was just too much work or they didn''t 
even realize that they captured something amazing  ', 1979.040, 1982.520, NULL),
  (6286, 94, 'but now the AI is like hey I like made this thing 
for you out of your content um it''s like okay  ', 1982.520, 1987.880, NULL),
  (6287, 94, 'that''s awesome like people will enjoy that. Creators 
obviously kind of much more specialized skills  ', 1987.880, 1995.520, NULL),
  (6288, 94, 'are going to be able to use even more advanced AI 
tools to make more compelling content but then I  ', 1995.520, 2000.760, NULL),
  (6289, 94, 'think that there will be a bunch of kind of green 
field type stuff where maybe in the future there  ', 2000.760, 2007.200, NULL),
  (6290, 94, 'will be content that is purely generated by AI 
by the system personalized for you maybe it''s  ', 2007.200, 2015.480, NULL),
  (6291, 94, 'summarizing things that are out there that that 
are going to be interesting maybe it''s um just  ', 2015.480, 2021.600, NULL),
  (6292, 94, 'producing something funny that makes you laugh 
this is going to be like a very kind of deep zone  ', 2021.600, 2026.960, NULL),
  (6293, 94, 'that there''s a lot to to experiment with. 
I think there are going to be AI creators as well, ', 2026.960, 2032.160, NULL),
  (6294, 94, 'as creators building AI versions of themselves, 
I mean that''s a thing that we just showed too  ', 2032.160, 2038.040, NULL),
  (6295, 94, 'at Connect is basically I mean if you''re
a Creator one of the big challenges is  ', 2038.040, 2042.720, NULL),
  (6296, 94, 'like all right there are only so many hours 
in the day and your community probably has a  ', 2042.720, 2048.040, NULL),
  (6297, 94, 'nearly unlimited demand to interact with you and 
you want to interact with them because you''re  ', 2048.040, 2051.920, NULL),
  (6298, 94, 'trying to grow your community. I mean that''s both 
socially and from a business perspective that''s  ', 2051.920, 2056.240, NULL),
  (6299, 94, 'sort of you know growing the community is an 
important part of what every creator does so  ', 2056.240, 2060.920, NULL),
  (6300, 94, 'okay if we can make it so that each creator 
can basically make an like an AI artifact  ', 2060.920, 2067.720, NULL),
  (6301, 94, 'that their community can interact with people be 
clear it''s not the actual creator themselves but  ', 2068.240, 2072.880, NULL),
  (6302, 94, 'it''s almost like a piece of digital art that 
you''re producing like an interactive sculpture  ', 2072.880, 2077.480, NULL),
  (6303, 94, 'or something that it''s like it''s like you train 
it to here''s the context that I wanted to have  ', 2077.480, 2081.440, NULL),
  (6304, 94, 'here''s the topics I wanted to communicate 
on here''s stuff that I wanted to stay away  ', 2081.440, 2085.160, NULL),
  (6305, 94, 'from you''re giving your community something to 
interact with when you can''t be there to to kind  ', 2085.160, 2091.720, NULL),
  (6306, 94, 'of answer all the questions and I think that''s 
going to be super compelling so there''s like  ', 2091.720, 2097.840, NULL),
  (6307, 94, 'these interesting things but I think it''s I AI 
it''s kind of like the internet in a way where  ', 2097.840, 2104.720, NULL),
  (6308, 94, 'it''s probably going to change almost every field 
and almost every feature of every application that  ', 2104.720, 2111.960, NULL),
  (6309, 94, 'we use um it seems sort of hyperbolic to say that 
but I do think that''s true and it''s just hard to  ', 2111.960, 2118.840, NULL),
  (6310, 94, 'sort of enumerate all the different things up 
front but I think that over the next 5 to 10  ', 2118.840, 2123.240, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (6311, 94, 'years we''re just going to explore the impacts 
in each of these areas and it''s going to be  ', 2123.240, 2127.080, NULL),
  (6312, 94, 'like an amazing amount of innovation and really 
exciting. I feel two things simultaneously when  ', 2127.080, 2132.840, NULL),
  (6313, 94, 'you say that. I feel both like I really want 
to be optimistic about the future of these  ', 2132.840, 2138.520, NULL),
  (6314, 94, 'platforms and I obviously have gained so much from 
an enormous pace of change right like everything  ', 2138.520, 2145.560, NULL),
  (6315, 94, 'that we''re doing now and what I actually feel is 
worried. I feel some specific concerns around the  ', 2145.560, 2154.160, NULL),
  (6316, 94, 'way that you know I might communicate with an 
audience and the way that they might respond to  ', 2154.160, 2157.800, NULL),
  (6317, 94, 'that or the way that human communication might 
change but also more generalized just sort of  ', 2157.800, 2162.600, NULL),
  (6318, 94, 'fear of the pace of change and and worry and I 
don''t think I''m alone in that feeling. Yeah and  ', 2162.600, 2167.120, NULL),
  (6319, 94, 'you''re supposed to be the optimist! I know! And I''m 
curious like how you talk to people who feel that  ', 2167.120, 2174.120, NULL),
  (6320, 94, 'way. What concerns do you feel are most legitimate 
and what do you feel most misunderstood? I think  ', 2174.120, 2181.880, NULL),
  (6321, 94, 'the pace of change is always a concerning 
thing right it''s there is a lot of uncertainty  ', 2181.880, 2190.000, NULL),
  (6322, 94, 'about how how things will go in the future and 
we''re all going to get really amazing new tools  ', 2190.000, 2195.560, NULL),
  (6323, 94, 'to do both our hobbies and our jobs and
they''ll make it so we can do better work and  ', 2195.560, 2204.200, NULL),
  (6324, 94, 'have better lives but at least on the professional 
side it''s going to be our responsibility to keep  ', 2204.200, 2208.800, NULL),
  (6325, 94, 'up with that or else it''s going to be difficult 
for us to compete with other people who are  ', 2208.800, 2213.200, NULL),
  (6326, 94, 'doing a good job of kind of keeping up with 
the new trends. So I get it. I mean I think  ', 2213.200, 2217.520, NULL),
  (6327, 94, 'you know especially in the you know line of of 
work of being a creator and it''s a very sort of  ', 2218.280, 2224.240, NULL),
  (6328, 94, 'competitive space, I don''t think that like creators 
necessarily think about it as competitive but it  ', 2224.240, 2227.800, NULL),
  (6329, 94, 'is right it''s like it''s you know and um and so I 
get it. I think that this is going to make it so  ', 2227.800, 2236.000, NULL),
  (6330, 94, 'that like the quality of work that people produce 
and how interesting it is and how much they can  ', 2236.000, 2240.640, NULL),
  (6331, 94, 'communicate and like really efficiently is is 
just going to kind of go through the roof but  ', 2240.640, 2247.520, NULL),
  (6332, 94, 'but when you''re staring down a set of changes like 
you know that there''s some big change coming and  ', 2248.040, 2255.880, NULL),
  (6333, 94, 'you don''t know what it is that''s always a time of 
anxiety so I get it. If I take my creator hat  ', 2255.880, 2262.000, NULL),
  (6334, 94, 'off and I''m just a person who is youngish starting 
out my career-ish, starting out building a family,  ', 2262.000, 2271.320, NULL),
  (6335, 94, 'how would you advise someone like me to prepare 
well for the future that we''re headed toward  ', 2271.320, 2280.720, NULL),
  (6336, 94, 'to be able to learn new skills now or just think 
about this future in an educated way? Yeah I mean  ', 2280.720, 2289.440, NULL),
  (6337, 94, 'I just think maintaining curiosity about things is 
is important. I do think we can overstate to what  ', 2289.440, 2296.920, NULL),
  (6338, 94, 'extent the next 10 years is going to be sort of 
different from the last 10 or 15. I mean a ton of  ', 2296.920, 2301.400, NULL),
  (6339, 94, 'stuff changed over the last 10 or 15 years too. 
It''s not like this is the only time in history  ', 2301.400, 2305.640, NULL),
  (6340, 94, 'where there''s some technology it''s going to make 
it so there''s new opportunities and things change  ', 2305.640, 2310.520, NULL),
  (6341, 94, 'the internet coming into maturity and everyone 
having smartphones has already rewired things  ', 2310.520, 2316.640, NULL),
  (6342, 94, 'dramatically and I mean maybe the next period will 
be a somewhat bigger change or maybe it won''t I  ', 2316.640, 2324.760, NULL),
  (6343, 94, 'think it''ll feel different to different people but
 I don''t think this is like going from zero to  ', 2324.760, 2331.200, NULL),
  (6344, 94, 'one it''s not like okay everything''s just kind of 
been normal and now like now it''s about to change  ', 2331.200, 2335.320, NULL),
  (6345, 94, 'it''s like the technology of evolves over time and 
and like the opportunities that we have evolve and  ', 2335.320, 2341.080, NULL),
  (6346, 94, 'improve and I think that''s like the people who 
do well I think are are people who are generally  ', 2341.080, 2346.640, NULL),
  (6347, 94, 'curious about it and and dig in and and try 
to use it to live better lives rather than the  ', 2346.640, 2354.800, NULL),
  (6348, 94, 'people who who basically you know try to fight it 
in in some way. One thing that I really want to ask  ', 2354.800, 2363.400, NULL),
  (6349, 94, 'you about is open source. Yeah. I think imagine that 
we''re talking to an audience that has maybe heard  ', 2363.400, 2370.760, NULL),
  (6350, 94, 'that term but doesn''t have any real idea of how 
that might impact them in the development of AI. ', 2370.760, 2377.440, NULL),
  (6351, 94, 'How would you explain the reasonable debate 
that people in your field are having about this  ', 2377.440, 2381.640, NULL),
  (6352, 94, 'right now? Well I think there are two pieces. I mean 
so what does open source mean? It means that people  ', 2381.640, 2387.400, NULL),
  (6353, 94, 'can build a lot of different things right so at 
a high level I look at the vision that a bunch of  ', 2387.400, 2392.960, NULL),
  (6354, 94, 'companies have right so Open AI, Google, they''re 
building an AI right like one AI that I think  ', 2392.960, 2399.520, NULL),
  (6355, 94, 'in general they''re like okay this is going to be 
it''s like you''re going to use they think you''re  ', 2399.520, 2403.360, NULL),
  (6356, 94, 'going to use Gemini or ChatGPT for like all the 
different things that you want to interact with  ', 2403.360, 2407.520, NULL),
  (6357, 94, 'and at a high level that''s just not how I think 
the world is going to go. I think we''re going to  ', 2407.520, 2411.360, NULL),
  (6358, 94, 'have a lot of different AI systems just like we''re 
going to have we have a lot of different apps.  ', 2411.360, 2417.160, NULL),
  (6359, 94, 'I think in the future every business just like 
they have a website and a phone number and an  ', 2417.160, 2422.760, NULL),
  (6360, 94, 'email address and a social media account is also 
going to have an AI that can interact with with  ', 2422.760, 2428.040, NULL),
  (6361, 94, 'their customers to help them sell things to help 
them do support. I think a lot of creators will  ', 2428.040, 2434.480, NULL),
  (6362, 94, 'have their own AIs right I think like a lot 
of people will interact with with a bunch of  ', 2434.480, 2439.000, NULL),
  (6363, 94, 'different things. There''s a question of okay do you 
want a future that''s fundamentally kind of very  ', 2439.000, 2445.520, NULL),
  (6364, 94, 'concentrated and where you''re interacting with 
kind of one system for everything or do you want  ', 2445.520, 2450.240, NULL),
  (6365, 94, 'one where a lot of different people are building
a lot of different AIs and systems just kind  ', 2450.240, 2456.280, NULL),
  (6366, 94, 'of like you probably didn''t want there to be you 
know just one app or just one website. It''s like a  ', 2456.280, 2460.800, NULL),
  (6367, 94, 'richer world when there''s a diversity of different 
things so that''s one piece is is just giving  ', 2460.800, 2465.640, NULL),
  (6368, 94, 'people the ability to build it themselves and 
what open source does it makes it that everyone  ', 2465.640, 2469.240, NULL),
  (6369, 94, 'can take and modify the model and build stuff on 
top of it which is different from the kind  ', 2469.240, 2475.360, NULL),
  (6370, 94, 'of closed and centralized approach. The safety 
debate is a specific part of this which is in a  ', 2475.360, 2486.920, NULL),
  (6371, 94, 'world where AI gets smarter and smarter, what''s the 
way that we have the highest chance of of having a  ', 2486.920, 2495.120, NULL),
  (6372, 94, 'a a kind of positive future and and not having 
a lot of the safety concerns? And I think some  ', 2495.120, 2500.280, NULL),
  (6373, 94, 'people think that if we keep the model closed 
and don''t give it to a lot of developers that  ', 2500.280, 2508.520, NULL),
  (6374, 94, 'should make it safer because then you don''t get 
bad developers doing bad things with the model.', 2508.520, 2517.240, NULL),
  (6375, 94, 'Historically I think what we''ve seen with open 
source is actually the opposite which is that  ', 2519.440, 2525.240, NULL),
  (6376, 94, 'this is not the first open source project right 
I mean this is obviously this has been a thing in  ', 2525.240, 2529.240, NULL),
  (6377, 94, 'the industry for decades and I think what we''ve 
traditionally seen is that open source software  ', 2529.240, 2534.440, NULL),
  (6378, 94, 'is safer and more secure largely because you put 
it out there more people can scrutinize it because  ', 2534.440, 2540.960, NULL),
  (6379, 94, 'they can see all parts of the system and then 
there are inevitably issues with any software  ', 2540.960, 2547.520, NULL),
  (6380, 94, 'there are bugs there are security issues and 
initially with open source people thought hey if  ', 2547.520, 2552.440, NULL),
  (6381, 94, 'you''re putting the software out there and there 
are holes in it isn''t everyone just going to go  ', 2552.440, 2556.360, NULL),
  (6382, 94, 'exploit those holes and especially the bad 
guys but it turned out that it sort of in this  ', 2556.360, 2561.280, NULL),
  (6383, 94, 'counterintuitive way that by making by adding more 
scrutiny to the systems the holes became apparent  ', 2561.280, 2569.360, NULL),
  (6384, 94, 'quicker and then were fixed and then people 
roll out a new version just like we roll out  ', 2569.360, 2572.680, NULL),
  (6385, 94, 'a new version of our models right Llama 3, Llama 
3.1, Llama 3.2 everyone upgrades, so I think the  ', 2572.680, 2579.680, NULL),
  (6386, 94, 'same thing is going to happen here I think it''s 
sort of this counterintuitive thing where even  ', 2579.680, 2584.960, NULL),
  (6387, 94, 'though I I think there''s some concern around all 
right are bad guys going to do bad things with  ', 2584.960, 2592.200, NULL),
  (6388, 94, 'these models. I actually think you just get a kind 
of smarter and safer model for everyone the more  ', 2592.200, 2598.280, NULL),
  (6389, 94, 'it''s rolled out and the more kind of scrutiny 
is on it and then part of that is we get  ', 2598.280, 2603.320, NULL),
  (6390, 94, 'feedback and we make the model safer so that is 
we roll it out to to more people it''s safer  ', 2603.320, 2607.800, NULL),
  (6391, 94, 'for more people to use. So I think that the history 
of open source in the software industry generally  ', 2607.800, 2613.520, NULL),
  (6392, 94, 'would suggest that open source is going to lead 
to a more prosperous and safer future. Our show  ', 2613.520, 2619.280, NULL),
  (6393, 94, 'is called Huge If True and what I mean by that is 
kind of testing the most optimistic non-obvious  ', 2619.280, 2626.040, NULL),
  (6394, 94, 'thing and so my question to you is what is the 
biggest open genuine question on your mind right', 2626.040, 2631.680, NULL),
  (6395, 94, 'now? In which field? You''re in so many! I am 
particularly curious about the combination of  ', 2631.680, 2647.160, NULL),
  (6396, 94, 'AI and hardware but I realize that we''ve covered 
a lot so I''m curious the direction you''d take this  ', 2647.160, 2652.400, NULL),
  (6397, 94, 'on a question that occupies you right now. Gosh 
I mean I think maybe one that''s a little more  ', 2652.400, 2657.080, NULL),
  (6398, 94, 'AI specific is there a current set of methods 
that seem to be scaling very well right so with  ', 2657.080, 2665.480, NULL),
  (6399, 94, 'past AI architecture you could kind of feed an 
AI system a certain amount of data and and use  ', 2665.480, 2672.360, NULL),
  (6400, 94, 'a certain amount of compute but eventually it 
hit a plateau and one of the interesting things  ', 2672.360, 2677.200, NULL),
  (6401, 94, 'about these new transformer based architectures 
over the last you know 5 to 10 years is that we  ', 2677.200, 2684.240, NULL),
  (6402, 94, 'haven''t found the end yet. So that leads to this 
dynamic where Llama 3 you know we could train on  ', 2684.240, 2692.840, NULL),
  (6403, 94, 'you know 10 to 20,000 gpus, Llama 4 we could train 
on you know more more than 100,000 gpus, Llama 5  ', 2692.840, 2699.480, NULL),
  (6404, 94, 'we can plan to scale even further and there''s just 
an interesting question of how far that goes. It''s  ', 2699.480, 2706.280, NULL),
  (6405, 94, 'totally possible that at some point we just like 
hit a limit and just like previous systems there''s  ', 2706.280, 2711.880, NULL),
  (6406, 94, 'an asymptote and it doesn''t keep on growing but 
it''s also possible that that limit is not going  ', 2711.880, 2717.880, NULL),
  (6407, 94, 'to happen anytime soon and that we''re going to be 
able to keep on just building more clusters and  ', 2717.880, 2724.520, NULL),
  (6408, 94, 'generating more you know synthetic data train the 
systems and that they''re just going to keep on  ', 2724.520, 2730.400, NULL),
  (6409, 94, 'getting more and more useful for people for quite 
a while to come and it''s a really big and high  ', 2730.400, 2736.640, NULL),
  (6410, 94, 'stakes question I think for for the company is 
because we''re basically making these bets on how  ', 2736.640, 2742.760, NULL),
  (6411, 94, 'much infrastructure to build out for the future 
and this is like hundreds of billions of dollars  ', 2742.760, 2748.200, NULL),
  (6412, 94, 'of infrastructure so like I''m clearly betting 
that this is going to keep scaling for a while  ', 2748.200, 2754.280, NULL),
  (6413, 94, 'but it''s one of the big questions I think in the 
field because it is possible that it doesn''t. You  ', 2754.280, 2759.480, NULL),
  (6414, 94, 'know that obviously would lead to a very different 
world where it''s I mean I''m sure people still  ', 2759.480, 2764.600, NULL),
  (6415, 94, 'figure it out eventually just need to make some 
new fundamental improvements to the architecture  ', 2764.600, 2769.040, NULL),
  (6416, 94, 'in some way but that might be a somewhat longer 
trajectory for okay maybe you know the the kind  ', 2769.040, 2775.680, NULL),
  (6417, 94, 'of fundamental AI advances slow down for a bit 
and we just take some time to build new products  ', 2775.680, 2781.600, NULL),
  (6418, 94, 'around this or it could be the case and that''s 
what I''m betting on that the fundamental AI will  ', 2781.600, 2786.520, NULL),
  (6419, 94, 'just continue advancing for quite a while and that 
we''re going to get both a new set of products that  ', 2786.520, 2791.840, NULL),
  (6420, 94, 'are just really compelling in all these ways 
and that the technology landscape and what''s  ', 2791.840, 2795.840, NULL),
  (6421, 94, 'possible will just continue being dynamic over 
like a 20-year period and that''s probably what  ', 2795.840, 2802.000, NULL),
  (6422, 94, 'I''d guess is going to happen but it I think it''s 
one of the bigger questions in the industry and  ', 2802.000, 2806.680, NULL),
  (6423, 94, 'kind of for technology across the world today. 
Is there anything else that you want to say? I  ', 2806.680, 2812.520, NULL),
  (6424, 94, 'don''t know! Awesome. We''re good. Amazing yeah thank 
you so much for doing this. Yeah no thank you...', 2812.520, 2829.560, NULL),
  (6425, 95, 'Andrew  Ross  Sorkin  and his ', 27.333, 36.118, NULL),
  (6426, 95, 'guests  the founder and CEO ', 29.033, 42.152, NULL),
  (6427, 95, 'of  Nvidia. Jensen  Wang. ', 30.752, 44.385, NULL),
  (6428, 95, 'Wang  Wang. Welcome back. ', 36.218, 46.352, NULL),
  (6429, 95, 'Everybody.  Jensen  is  here. ', 42.252, 47.485, NULL),
  (6430, 95, 'Of  course  the CEO of  ', 44.485, 49.052, NULL),
  (6431, 95, 'Nvidia as I mentioned at the  ', 46.452, 51.452, NULL),
  (6432, 95, 'top of  the day.  This  ', 47.585, 52.018, NULL),
  (6433, 95, 'is the  clear winner  ', 49.152, 52.852, NULL),
  (6434, 95, 'of every winter.  In  the ', 51.552, 55.252, NULL),
  (6435, 95, 'world in  of  In  artificial  ', 52.118, 55.885, NULL),
  (6436, 95, 'intelligence  thus far  ', 52.952, 57.885, NULL),
  (6437, 95, 'his company Powers  ', 55.352, 58.885, NULL),
  (6438, 95, 'everything  from  open  a.i.  ', 55.985, 60.152, NULL),
  (6439, 95, 'Google''s  programs  matter  ', 57.985, 60.962, NULL),
  (6440, 95, 'what  Earl Frenemies  in  ', 58.985, 62.996, NULL),
  (6441, 95, 'some  ways. We''ll talk  about ', 60.252, 65.662, NULL),
  (6442, 95, 'it. He  founded the company ', 61.062, 67.796, NULL),
  (6443, 95, 'back  in  1993  over  ', 63.096, 69.896, NULL),
  (6444, 95, 'breakfast at  Denny''s with  ', 65.762, 71.662, NULL),
  (6445, 95, 'two friends since then  as  ', 67.896, 72.996, NULL),
  (6446, 95, 'CEO.  He''s  LED Nvidia  to  ', 69.996, 74.396, NULL),
  (6447, 95, 'become  the world''s most  ', 71.762, 75.596, NULL),
  (6448, 95, 'valuable  Semiconductor ', 73.096, 78.962, NULL),
  (6449, 95, 'Company and Via stock ', 74.496, 79.596, NULL),
  (6450, 95, 'has been  on  a tear  up  two ', 75.696, 84.429, NULL),
  (6451, 95, 'hundred and forty percent this', 79.062, 85.029, NULL),
  (6452, 95, 'year  reaching  dollar. 240 ', 79.696, 85.629, NULL),
  (6453, 95, 'Market  cap and we are  so  ', 84.529, 86.262, NULL),
  (6454, 95, 'grateful  to have you here  ', 85.129, 86.829, NULL),
  (6455, 95, 'today market  as  we  all try ', 85.729, 87.429, NULL),
  (6456, 95, 'to  make  sense of  what  ', 86.362, 88.829, NULL),
  (6457, 95, 'is happening  in  the world ', 86.929, 90.629, NULL),
  (6458, 95, 'of  AI  and I think it''s  ', 87.529, 92.500, NULL),
  (6459, 95, 'so many ways  you saw this  ', 88.929, 93.900, NULL),
  (6460, 95, 'first and so  I''m hoping  to  ', 90.729, 97.233, NULL),
  (6461, 95, 'start with  this  and I said  ', 92.600, 97.933, NULL),
  (6462, 95, 'you power what  open a.i. And ', 94.000, 99.733, NULL),
  (6463, 95, 'chat GPT  has been  we''ve all ', 97.333, 100.933, NULL),
  (6464, 95, 'been reading  about open  ', 98.033, 103.866, NULL),
  (6465, 95, 'a.i.  And all of  the ', 99.833, 105.333, NULL),
  (6466, 95, 'travails  inside  that  that  ', 101.033, 105.933, NULL),
  (6467, 95, 'company and nonprofit and ', 103.966, 106.700, NULL),
  (6468, 95, 'we maybe talk about some of ', 105.433, 110.800, NULL),
  (6469, 95, 'the governance  issues  there ', 106.033, 111.800, NULL),
  (6470, 95, 'as  well. But you delivered I ', 106.800, 114.400, NULL),
  (6471, 95, 'think this  is  this  is  ', 110.900, 115.233, NULL),
  (6472, 95, 'back. I don''t know  what  ', 111.900, 116.700, NULL),
  (6473, 95, 'year  we''re talking about ', 114.500, 119.700, NULL),
  (6474, 95, 'now,  but you delivered ', 115.333, 120.933, NULL),
  (6475, 95, 'the first box the first chips ', 116.800, 121.814, NULL),
  (6476, 95, 'to  Elon  Musk  who was ', 119.800, 123.814, NULL),
  (6477, 95, 'one of  the founders  of  ', 121.033, 124.748, NULL),
  (6478, 95, 'open  AI  only a  couple of ', 121.914, 130.648, NULL),
  (6479, 95, 'years ago.  What  did you ', 123.914, 131.481, NULL),
  (6480, 95, 'what  happened? Well, I ', 124.848, 132.581, NULL),
  (6481, 95, 'delivered to him  the first ', 130.748, 134.281, NULL),
  (6482, 95, 'AI  supercomputer the world ', 131.581, 135.714, NULL),
  (6483, 95, 'ever  made. It  took  us  ', 132.681, 136.781, NULL),
  (6484, 95, 'five years  to  make  it  ', 134.381, 137.381, NULL),
  (6485, 95, 'is called a dgx.  It''s  ', 135.814, 139.781, NULL),
  (6486, 95, 'everywhere  in the world  ', 136.881, 143.814, NULL),
  (6487, 95, 'today people  think that  we  ', 137.481, 147.481, NULL),
  (6488, 95, 'build gpus  but this  GPU is  ', 139.881, 150.114, NULL),
  (6489, 95, 'is  70  pounds  35 thousand ', 143.914, 150.714, NULL),
  (6490, 95, 'Parts out of  the 35  ', 147.581, 153.488, NULL),
  (6491, 95, 'thousand eight  of those  ', 150.214, 155.454, NULL),
  (6492, 95, 'chips come  from  tsmc. It  ', 150.814, 157.488, NULL),
  (6493, 95, 'is  so  heavy in new  robots  ', 153.588, 159.088, NULL),
  (6494, 95, 'to  build it. It''s  like  ', 155.554, 159.688, NULL),
  (6495, 95, 'an electric car.  It  ', 157.588, 161.721, NULL),
  (6496, 95, 'consumes  10,000  amps  it  ', 159.188, 162.321, NULL),
  (6497, 95, 'It  we  sell  it  for ', 159.788, 165.621, NULL),
  (6498, 95, 'two hundred fifty thousand  ', 161.821, 166.254, NULL),
  (6499, 95, 'dollars it  it''s  a ', 162.421, 167.254, NULL),
  (6500, 95, 'super computer. So  it  takes ', 165.721, 168.754, NULL),
  (6501, 95, 'another ', 166.354, 170.488, NULL),
  (6502, 95, 'super computer to test. This  ', 167.354, 172.454, NULL),
  (6503, 95, 'is  a computer  first of its  ', 168.854, 174.588, NULL),
  (6504, 95, 'kind  and we  started working ', 170.588, 176.254, NULL),
  (6505, 95, 'on  it  in  2012  took me ', 172.554, 177.188, NULL),
  (6506, 95, 'five  years to  build it  ', 174.688, 179.988, NULL),
  (6507, 95, 'at first  I built it  for our ', 176.354, 181.554, NULL),
  (6508, 95, 'own engineers and I spoke ', 177.288, 183.397, NULL),
  (6509, 95, 'about it  at  one of  our ', 180.088, 184.197, NULL),
  (6510, 95, 'conferences and Elon  saw it. ', 181.654, 187.830, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (6511, 95, 'He  goes. I want  one of  ', 183.497, 188.930, NULL),
  (6512, 95, 'those and and he  said  he  ', 184.297, 191.830, NULL),
  (6513, 95, 'And and told  me  about ', 187.930, 194.264, NULL),
  (6514, 95, 'open a  And i I''d also  ', 189.030, 195.264, NULL),
  (6515, 95, 'knew Peter  Beal  who was a ', 191.930, 197.364, NULL),
  (6516, 95, 'Berkeley  Professor.  He  was ', 194.364, 199.330, NULL),
  (6517, 95, 'one of the  early people  at  ', 195.364, 201.264, NULL),
  (6518, 95, 'opening II  and ', 197.464, 203.064, NULL),
  (6519, 95, 'Ilya sutskever. He  I met him ', 199.430, 204.964, NULL),
  (6520, 95, 'during  the Alex  net days  ', 201.364, 205.597, NULL),
  (6521, 95, 'five  years earlier.  ', 203.164, 206.297, NULL),
  (6522, 95, 'He''s involved in  all the ', 205.064, 207.730, NULL),
  (6523, 95, 'drama that  we''ve been  ', 205.697, 209.064, NULL),
  (6524, 95, 'reading about.  And so  ', 206.397, 210.330, NULL),
  (6525, 95, 'anyways,  I delivered the ', 207.830, 211.097, NULL),
  (6526, 95, 'world''s first AI  ', 209.164, 213.174, NULL),
  (6527, 95, 'supercomputer to  open  a ', 210.430, 213.974, NULL),
  (6528, 95, 'eye on that day and and ', 211.197, 215.608, NULL),
  (6529, 95, 'people  took  pictures  of  ', 213.274, 217.241, NULL),
  (6530, 95, 'it  and so  on  the ', 214.074, 218.008, NULL),
  (6531, 95, 'internet somewhere. Yeah. Um  ', 215.708, 219.008, NULL),
  (6532, 95, 'when you  did that  and you ', 217.341, 220.108, NULL),
  (6533, 95, 'said  you didn''t  do  it  ', 218.108, 221.708, NULL),
  (6534, 95, 'originally  for him.  What  ', 219.108, 223.508, NULL),
  (6535, 95, 'was it  though  that  you saw ', 220.208, 224.474, NULL),
  (6536, 95, 'at that point five  years ', 221.808, 226.241, NULL),
  (6537, 95, 'before  you even  delivered ', 223.608, 228.608, NULL),
  (6538, 95, 'it  in  2012  when  this  ', 224.574, 230.008, NULL),
  (6539, 95, 'Hall  first started first ', 226.341, 232.108, NULL),
  (6540, 95, 'happened  Alex  net did ', 228.708, 234.641, NULL),
  (6541, 95, 'something remarkable. Here''s  ', 230.108, 235.841, NULL),
  (6542, 95, 'a here''s  a neural  network.  ', 232.674, 237.908, NULL),
  (6543, 95, 'It''s  a it''s a it''s a ', 234.741, 240.208, NULL),
  (6544, 95, 'software  program where the ', 235.941, 242.141, NULL),
  (6545, 95, 'way you programmed it was ', 238.008, 244.456, NULL),
  (6546, 95, 'to show it  the results that  ', 240.308, 245.122, NULL),
  (6547, 95, 'you wanted. Which is  the ', 242.241, 246.656, NULL),
  (6548, 95, 'backwards which of  most  ', 244.556, 247.456, NULL),
  (6549, 95, 'Which programs  up  to  then, ', 245.222, 249.856, NULL),
  (6550, 95, 'you know  programs  up  to  ', 246.756, 250.622, NULL),
  (6551, 95, 'them  were  where Engineers ', 247.556, 252.622, NULL),
  (6552, 95, 'would sit down  and you would ', 249.956, 253.756, NULL),
  (6553, 95, 'write software  and then  you ', 250.722, 255.456, NULL),
  (6554, 95, 'would test  it  to see  if  ', 252.722, 257.556, NULL),
  (6555, 95, 'it  produced  the outputs you ', 253.856, 260.956, NULL),
  (6556, 95, 'wanted  but here  you showed  ', 255.556, 262.856, NULL),
  (6557, 95, 'it  examples  and you you ', 257.656, 263.856, NULL),
  (6558, 95, 'you taught it what  ', 261.056, 265.856, NULL),
  (6559, 95, 'outputs you wanted  what  ', 262.956, 266.956, NULL),
  (6560, 95, 'helped us to  expect  and so  ', 263.956, 268.656, NULL),
  (6561, 95, 'when  we  first saw the ', 265.956, 270.722, NULL),
  (6562, 95, 'results of  it  Alex  net the ', 267.056, 274.265, NULL),
  (6563, 95, 'results were  so  spectacular ', 268.756, 275.965, NULL),
  (6564, 95, 'that  Alex  kraszewski  and ', 270.822, 278.532, NULL),
  (6565, 95, 'and Ilya sutskever  and of  ', 274.365, 279.632, NULL),
  (6566, 95, 'course  Geoffrey Hinton they  ', 276.065, 280.365, NULL),
  (6567, 95, 'achieved  results that  ', 278.632, 281.365, NULL),
  (6568, 95, 'Results of  computer  results ', 279.732, 283.765, NULL),
  (6569, 95, 'vision  Results recognition ', 280.465, 285.698, NULL),
  (6570, 95, 'that  that  no  no  computer  ', 281.465, 286.865, NULL),
  (6571, 95, 'vision  expert  where it was  ', 283.865, 288.698, NULL),
  (6572, 95, 'able to achieve before  that. ', 285.798, 290.965, NULL),
  (6573, 95, 'And so  so  the first the ', 286.965, 292.198, NULL),
  (6574, 95, 'first observation was is how  ', 288.798, 293.898, NULL),
  (6575, 95, 'remarkable  was but then  ', 291.065, 294.798, NULL),
  (6576, 95, 'then  we  were  we  were  ', 292.298, 296.498, NULL),
  (6577, 95, 'fortunate have  taken a step  ', 293.998, 297.798, NULL),
  (6578, 95, 'back  and ask ourselves.  ', 294.898, 301.232, NULL),
  (6579, 95, 'What  is the  implication of  ', 296.598, 303.032, NULL),
  (6580, 95, 'this  to the  future  of  ', 297.898, 304.318, NULL),
  (6581, 95, 'computers?  And and we  drew  ', 301.332, 305.018, NULL),
  (6582, 95, 'the right conclusions that  ', 303.132, 306.752, NULL),
  (6583, 95, 'that  this  was going to  ', 304.418, 308.485, NULL),
  (6584, 95, 'change  the way Computing was ', 305.118, 309.052, NULL),
  (6585, 95, 'going to be done. ', 306.852, 309.785, NULL),
  (6586, 95, 'This was going to change. ', 308.585, 310.985, NULL),
  (6587, 95, 'Change the  way software  was ', 309.152, 311.885, NULL),
  (6588, 95, 'going to  be  written.  And ', 309.885, 313.118, NULL),
  (6589, 95, 'this  was going to  change  ', 311.085, 313.918, NULL),
  (6590, 95, 'the type of applications. We  ', 311.985, 314.952, NULL),
  (6591, 95, 'could write write.  Did you ', 313.218, 315.518, NULL),
  (6592, 95, 'get to  work? Was there any ', 314.018, 316.618, NULL),
  (6593, 95, 'part of you did you write ', 315.052, 317.418, NULL),
  (6594, 95, 'that was  scared  when  all ', 315.618, 318.418, NULL),
  (6595, 95, 'this  happened  you just  ', 316.718, 319.852, NULL),
  (6596, 95, 'mentioned to name''s George  ', 317.518, 321.552, NULL),
  (6597, 95, 'Hamilton  Hinton  as well.  ', 318.518, 322.218, NULL),
  (6598, 95, 'You also  mentioned Elia  and ', 319.952, 323.318, NULL),
  (6599, 95, 'and those are names by  ', 321.652, 323.852, NULL),
  (6600, 95, 'the way,  if  you''ve  been  ', 322.318, 324.352, NULL),
  (6601, 95, 'following If  the way.  ', 323.418, 325.018, NULL),
  (6602, 95, 'what''s happening, if  ', 323.952, 326.552, NULL),
  (6603, 95, 'the way,  If  the way.  they  ', 324.452, 329.418, NULL),
  (6604, 95, 'have  been  very  outspoken ', 325.118, 330.318, NULL),
  (6605, 95, 'about the dangers of  AI  ', 326.652, 330.918, NULL),
  (6606, 95, 'very, well. I want to get ', 329.518, 332.052, NULL),
  (6607, 95, 'into  actually  what you  ', 330.418, 332.618, NULL),
  (6608, 95, 'think happened  at open ', 331.018, 334.052, NULL),
  (6609, 95, 'a.i. In the past  couple  ', 332.152, 335.869, NULL),
  (6610, 95, 'weeks,  but it  may very  ', 332.718, 337.069, NULL),
  (6611, 95, 'well  be  that  there ', 334.152, 342.602, NULL),
  (6612, 95, 'may have been a new Step  ', 335.969, 343.236, NULL),
  (6613, 95, 'change  in  terms of  terms ', 337.169, 343.802, NULL),
  (6614, 95, 'in  change  Step  been a new  ', 342.702, 344.136, NULL),
  (6615, 95, 'there may have  that  be  ', 343.336, 347.902, NULL),
  (6616, 95, 'well  very  ', 343.902, 348.402, NULL),
  (6617, 95, 'of what this technology.  ', 344.236, 348.869, NULL),
  (6618, 95, 'LG was  but was there ', 348.002, 349.502, NULL),
  (6619, 95, 'ever a part of you  ', 348.502, 350.102, NULL),
  (6620, 95, 'when you''re seeing  this all  ', 348.969, 350.702, NULL),
  (6621, 95, 'happen  say oh my goodness. ', 349.602, 351.202, NULL),
  (6622, 95, 'I don''t know. We''re on the  ', 350.202, 351.836, NULL),
  (6623, 95, 'cusp of a revolution  ', 350.802, 352.302, NULL),
  (6624, 95, 'in a great way. But this  is  ', 351.302, 352.902, NULL),
  (6625, 95, 'dangerous.  What  I ', 351.936, 353.536, NULL),
  (6626, 95, 'would say,  I would say 12  ', 352.402, 354.136, NULL),
  (6627, 95, 'years.  Nobody  expected  the ', 353.002, 355.469, NULL),
  (6628, 95, 'results where we get  and I ', 353.636, 358.002, NULL),
  (6629, 95, 'think anybody who would have  ', 354.236, 359.602, NULL),
  (6630, 95, 'would have  said  so  back  ', 355.569, 361.002, NULL),
  (6631, 95, 'then  would have  ', 358.102, 362.769, NULL),
  (6632, 95, 'over-exaggerated, you know, ', 359.702, 364.002, NULL),
  (6633, 95, 'our understanding of  the ', 361.102, 366.406, NULL),
  (6634, 95, 'of the  the rate  of  ', 362.869, 366.973, NULL),
  (6635, 95, 'progress. There''s no  ', 364.102, 370.940, NULL),
  (6636, 95, 'question that the rate of ', 366.506, 371.506, NULL),
  (6637, 95, 'progress  is  high. And what  ', 367.073, 373.006, NULL),
  (6638, 95, 'we  what we and realized  ', 371.040, 374.973, NULL),
  (6639, 95, 'today,  is  that  that  of  ', 371.606, 376.206, NULL),
  (6640, 95, 'course  And of  and course  ', 373.106, 378.840, NULL),
  (6641, 95, 'course, what  we  can do  ', 375.073, 381.006, NULL),
  (6642, 95, 'today with  with  these ', 376.306, 382.440, NULL),
  (6643, 95, 'models  and intelligence  are ', 378.940, 383.106, NULL),
  (6644, 95, 'related,  but not the same, ', 381.106, 384.440, NULL),
  (6645, 95, 'you know, we''re very  good  ', 382.540, 386.040, NULL),
  (6646, 95, 'at  perception  today and ', 383.206, 388.940, NULL),
  (6647, 95, 'we''re very  good  at  those ', 384.540, 389.840, NULL),
  (6648, 95, 'One-Shot knee-jerk  reaction. ', 386.140, 392.173, NULL),
  (6649, 95, 'I recognize that  that''s  ', 389.206, 393.973, NULL),
  (6650, 95, 'a dog.  I can I can finish  ', 389.940, 394.673, NULL),
  (6651, 95, 'that  sentence  but there''s a ', 392.273, 395.660, NULL),
  (6652, 95, 'whole bunch of  things  ', 394.073, 396.226, NULL),
  (6653, 95, 'that we can''t do  yet.  do  ', 394.773, 396.793, NULL),
  (6654, 95, 'can''t we  things that of  ', 395.760, 397.360, NULL),
  (6655, 95, 'bunch whole a there''s but ', 396.326, 398.593, NULL),
  (6656, 95, 'sentence  that  We  can''t ', 396.893, 400.760, NULL),
  (6657, 95, 'reason  yet,  you know  ', 397.460, 401.326, NULL),
  (6658, 95, 'this multi-step.  ', 398.693, 401.960, NULL),
  (6659, 95, 'Meaning that  humans  are ', 400.860, 402.526, NULL),
  (6660, 95, 'very  good  at  a I can''t do  ', 401.426, 403.926, NULL),
  (6661, 95, 'and how far away  do you  ', 402.060, 405.660, NULL),
  (6662, 95, 'think we  are from that?  ', 402.626, 407.660, NULL),
  (6663, 95, 'Well, we''ll see.  We''ll see ', 404.026, 408.826, NULL),
  (6664, 95, 'I think that  just about  ', 405.760, 409.860, NULL),
  (6665, 95, 'everybody''s working on  it  ', 407.760, 410.460, NULL),
  (6666, 95, 'and and all the ', 408.926, 411.293, NULL),
  (6667, 95, 'researchers are working on  ', 409.960, 411.893, NULL),
  (6668, 95, 'it. Everybody''s working on  ', 410.560, 413.193, NULL),
  (6669, 95, 'it. We''re trying  to figure ', 411.393, 414.460, NULL),
  (6670, 95, 'out you know, how do  you ', 411.993, 416.493, NULL),
  (6671, 95, 'take  a goal  break it  down  ', 413.293, 418.426, NULL),
  (6672, 95, 'into  a whole bunch of  steps ', 414.560, 419.293, NULL),
  (6673, 95, 'and created the sijin tree  ', 416.593, 420.093, NULL),
  (6674, 95, 'and then  walk down the ', 418.526, 421.093, NULL),
  (6675, 95, 'decision  tree  to  figure  ', 419.393, 423.293, NULL),
  (6676, 95, 'out you know, which one of  ', 420.193, 425.693, NULL),
  (6677, 95, 'the paths leads to  the most  ', 421.193, 426.993, NULL),
  (6678, 95, 'optimal answer. This  is  ', 423.393, 428.593, NULL),
  (6679, 95, 'this  is  a how we  reason  ', 425.793, 432.493, NULL),
  (6680, 95, 'through things  how we  ', 427.093, 432.993, NULL),
  (6681, 95, 'iterate through Problem ', 428.693, 433.626, NULL),
  (6682, 95, 'today,  as  you know, ', 432.593, 433.993, NULL),
  (6683, 95, 'what you''re making  bets now  ', 433.093, 434.626, NULL),
  (6684, 95, 'in terms  of  ', 433.726, 435.193, NULL),
  (6685, 95, 'of technology that  you have  ', 434.093, 436.693, NULL),
  (6686, 95, 'to  build an  investment. ', 434.726, 437.426, NULL),
  (6687, 95, 'You have  to  make  yeah  on  ', 435.293, 438.293, NULL),
  (6688, 95, 'where we''re going to  be  ', 436.793, 439.593, NULL),
  (6689, 95, 'five years  from now  ', 437.526, 441.026, NULL),
  (6690, 95, 'ten years ten years ago,  ', 438.393, 443.093, NULL),
  (6691, 95, 'right?  So, you know  people  ', 439.693, 443.726, NULL),
  (6692, 95, 'talk  about a GI. Yeah, right ', 441.126, 444.193, NULL),
  (6693, 95, 'right artificial  AGI. Yeah,  ', 443.193, 444.926, NULL),
  (6694, 95, 'artificial  general ', 443.826, 446.093, NULL),
  (6695, 95, 'intelligence. Yeah. Do you  ', 444.293, 449.993, NULL),
  (6696, 95, 'think in 10 years from now? ', 445.026, 450.893, NULL),
  (6697, 95, 'We are  there.  Bye depending ', 446.193, 452.926, NULL),
  (6698, 95, 'on  how you define  it. I ', 450.093, 454.860, NULL),
  (6699, 95, 'think the answer is yes.  And ', 450.993, 458.846, NULL),
  (6700, 95, 'so  the question is what is a ', 453.026, 460.546, NULL),
  (6701, 95, 'gi8 if  we  defined a GI  as  ', 454.960, 461.746, NULL),
  (6702, 95, 'a piece of  software  a ', 458.946, 463.546, NULL),
  (6703, 95, 'computer  that  can take  a ', 460.646, 466.180, NULL),
  (6704, 95, 'whole bunch of  tests and ', 461.846, 470.280, NULL),
  (6705, 95, 'these tests reflect tests,  ', 463.646, 472.813, NULL),
  (6706, 95, 'basic intelligence  tests and ', 466.280, 473.913, NULL),
  (6707, 95, 'and by  achieving by  by by ', 470.380, 474.546, NULL),
  (6708, 95, 'completing  those tests those ', 472.913, 475.080, NULL),
  (6709, 95, 'completing  by  achieving by  ', 474.013, 475.780, NULL),
  (6710, 95, 'and intelligence  basic ', 474.646, 477.813, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (6711, 95, 'deliver results that  are ', 475.180, 478.980, NULL),
  (6712, 95, 'fairly  fairly  ', 475.880, 480.146, NULL),
  (6713, 95, 'competitive to a  Normal  ', 477.913, 481.246, NULL),
  (6714, 95, 'human,  I would I would say ', 479.080, 482.946, NULL),
  (6715, 95, 'that  within  the next  five  ', 480.246, 485.113, NULL),
  (6716, 95, 'years.  You''re going to see a ', 481.346, 486.761, NULL),
  (6717, 95, 'obviously a eyes  that  can ', 483.046, 488.261, NULL),
  (6718, 95, 'that  can achieve those tests ', 485.213, 489.361, NULL),
  (6719, 95, 'and designed  the chips that  ', 486.861, 490.561, NULL),
  (6720, 95, 'you''re making right now.  ', 488.361, 491.994, NULL),
  (6721, 95, 'Yeah. Well, you need  to  ', 489.461, 493.694, NULL),
  (6722, 95, 'have  the same  staff that  ', 490.661, 494.494, NULL),
  (6723, 95, 'designs them. In  fact, ', 492.094, 497.061, NULL),
  (6724, 95, 'none of our chips are ', 493.794, 498.561, NULL),
  (6725, 95, 'possible  today without a i ', 494.594, 499.261, NULL),
  (6726, 95, 'Literally,  the H1 hundreds ', 497.161, 500.928, NULL),
  (6727, 95, 'were shipping today was ', 498.661, 501.994, NULL),
  (6728, 95, 'designed  with  the ', 499.361, 503.161, NULL),
  (6729, 95, 'assistance of a whole lot of  ', 501.028, 504.561, NULL),
  (6730, 95, 'a eyes. Otherwise,  we  ', 502.094, 505.961, NULL),
  (6731, 95, 'wouldn''t be able  to  cram so ', 503.261, 507.461, NULL),
  (6732, 95, 'many  transistors on  a chip  ', 504.661, 508.494, NULL),
  (6733, 95, 'or  optimize  the algorithms  ', 506.061, 510.061, NULL),
  (6734, 95, 'to  the level that we have  ', 507.561, 511.561, NULL),
  (6735, 95, 'and you know  software  can''t ', 508.594, 513.094, NULL),
  (6736, 95, 'be  written without a i chips ', 510.161, 513.994, NULL),
  (6737, 95, 'can be  designed  without a i ', 511.661, 514.794, NULL),
  (6738, 95, 'nothing can ', 513.194, 515.694, NULL),
  (6739, 95, 'yeah, nothing''s possible. We  ', 514.094, 517.029, NULL),
  (6740, 95, 'started by  talking about ', 514.894, 517.296, NULL),
  (6741, 95, 'open  a.i. And  everybody''s ', 515.794, 517.862, NULL),
  (6742, 95, 'Ai and  ', 517.129, 518.629, NULL),
  (6743, 95, 'yeah. Nothing''s possible. ', 517.396, 523.262, NULL),
  (6744, 95, 'focused on  that. ', 517.962, 523.896, NULL),
  (6745, 95, 'What did you make?  What  ', 518.729, 524.429, NULL),
  (6746, 95, 'happened? The ousting of  Sam ', 523.362, 525.829, NULL),
  (6747, 95, 'Altman  alternative Sam ', 523.996, 526.929, NULL),
  (6748, 95, 'Altman  the all of  it. Yeah. ', 524.529, 529.129, NULL),
  (6749, 95, 'Well, first of  all,  I''m ', 525.929, 531.162, NULL),
  (6750, 95, 'happy that  they''re settled ', 527.029, 533.562, NULL),
  (6751, 95, 'and I hope  they''re settled ', 529.229, 534.362, NULL),
  (6752, 95, 'is a  really  great team  and ', 531.262, 536.129, NULL),
  (6753, 95, 'and they''re doing important ', 533.662, 537.362, NULL),
  (6754, 95, 'work  and they''ve achieved  ', 534.462, 538.762, NULL),
  (6755, 95, 'great results and I''m just  ', 536.229, 542.629, NULL),
  (6756, 95, 'really  happy that  they''re ', 537.462, 543.829, NULL),
  (6757, 95, 'settled,  you know, also  ', 538.862, 545.262, NULL),
  (6758, 95, 'it also bring in  brings  to  ', 542.729, 546.396, NULL),
  (6759, 95, 'mind  the importance of ', 543.929, 548.541, NULL),
  (6760, 95, 'corporate governance. There''s ', 545.362, 550.374, NULL),
  (6761, 95, 'a invidious here 30 years ', 547.708, 551.141, NULL),
  (6762, 95, 'after our founding  we''ve ', 548.641, 552.941, NULL),
  (6763, 95, 'gone  through a lot of  ', 550.474, 554.974, NULL),
  (6764, 95, 'adversity if we didn''t  ', 551.241, 555.608, NULL),
  (6765, 95, 'set up  our company properly, ', 553.041, 556.674, NULL),
  (6766, 95, 'who knows what  ', 555.074, 557.974, NULL),
  (6767, 95, 'would have been who knows ', 555.708, 559.974, NULL),
  (6768, 95, 'what  would have  done  and ', 556.774, 560.441, NULL),
  (6769, 95, 'so  I think when  ', 558.074, 561.874, NULL),
  (6770, 95, 'you''re when you''re  ', 560.074, 562.574, NULL),
  (6771, 95, 'architecting  an  industry, ', 560.541, 563.641, NULL),
  (6772, 95, 'you know, you want  to  apply ', 561.974, 564.208, NULL),
  (6773, 95, 'some of that  some  that  of  ', 562.674, 564.841, NULL),
  (6774, 95, 'that some of  some  apply ', 563.741, 568.541, NULL),
  (6775, 95, 'you want to industry  wisdom  ', 564.308, 569.174, NULL),
  (6776, 95, 'to  architecting  a company ', 564.941, 569.674, NULL),
  (6777, 95, 'Yeah, and and so  I''m really  ', 568.641, 570.174, NULL),
  (6778, 95, 'proud of  him videos  ', 569.274, 571.574, NULL),
  (6779, 95, 'corporate governance  ', 569.774, 572.641, NULL),
  (6780, 95, 'by the way  in  and if  not ', 570.274, 574.308, NULL),
  (6781, 95, 'for the architecture  that  ', 571.674, 575.308, NULL),
  (6782, 95, 'we  establish and I was 29  ', 572.741, 576.274, NULL),
  (6783, 95, 'years old and you''d be  kind  ', 574.408, 576.908, NULL),
  (6784, 95, 'of  your  a ', 575.408, 577.508, NULL),
  (6785, 95, 'for-profit company  though. ', 576.374, 578.725, NULL),
  (6786, 95, 'What''s  so  interesting ', 577.008, 581.625, NULL),
  (6787, 95, 'I think about this  sort  of  ', 577.608, 585.558, NULL),
  (6788, 95, 'dynamic is  that  that  is  a ', 578.825, 586.692, NULL),
  (6789, 95, 'firm  that  is  effectively ', 581.725, 587.158, NULL),
  (6790, 95, 'operated  from  a governance  ', 585.658, 588.158, NULL),
  (6791, 95, 'perspective as  ', 586.792, 588.725, NULL),
  (6792, 95, 'a not-for-profit  and ', 587.258, 589.792, NULL),
  (6793, 95, 'one of the  reasons that  ', 588.258, 590.592, NULL),
  (6794, 95, 'they  set it up that way  was ', 588.825, 592.025, NULL),
  (6795, 95, 'because they  did think it  ', 589.892, 592.825, NULL),
  (6796, 95, 'was dangerous Elon  Musk said ', 590.692, 593.992, NULL),
  (6797, 95, 'it  was dangerous at the  ', 592.125, 595.658, NULL),
  (6798, 95, 'beginning Celia said, it was  ', 592.925, 600.192, NULL),
  (6799, 95, 'dangerous.  And so  ', 594.092, 600.792, NULL),
  (6800, 95, 'the question is in  the ', 595.758, 601.392, NULL),
  (6801, 95, 'sort of multitude of  these ', 600.292, 602.025, NULL),
  (6802, 95, 'different businesses  that  ', 600.892, 602.558, NULL),
  (6803, 95, 'are in  a I do  you think you ', 601.492, 603.125, NULL),
  (6804, 95, 'do  need  these ', 602.125, 604.025, NULL),
  (6805, 95, 'not-for-profits?  Do you  ', 602.658, 605.525, NULL),
  (6806, 95, 'think that  that  the ', 603.225, 610.104, NULL),
  (6807, 95, 'incentive system  is  just  ', 604.125, 610.637, NULL),
  (6808, 95, 'fundamentally off.  And ', 605.625, 611.170, NULL),
  (6809, 95, 'should be a for-profit. ', 610.204, 611.537, NULL),
  (6810, 95, 'I mean a lot  of people ', 610.737, 612.137, NULL),
  (6811, 95, 'now think the ', 611.270, 612.970, NULL),
  (6812, 95, 'capitalist have taken over. ', 611.637, 614.970, NULL),
  (6813, 95, 'Well  Regulators  are not ', 612.237, 616.870, NULL),
  (6814, 95, 'for profit  and we  should  ', 613.070, 618.104, NULL),
  (6815, 95, 'regulate  these first of  all ', 615.070, 619.570, NULL),
  (6816, 95, 'just  take  a step back and ', 616.970, 620.104, NULL),
  (6817, 95, 'think about what  a i ', 618.204, 622.004, NULL),
  (6818, 95, 'is AI is an autonomous  ', 619.670, 623.370, NULL),
  (6819, 95, 'system. It''s  an  autonomous  ', 620.204, 624.170, NULL),
  (6820, 95, 'system. That''s more ', 622.104, 625.470, NULL),
  (6821, 95, 'sophistication  autonomous  ', 623.470, 627.137, NULL),
  (6822, 95, 'information system. We  have  ', 624.270, 629.604, NULL),
  (6823, 95, 'a lot of  autonomous  systems ', 626.037, 631.804, NULL),
  (6824, 95, 'today self-driving  cars  in  ', 627.237, 632.804, NULL),
  (6825, 95, 'some  in  factories ', 629.704, 634.304, NULL),
  (6826, 95, 'within factories  already ', 631.904, 634.870, NULL),
  (6827, 95, 'exists  robots  are ', 632.904, 639.677, NULL),
  (6828, 95, 'autonomous  in factories  ', 634.404, 640.277, NULL),
  (6829, 95, 'with  planes  are autonomous. ', 634.970, 640.910, NULL),
  (6830, 95, 'Autopilot self  Landing all ', 639.777, 643.310, NULL),
  (6831, 95, 'of those  capabilities  ', 640.377, 643.910, NULL),
  (6832, 95, 'exist.  We  ', 641.010, 645.110, NULL),
  (6833, 95, 'we ought to make sure that  ', 643.410, 646.110, NULL),
  (6834, 95, 'we  applied the first ', 644.010, 648.177, NULL),
  (6835, 95, 'principles  of  autonomous  ', 645.210, 649.510, NULL),
  (6836, 95, 'systems in  the same  way.  ', 646.210, 652.144, NULL),
  (6837, 95, 'We  have to design  a ', 648.277, 653.610, NULL),
  (6838, 95, 'properly  tested  properly  ', 649.610, 655.344, NULL),
  (6839, 95, 'stress test the properly  ', 652.244, 657.744, NULL),
  (6840, 95, 'monitor it  there''s Inside  ', 653.710, 661.744, NULL),
  (6841, 95, 'Out safety. There''s outside ', 655.444, 663.344, NULL),
  (6842, 95, 'in  safety  the FAA flight  ', 657.844, 663.944, NULL),
  (6843, 95, 'Air Traffic Control ', 661.844, 664.544, NULL),
  (6844, 95, 'redundancy  Traffic Control ', 663.444, 665.077, NULL),
  (6845, 95, 'Air flight  FAA the safety  ', 664.044, 665.677, NULL),
  (6846, 95, 'in  outside redundancy  ', 664.644, 666.377, NULL),
  (6847, 95, 'diversity.  There''s a whole ', 665.177, 668.545, NULL),
  (6848, 95, 'bunch of  different systems ', 665.777, 669.178, NULL),
  (6849, 95, 'that  we have to put  in. ', 666.477, 669.812, NULL),
  (6850, 95, 'Place for autonomous  systems ', 668.645, 670.445, NULL),
  (6851, 95, 'there''s a place for Place for ', 669.278, 671.512, NULL),
  (6852, 95, 'lot of  place for Industries  ', 669.912, 671.912, NULL),
  (6853, 95, 'to  learn from  at the  ', 670.545, 672.478, NULL),
  (6854, 95, 'beginning of  ', 671.612, 673.612, NULL),
  (6855, 95, 'those I mentioned there''s ', 672.012, 675.145, NULL),
  (6856, 95, 'sort of a frenemy situation ', 672.578, 676.112, NULL),
  (6857, 95, 'going on  with a  lot of  ', 673.712, 677.178, NULL),
  (6858, 95, 'companies that  use your  ', 675.245, 679.445, NULL),
  (6859, 95, 'chips.  They''re desperate for ', 676.212, 681.012, NULL),
  (6860, 95, 'your  chips.  They  they  ', 677.278, 681.645, NULL),
  (6861, 95, 'want  your  gpus  and ', 679.545, 682.945, NULL),
  (6862, 95, 'at the same time. They''re ', 681.112, 685.245, NULL),
  (6863, 95, 'also  trying  to  build ', 681.745, 685.978, NULL),
  (6864, 95, 'their own frankly.  I''m ', 683.045, 688.945, NULL),
  (6865, 95, 'curious that  you''ve  seen  ', 685.345, 690.845, NULL),
  (6866, 95, 'it  all how you would stack ', 686.078, 691.745, NULL),
  (6867, 95, 'rank  the success of  the ', 689.045, 693.778, NULL),
  (6868, 95, 'various companies that  are ', 690.945, 694.745, NULL),
  (6869, 95, 'in  this  AI  space.  We have ', 691.845, 697.145, NULL),
  (6870, 95, 'somebody  from  Google  ', 693.878, 702.581, NULL),
  (6871, 95, 'deepmind''s  here  today ', 694.845, 703.214, NULL),
  (6872, 95, 'their CEO.  Well, I''m ', 697.245, 703.681, NULL),
  (6873, 95, 'curious where you think open  ', 702.681, 704.281, NULL),
  (6874, 95, 'a.i. Ranks  in that ', 703.314, 704.781, NULL),
  (6875, 95, 'there''s inflection. Amazon  ', 703.781, 705.381, NULL),
  (6876, 95, 'is  trying  to  play  ', 704.381, 705.914, NULL),
  (6877, 95, 'and I''m not going to  rank  ', 704.881, 706.681, NULL),
  (6878, 95, 'my  friends,  you know, ', 705.481, 708.214, NULL),
  (6879, 95, 'but you but you have a  sense ', 706.014, 709.481, NULL),
  (6880, 95, 'of  and I part  of the  ', 706.781, 711.081, NULL),
  (6881, 95, 'question  that I want to  but ', 708.314, 712.314, NULL),
  (6882, 95, 'I''m not going to  do  it. ', 709.581, 713.414, NULL),
  (6883, 95, 'I''m just  kidding,  kidding ', 711.181, 714.914, NULL),
  (6884, 95, 'but there is  a question  ', 712.414, 716.381, NULL),
  (6885, 95, 'about harshly whether all of  ', 713.514, 718.114, NULL),
  (6886, 95, 'these things  converge, ', 715.014, 719.914, NULL),
  (6887, 95, 'uh-huh  meeting know that ', 716.481, 720.514, NULL),
  (6888, 95, 'that  they  all it  just  ', 718.214, 722.414, NULL),
  (6889, 95, 'this all  become some kind  ', 720.014, 723.214, NULL),
  (6890, 95, 'of  commoditized  no  ', 720.614, 725.314, NULL),
  (6891, 95, 'business. No, I don''t think ', 722.514, 726.681, NULL),
  (6892, 95, 'so. I don''t think so. I think ', 723.314, 727.314, NULL),
  (6893, 95, 'what''s  going to  happen  ', 725.414, 728.414, NULL),
  (6894, 95, 'is we''re going to have  We''re ', 726.781, 729.532, NULL),
  (6895, 95, 'going to  we''re have  ', 727.414, 730.632, NULL),
  (6896, 95, 'off-the-shelf a eyes  and ', 728.514, 731.265, NULL),
  (6897, 95, 'these off-the-shelf apis  are ', 729.632, 733.032, NULL),
  (6898, 95, 'going to  be  really  really  ', 730.732, 735.265, NULL),
  (6899, 95, 'good  at  solving a lot of  ', 731.365, 738.165, NULL),
  (6900, 95, 'problems. But but you''re  ', 733.132, 739.365, NULL),
  (6901, 95, 'going to  have  companies ', 735.365, 741.165, NULL),
  (6902, 95, 'in healthcare going to  have  ', 738.265, 742.665, NULL),
  (6903, 95, 'supervised, you know, super ', 739.465, 744.665, NULL),
  (6904, 95, 'tuned a eyes  that  take  ', 741.265, 746.365, NULL),
  (6905, 95, 'these off the shelf a eyes  ', 742.765, 747.865, NULL),
  (6906, 95, 'and make  them  super good  ', 744.765, 749.265, NULL),
  (6907, 95, 'at  drug  Discovery or  super ', 746.465, 750.232, NULL),
  (6908, 95, 'good  at  chip  design  ', 747.965, 751.398, NULL),
  (6909, 95, 'and we just use our company.  ', 749.365, 753.498, NULL),
  (6910, 95, 'For example,  the vast  ', 750.332, 754.032, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (6911, 95, 'majority  of  our company''s ', 751.498, 754.665, NULL),
  (6912, 95, 'value company''s our of  ', 753.598, 755.265, NULL),
  (6913, 95, 'majority  vast  the example,  ', 754.132, 755.865, NULL),
  (6914, 95, 'For company.  our is in the ', 754.765, 758.998, NULL),
  (6915, 95, 'data  and the intelligence  ', 755.365, 759.598, NULL),
  (6916, 95, 'and the know  know how  ', 755.965, 760.132, NULL),
  (6917, 95, 'to craft  Know how  that''s  ', 759.098, 760.776, NULL),
  (6918, 95, 'inside  our company and ', 759.698, 761.342, NULL),
  (6919, 95, 'know how  none of that  data  ', 760.232, 761.942, NULL),
  (6920, 95, 'Know how  is out  on the  ', 760.876, 762.776, NULL),
  (6921, 95, 'internet. You can''t get an  ', 761.442, 764.076, NULL),
  (6922, 95, 'AI to go  learn it. And so  ', 762.042, 765.442, NULL),
  (6923, 95, 'I''ve  got to take a really  ', 762.876, 767.376, NULL),
  (6924, 95, 'smart AI  which is  what  we  ', 764.176, 768.276, NULL),
  (6925, 95, 'do. We  build a smart Ai  and ', 765.542, 769.676, NULL),
  (6926, 95, 'then  we  teach it  how ', 767.476, 770.676, NULL),
  (6927, 95, 'to design chips.  We  teach ', 768.376, 772.776, NULL),
  (6928, 95, 'you how to  write software  ', 769.776, 773.409, NULL),
  (6929, 95, 'you teach it  how to  do  ', 770.776, 774.576, NULL),
  (6930, 95, 'drug  Discovery.  You''ll  ', 772.876, 775.676, NULL),
  (6931, 95, 'teach it  how to  do  ', 773.509, 776.609, NULL),
  (6932, 95, 'you know  Radiology.  Let me  ', 774.676, 777.009, NULL),
  (6933, 95, 'ask you a geopolitical  ', 775.776, 778.276, NULL),
  (6934, 95, 'question. We''re ', 776.709, 780.509, NULL),
  (6935, 95, 'gonna hear from the president ', 777.109, 781.509, NULL),
  (6936, 95, 'Taiwan  just  after this  and ', 778.376, 783.842, NULL),
  (6937, 95, 'there is  a big debate  as  ', 780.609, 785.642, NULL),
  (6938, 95, 'you know, about chip  ', 781.609, 786.609, NULL),
  (6939, 95, 'Independence  the big ', 783.942, 790.076, NULL),
  (6940, 95, 'investment  that we''re making ', 785.742, 790.642, NULL),
  (6941, 95, 'in, To  ', 786.709, 791.292, NULL),
  (6942, 95, 'Manufactured here in the  ', 790.176, 792.725, NULL),
  (6943, 95, 'United States Two whether we  ', 790.742, 796.225, NULL),
  (6944, 95, 'should  be  exporting certain ', 791.392, 797.325, NULL),
  (6945, 95, 'types of  chips to  China.  ', 792.825, 800.058, NULL),
  (6946, 95, 'Where are we  on the  Journey ', 796.325, 800.958, NULL),
  (6947, 95, 'of  being chip  independent ', 797.425, 801.925, NULL),
  (6948, 95, 'if  you will  and do you  ', 800.158, 805.825, NULL),
  (6949, 95, 'think that  that  is a  ', 801.058, 806.892, NULL),
  (6950, 95, 'worthy goal?  We  are we  are ', 802.025, 807.825, NULL),
  (6951, 95, 'somewhere between a decade  ', 805.925, 811.025, NULL),
  (6952, 95, 'we  We  two decades away  ', 806.992, 812.458, NULL),
  (6953, 95, 'from  we  from  supply  chain ', 807.925, 814.525, NULL),
  (6954, 95, 'Independence  Independence. ', 811.125, 817.058, NULL),
  (6955, 95, 'As  I mentioned earlier.  Our ', 812.558, 818.558, NULL),
  (6956, 95, 'systems comes 35,000  parts ', 814.625, 821.158, NULL),
  (6957, 95, 'and eight of them come  from  ', 817.158, 822.361, NULL),
  (6958, 95, 'tsmc  and the supply  chain ', 818.658, 823.661, NULL),
  (6959, 95, 'when  you think through ', 821.258, 824.428, NULL),
  (6960, 95, 'are in Taiwan course, ', 822.461, 825.428, NULL),
  (6961, 95, 'there are a lot of  in  ', 823.761, 826.828, NULL),
  (6962, 95, 'Taiwan  there all over the  ', 824.528, 827.461, NULL),
  (6963, 95, 'world but supply  chain ', 825.528, 829.428, NULL),
  (6964, 95, 'Independence  is  going to be ', 826.928, 830.328, NULL),
  (6965, 95, 'really  challenging.  Yeah, ', 827.561, 831.428, NULL),
  (6966, 95, 'we  should  try it. We  ', 829.528, 832.461, NULL),
  (6967, 95, 'should  Endeavour it. I mean  ', 830.428, 834.728, NULL),
  (6968, 95, 'we  should  absolutely  go  ', 831.528, 835.761, NULL),
  (6969, 95, 'down  the Journey of it,  but ', 832.561, 836.494, NULL),
  (6970, 95, 'total independence  But ', 834.828, 838.061, NULL),
  (6971, 95, 'of it.  but of it,  of  But ', 835.861, 840.061, NULL),
  (6972, 95, 'of it.  supply  chain is  not ', 836.594, 840.761, NULL),
  (6973, 95, 'a real  practical thing for ', 838.161, 841.294, NULL),
  (6974, 95, 'for a decade  or  ', 840.161, 841.861, NULL),
  (6975, 95, 'took a one of the other ', 840.861, 842.961, NULL),
  (6976, 95, 'things  that''s  happening ', 841.394, 844.161, NULL),
  (6977, 95, 'as you  know, so  well  is  ', 841.961, 845.561, NULL),
  (6978, 95, 'that the  u.s.  Government  ', 843.061, 848.061, NULL),
  (6979, 95, 'has effectively told  you you ', 844.261, 850.361, NULL),
  (6980, 95, 'need  to  throttle  the speed ', 845.661, 852.748, NULL),
  (6981, 95, 'of  the chips that you  are ', 848.161, 856.081, NULL),
  (6982, 95, 'exporting to  China.  Yeah. ', 850.461, 856.714, NULL),
  (6983, 95, 'This is having impact.  On  ', 852.848, 857.314, NULL),
  (6984, 95, 'the business  itself, but I''m ', 856.181, 857.914, NULL),
  (6985, 95, 'curious how you think about ', 856.814, 859.314, NULL),
  (6986, 95, 'that  also  geopolitically  ', 857.414, 860.048, NULL),
  (6987, 95, 'as  a business  the ', 858.014, 861.081, NULL),
  (6988, 95, 'National Security concerns  ', 859.414, 863.314, NULL),
  (6989, 95, 'Jamie dimon.  We were talking ', 860.148, 863.848, NULL),
  (6990, 95, 'earlier about you know, what  ', 861.181, 864.848, NULL),
  (6991, 95, 'companies you should do ', 863.414, 865.614, NULL),
  (6992, 95, 'business  with  should  ', 863.948, 867.514, NULL),
  (6993, 95, 'you do  business  with  ', 864.948, 868.348, NULL),
  (6994, 95, 'people  in  China or  not,  ', 865.714, 870.614, NULL),
  (6995, 95, 'given all of  the concerns  ', 867.614, 871.714, NULL),
  (6996, 95, 'that  people  have  well  ', 868.448, 872.548, NULL),
  (6997, 95, 'on first  principles  were  ', 870.714, 874.348, NULL),
  (6998, 95, 'a company that  was built for ', 871.814, 875.514, NULL),
  (6999, 95, 'business. And so  we  try to  ', 872.648, 878.081, NULL),
  (7000, 95, 'do  business  with  everybody ', 874.448, 879.048, NULL),
  (7001, 95, 'we  can on the other  hand  ', 875.614, 880.248, NULL),
  (7002, 95, 'on the other  hand  our ', 878.181, 881.714, NULL),
  (7003, 95, 'national  security  matters ', 879.148, 882.762, NULL),
  (7004, 95, 'and our national  ', 880.348, 884.629, NULL),
  (7005, 95, 'competitiveness ', 881.814, 885.196, NULL),
  (7006, 95, 'competitiveness.  Matters ', 882.862, 886.329, NULL),
  (7007, 95, 'somewhere between matters ', 884.729, 888.129, NULL),
  (7008, 95, 'Matters between matters the ', 885.296, 890.129, NULL),
  (7009, 95, 'the between that makes  sense ', 886.429, 890.729, NULL),
  (7010, 95, 'and so  And sense.  our and ', 888.229, 891.796, NULL),
  (7011, 95, 'sense And sense.  country,  ', 890.229, 893.029, NULL),
  (7012, 95, 'of  course  once  our ', 890.829, 894.629, NULL),
  (7013, 95, 'Industries  to  to  on  the ', 891.896, 897.162, NULL),
  (7014, 95, 'one hand  be  successful  ', 893.129, 899.429, NULL),
  (7015, 95, 'right lead  the world invent  ', 894.729, 900.429, NULL),
  (7016, 95, 'amazing technology  have  ', 897.262, 902.229, NULL),
  (7017, 95, 'technology  in dependence on  ', 899.529, 903.029, NULL),
  (7018, 95, 'the one hand  and and be  the ', 900.529, 904.229, NULL),
  (7019, 95, 'leader  of  the world in  ', 902.329, 905.229, NULL),
  (7020, 95, 'technology  on  the one hand  ', 903.129, 906.762, NULL),
  (7021, 95, 'on the other  hand. We need ', 904.329, 908.862, NULL),
  (7022, 95, 'to  make  sure  that  we  ', 905.329, 909.629, NULL),
  (7023, 95, 'ensure  our national  ', 906.862, 911.962, NULL),
  (7024, 95, 'security our  regulations ', 908.962, 914.172, NULL),
  (7025, 95, 'provide for that  the most  ', 909.729, 914.805, NULL),
  (7026, 95, 'critical  that  technology  ', 912.062, 919.272, NULL),
  (7027, 95, 'critical  most  that the  for ', 914.272, 919.805, NULL),
  (7028, 95, 'regulations provide our Build ', 914.905, 920.372, NULL),
  (7029, 95, 'the Leading Edge of it  ', 919.372, 920.872, NULL),
  (7030, 95, 'is not made available to  ', 919.905, 921.372, NULL),
  (7031, 95, 'China.  And so  what  ', 920.472, 922.005, NULL),
  (7032, 95, 'we have to  do  a new ', 920.972, 922.905, NULL),
  (7033, 95, 'regulation just came  out one ', 921.472, 923.572, NULL),
  (7034, 95, 'that  came  out a year ago  ', 922.105, 925.272, NULL),
  (7035, 95, 'one just  came  out this  ', 923.005, 926.072, NULL),
  (7036, 95, 'year. And so  we  have  to  ', 923.672, 929.005, NULL),
  (7037, 95, 'we have to  come  up  with  ', 925.372, 931.305, NULL),
  (7038, 95, 'new chips that  comply  with  ', 926.172, 932.172, NULL),
  (7039, 95, 'the regulation. And once  we  ', 929.105, 933.505, NULL),
  (7040, 95, 'comply  with the  regulation  ', 931.405, 934.272, NULL),
  (7041, 95, 'will  go  back to Market  and ', 932.272, 935.005, NULL),
  (7042, 95, 'and do  the best. Do you  ', 933.605, 935.905, NULL),
  (7043, 95, 'think a regulation is a ', 934.372, 938.005, NULL),
  (7044, 95, 'good idea because I have  I ', 935.105, 940.105, NULL),
  (7045, 95, 'have  heard you say that  you ', 936.005, 942.486, NULL),
  (7046, 95, 'think potentially by  ', 938.105, 944.520, NULL),
  (7047, 95, 'throttling  these chips.  We  ', 940.205, 945.320, NULL),
  (7048, 95, 'are just  hiring and creating ', 942.586, 946.220, NULL),
  (7049, 95, 'competitors in  places like ', 944.620, 948.420, NULL),
  (7050, 95, 'China that  you can''t ', 945.420, 948.986, NULL),
  (7051, 95, 'control.  That''s  what  you ', 946.320, 950.120, NULL),
  (7052, 95, 'don''t look they''re always ', 948.520, 952.353, NULL),
  (7053, 95, 'unintended  consequences  ', 949.086, 954.020, NULL),
  (7054, 95, 'everything  that  we do in  ', 950.220, 954.920, NULL),
  (7055, 95, 'complicated systems.  If we ', 952.453, 956.453, NULL),
  (7056, 95, 'want to want  to  limit them  ', 954.120, 958.853, NULL),
  (7057, 95, 'from  access  to  technology  ', 955.020, 960.286, NULL),
  (7058, 95, 'like  nvidia''s  maybe it  ', 956.553, 961.486, NULL),
  (7059, 95, 'doesn''t really  they  find a  ', 958.953, 963.653, NULL),
  (7060, 95, 'way to  get it  or they find  ', 960.386, 964.853, NULL),
  (7061, 95, 'a way to  inspire their local ', 961.586, 966.386, NULL),
  (7062, 95, 'industry. There''s some  50  ', 963.753, 968.120, NULL),
  (7063, 95, 'companies are being built in  ', 964.953, 969.386, NULL),
  (7064, 95, 'China that  that  are going ', 966.486, 970.753, NULL),
  (7065, 95, 'to  go  provide this  ', 968.220, 971.286, NULL),
  (7066, 95, 'technology. So  we  you know, ', 969.486, 971.920, NULL),
  (7067, 95, 'know, it''s  you we  So  ', 970.853, 972.386, NULL),
  (7068, 95, 'technology. this  provide go  ', 971.386, 975.689, NULL),
  (7069, 95, 'going to  are it''s  ', 972.020, 976.322, NULL),
  (7070, 95, 'it''s a it''s a complicated ', 972.486, 976.856, NULL),
  (7071, 95, 'thing.  And so  what  can you ', 975.789, 977.489, NULL),
  (7072, 95, 'do? Well, you could you ', 976.422, 977.922, NULL),
  (7073, 95, 'can make  your own  choices,  ', 976.956, 978.456, NULL),
  (7074, 95, 'but the the other ', 977.589, 980.222, NULL),
  (7075, 95, 'thing that''s  happened  ', 978.022, 981.822, NULL),
  (7076, 95, 'literally in the  past  ', 978.556, 983.122, NULL),
  (7077, 95, 'couple  months  now is  ', 980.322, 986.156, NULL),
  (7078, 95, 'Huawei  came  out with  a new ', 981.922, 987.856, NULL),
  (7079, 95, 'phone.  Yeah, and it  ', 983.222, 990.322, NULL),
  (7080, 95, 'surprised everybody in  terms ', 986.256, 992.656, NULL),
  (7081, 95, 'of  the chips in  that  phone ', 987.956, 993.289, NULL),
  (7082, 95, 'in terms  of  being a ', 990.422, 995.056, NULL),
  (7083, 95, '7 nanometre chip. There was a ', 992.756, 995.756, NULL),
  (7084, 95, 'view  that  China was never ', 993.389, 1000.289, NULL),
  (7085, 95, 'going to get there. We were ', 995.156, 1001.289, NULL),
  (7086, 95, 'we  had this  sort  of  real  ', 995.856, 1004.390, NULL),
  (7087, 95, 'Real  opportunity ahead of  ', 1000.389, 1006.890, NULL),
  (7088, 95, 'them  by  many  years.  ', 1001.389, 1008.890, NULL),
  (7089, 95, 'Were you  surprised by  that? ', 1004.490, 1009.924, NULL),
  (7090, 95, 'The the The rumors of it  ', 1006.990, 1011.490, NULL),
  (7091, 95, 'and in  the market  has been  ', 1008.990, 1013.624, NULL),
  (7092, 95, 'around  for a long  time. And ', 1010.024, 1015.124, NULL),
  (7093, 95, 'so  was it  where we  ', 1011.590, 1015.824, NULL),
  (7094, 95, 'surprised?  I don''t think so. ', 1013.724, 1017.024, NULL),
  (7095, 95, 'I don''t think anybody in  ', 1015.224, 1019.324, NULL),
  (7096, 95, 'the industry  was really  ', 1015.924, 1020.524, NULL),
  (7097, 95, 'surprised.  And and is  it  ', 1017.124, 1023.224, NULL),
  (7098, 95, 'possible  to  take  ', 1019.424, 1024.557, NULL),
  (7099, 95, 'something that  that  said  ', 1020.624, 1025.757, NULL),
  (7100, 95, '16  nanometer and Shrink  at  ', 1023.324, 1028.624, NULL),
  (7101, 95, 'the seven?  You know, these ', 1024.657, 1030.724, NULL),
  (7102, 95, 'are just  numbers.  Is  it  ', 1025.857, 1032.024, NULL),
  (7103, 95, 'really  7 did they  shrink  ', 1028.724, 1033.424, NULL),
  (7104, 95, 'it  down  to  something that  ', 1030.824, 1034.124, NULL),
  (7105, 95, 'was sufficiently  good  ', 1032.124, 1036.134, NULL),
  (7106, 95, 'that you  can make  a phone ', 1033.524, 1037.868, NULL),
  (7107, 95, 'from? Yeah, I think so. And ', 1034.224, 1039.068, NULL),
  (7108, 95, 'and so  so  I think it  ', 1036.234, 1039.834, NULL),
  (7109, 95, 'you know, there''s no  magic ', 1037.968, 1041.268, NULL),
  (7110, 95, 'in  these numbers as  ', 1039.168, 1042.201, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (7111, 95, 'you know, it''s just seven the ', 1039.934, 1044.268, NULL),
  (7112, 95, 'number  but the question is ', 1041.368, 1046.334, NULL),
  (7113, 95, 'what is our lead  over  them. ', 1042.301, 1048.568, NULL),
  (7114, 95, 'Do you  think in  ', 1044.368, 1049.268, NULL),
  (7115, 95, 'semiconductors? Yeah  in  ', 1046.434, 1052.868, NULL),
  (7116, 95, 'semiconductors, you know  ', 1048.668, 1054.201, NULL),
  (7117, 95, 'call  it  call  it  a decade, ', 1049.368, 1056.068, NULL),
  (7118, 95, 'you know, you could decide  ', 1052.968, 1059.734, NULL),
  (7119, 95, 'yeah  and call it a decade, ', 1054.301, 1061.168, NULL),
  (7120, 95, 'but I could you take  the ', 1056.168, 1062.068, NULL),
  (7121, 95, 'decade  old technology  and ', 1059.834, 1063.134, NULL),
  (7122, 95, 'just  squeeze The Living  ', 1061.268, 1064.168, NULL),
  (7123, 95, 'Daylights out of  it  until ', 1062.168, 1065.544, NULL),
  (7124, 95, 'it  produces  something ', 1063.234, 1066.177, NULL),
  (7125, 95, 'that''s  kind of like  ', 1064.268, 1068.577, NULL),
  (7126, 95, 'something from  five  years ', 1065.644, 1069.577, NULL),
  (7127, 95, 'ago.  Yeah, probably  and so  ', 1066.277, 1070.977, NULL),
  (7128, 95, 'so  I think there''s a lot of  ', 1068.677, 1072.177, NULL),
  (7129, 95, 'in  a lot of  a lot of  ', 1069.677, 1072.777, NULL),
  (7130, 95, 'clever  Engineers all ', 1071.077, 1073.810, NULL),
  (7131, 95, 'over the  world and ', 1072.277, 1075.044, NULL),
  (7132, 95, 'they''re trying to you know, ', 1072.877, 1075.577, NULL),
  (7133, 95, 'get the most  out of  ', 1073.910, 1077.010, NULL),
  (7134, 95, 'me ask you a different  ', 1075.144, 1077.610, NULL),
  (7135, 95, 'company that they have  ', 1075.677, 1080.110, NULL),
  (7136, 95, 'there''s gonna be gold asml  ', 1077.110, 1081.110, NULL),
  (7137, 95, 'in the  Netherlands.  That''s  ', 1077.710, 1082.377, NULL),
  (7138, 95, 'basically responsible for ', 1080.210, 1084.010, NULL),
  (7139, 95, 'every chip  that  everybody ', 1081.210, 1092.244, NULL),
  (7140, 95, 'makes some  people  might ', 1082.477, 1092.744, NULL),
  (7141, 95, 'call  them  a monopoly. How ', 1084.110, 1093.177, NULL),
  (7142, 95, 'powerful are they in  ', 1092.344, 1093.644, NULL),
  (7143, 95, 'all of this?  And ', 1092.844, 1095.521, NULL),
  (7144, 95, 'should it be we be  ', 1093.277, 1096.821, NULL),
  (7145, 95, 'worried about that power? ', 1093.744, 1098.021, NULL),
  (7146, 95, 'Well, a lot of  people  ', 1095.621, 1099.354, NULL),
  (7147, 95, 'depend  on  them  to  build ', 1096.921, 1100.554, NULL),
  (7148, 95, 'the instrument  and they  do  ', 1098.121, 1103.321, NULL),
  (7149, 95, 'build very  very  good  ', 1099.454, 1103.821, NULL),
  (7150, 95, 'instruments.  And the ', 1100.654, 1104.654, NULL),
  (7151, 95, 'technology is very  ', 1103.421, 1105.654, NULL),
  (7152, 95, 'complicated.  It  took  a ', 1103.921, 1107.654, NULL),
  (7153, 95, 'long time for them  to  build ', 1104.754, 1108.754, NULL),
  (7154, 95, 'it. There''s no  reason  why ', 1105.754, 1110.321, NULL),
  (7155, 95, 'they  don''t want  to provide  ', 1107.754, 1112.054, NULL),
  (7156, 95, 'it  to the  world.  And so  ', 1108.854, 1113.421, NULL),
  (7157, 95, 'I''m not so  I''m not sure  ', 1110.421, 1114.621, NULL),
  (7158, 95, 'what  the question  is, but ', 1112.154, 1115.221, NULL),
  (7159, 95, 'but I''m not concerned.  ', 1113.521, 1115.854, NULL),
  (7160, 95, 'I didn''t  wake  But is. up  ', 1114.721, 1117.121, NULL),
  (7161, 95, 'but is, this morning  But is. ', 1115.321, 1118.254, NULL),
  (7162, 95, 'concerned about the SML.  I ', 1115.954, 1120.621, NULL),
  (7163, 95, 'think they''re ', 1117.221, 1121.154, NULL),
  (7164, 95, 'an excellent provider and and ', 1118.354, 1121.854, NULL),
  (7165, 95, 'they''re they''re they''re ', 1120.721, 1122.521, NULL),
  (7166, 95, 'motivated this apply to us  ', 1121.254, 1123.021, NULL),
  (7167, 95, 'and And this apply to us. and ', 1121.954, 1123.621, NULL),
  (7168, 95, 'this apply to us  And ', 1122.621, 1124.654, NULL),
  (7169, 95, 'this apply to us. you know, ', 1123.121, 1125.526, NULL),
  (7170, 95, 'so  I think everybody''s ', 1123.721, 1127.960, NULL),
  (7171, 95, 'everybody''s incentives  are ', 1124.754, 1130.060, NULL),
  (7172, 95, 'aligned when  I asked you a ', 1125.626, 1131.260, NULL),
  (7173, 95, 'management  question  because ', 1128.060, 1133.160, NULL),
  (7174, 95, 'it''s  just  fascinating given ', 1130.160, 1135.593, NULL),
  (7175, 95, 'the success of  this  of this ', 1131.360, 1136.526, NULL),
  (7176, 95, 'company.  You constantly  say ', 1133.260, 1138.660, NULL),
  (7177, 95, 'even  at  this  point in the  ', 1135.693, 1141.760, NULL),
  (7178, 95, 'Ballgame  you say I do  ', 1136.626, 1142.293, NULL),
  (7179, 95, 'everything  I can not to go.  ', 1138.760, 1142.860, NULL),
  (7180, 95, 'Out of  business. I do  ', 1141.860, 1143.793, NULL),
  (7181, 95, 'everything  I can not to  ', 1142.393, 1145.860, NULL),
  (7182, 95, 'fail  that  that  is  like  a ', 1142.960, 1147.993, NULL),
  (7183, 95, 'mantra  inside  the company ', 1143.893, 1151.326, NULL),
  (7184, 95, 'even  at  this  point.  What  ', 1145.960, 1152.960, NULL),
  (7185, 95, 'is that about?  What  is that ', 1148.093, 1154.160, NULL),
  (7186, 95, 'about?  I think I think when  ', 1151.426, 1155.968, NULL),
  (7187, 95, 'you when  you build a company ', 1153.060, 1158.034, NULL),
  (7188, 95, 'from  the ground  up  and ', 1154.260, 1161.368, NULL),
  (7189, 95, 'you''ve  you experienced real  ', 1156.068, 1163.068, NULL),
  (7190, 95, 'real  adversity,  and and you ', 1158.134, 1163.968, NULL),
  (7191, 95, 'really  really  experienced ', 1161.468, 1164.601, NULL),
  (7192, 95, 'nearly  ', 1163.168, 1167.001, NULL),
  (7193, 95, 'going out of business several ', 1164.068, 1168.601, NULL),
  (7194, 95, 'times that  that  feeling ', 1164.701, 1170.468, NULL),
  (7195, 95, 'stays with  you.  I wake up ', 1167.101, 1172.768, NULL),
  (7196, 95, 'every morning and in  ', 1168.701, 1175.968, NULL),
  (7197, 95, 'you know, some  condition of  ', 1170.568, 1178.734, NULL),
  (7198, 95, 'concern and and I don''t ', 1172.868, 1181.834, NULL),
  (7199, 95, 'I don''t wake  up  proud and ', 1176.068, 1182.834, NULL),
  (7200, 95, 'confident I wake up.  ', 1178.834, 1184.234, NULL),
  (7201, 95, 'Worried and concerned about ', 1181.934, 1184.801, NULL),
  (7202, 95, 'you know, and so  ', 1182.934, 1185.734, NULL),
  (7203, 95, 'it just depends on  which ', 1184.334, 1187.080, NULL),
  (7204, 95, 'side  of  the bed you get out ', 1184.901, 1188.380, NULL),
  (7205, 95, 'on. This  is  the Andy Grove  ', 1185.834, 1190.180, NULL),
  (7206, 95, 'only  the paranoid survive. ', 1187.180, 1194.346, NULL),
  (7207, 95, 'Well, I think paranoia  needs ', 1188.480, 1196.680, NULL),
  (7208, 95, 'needs therapy.  I don''t I ', 1190.280, 1197.380, NULL),
  (7209, 95, 'don''t think I don''t think ', 1194.446, 1198.980, NULL),
  (7210, 95, 'people  are trying  to  ', 1196.780, 1200.046, NULL),
  (7211, 95, 'put me  out of  business. I ', 1197.480, 1202.080, NULL),
  (7212, 95, 'probably  know  they''re ', 1199.080, 1203.480, NULL),
  (7213, 95, 'trying to and so  so  I ', 1200.146, 1205.080, NULL),
  (7214, 95, 'that''s  different.  And so  ', 1202.180, 1207.480, NULL),
  (7215, 95, 'so  I I live  in  this  ', 1203.580, 1210.446, NULL),
  (7216, 95, 'condition where where we''re ', 1205.180, 1212.146, NULL),
  (7217, 95, 'partly  partly  partly  ', 1207.580, 1213.980, NULL),
  (7218, 95, 'desperate part. Lee,  ', 1210.546, 1215.513, NULL),
  (7219, 95, 'you know  partly  partly  ', 1212.246, 1216.680, NULL),
  (7220, 95, 'aspirational  and uh, let me  ', 1214.080, 1217.588, NULL),
  (7221, 95, 'ask you then  about this  you ', 1215.613, 1219.121, NULL),
  (7222, 95, 'said  this  to  ', 1216.780, 1220.321, NULL),
  (7223, 95, 'the New Yorker  and I found ', 1217.688, 1222.021, NULL),
  (7224, 95, 'it  fascinating again goes  ', 1219.221, 1222.688, NULL),
  (7225, 95, 'to  this idea of  failure or  ', 1220.421, 1224.088, NULL),
  (7226, 95, 'worries about failure,  ', 1222.121, 1224.854, NULL),
  (7227, 95, 'but you said  this  and I ', 1222.788, 1226.321, NULL),
  (7228, 95, 'was like  news you can  this  ', 1224.188, 1227.688, NULL),
  (7229, 95, 'is  a selfish question. ', 1224.954, 1229.921, NULL),
  (7230, 95, 'You said  I find  that  I ', 1226.421, 1231.621, NULL),
  (7231, 95, 'think best  when  I''m under ', 1227.788, 1233.221, NULL),
  (7232, 95, 'adversity and then  you said  ', 1230.021, 1235.954, NULL),
  (7233, 95, 'my  heart rate actually goes  ', 1231.721, 1236.788, NULL),
  (7234, 95, 'down. When  I''m under ', 1233.321, 1242.054, NULL),
  (7235, 95, 'adversity,  my  heart rate  ', 1236.054, 1245.488, NULL),
  (7236, 95, 'goes  up  by  a lot.  Uh-huh. ', 1236.888, 1249.890, NULL),
  (7237, 95, 'Oh my let''s see.  Well, ', 1242.154, 1252.090, NULL),
  (7238, 95, 'I think I think during  ', 1245.588, 1252.790, NULL),
  (7239, 95, 'adversity you''re more focused ', 1249.990, 1254.490, NULL),
  (7240, 95, 'and when  you''re  more  ', 1252.190, 1256.257, NULL),
  (7241, 95, 'focused you could you ', 1252.890, 1257.757, NULL),
  (7242, 95, 'perform better  and I like  ', 1254.590, 1259.990, NULL),
  (7243, 95, 'I like, you know  know, the ', 1256.357, 1262.190, NULL),
  (7244, 95, 'last  last  five  minutes ', 1257.857, 1264.190, NULL),
  (7245, 95, 'before  before  something ', 1260.090, 1265.390, NULL),
  (7246, 95, 'you''re more focused.  And so, ', 1262.290, 1268.090, NULL),
  (7247, 95, 'you know, I like to live  in  ', 1264.290, 1268.690, NULL),
  (7248, 95, 'that  state where we''re ', 1265.490, 1269.324, NULL),
  (7249, 95, 'we''re about to perish about ', 1268.190, 1269.857, NULL),
  (7250, 95, 'we''re we''re where state that  ', 1268.790, 1273.690, NULL),
  (7251, 95, 'live in to  like  I to  ', 1269.424, 1274.190, NULL),
  (7252, 95, 'perish  and ', 1269.957, 1274.824, NULL),
  (7253, 95, 'Everything you know,  ', 1273.790, 1275.424, NULL),
  (7254, 95, 'everything you know,  and so  ', 1274.290, 1275.990, NULL),
  (7255, 95, 'so I  enjoy that  condition ', 1274.924, 1276.557, NULL),
  (7256, 95, 'and Everything you know,  ', 1275.524, 1277.142, NULL),
  (7257, 95, 'everything you know,  and ', 1276.090, 1278.276, NULL),
  (7258, 95, 'I do  my  best  work  in  ', 1276.657, 1279.376, NULL),
  (7259, 95, 'that  condition and I ', 1277.242, 1280.209, NULL),
  (7260, 95, 'you know, I like  going home  ', 1278.376, 1281.076, NULL),
  (7261, 95, 'and telling condition,  my  ', 1279.476, 1283.009, NULL),
  (7262, 95, 'condition wife  condition,  I ', 1280.309, 1286.009, NULL),
  (7263, 95, 'saved the company today and ', 1281.176, 1287.209, NULL),
  (7264, 95, 'and maybe maybe it  wasn''t  ', 1283.109, 1289.709, NULL),
  (7265, 95, 'true. But but I like  ', 1286.109, 1290.276, NULL),
  (7266, 95, 'to think  so  and so  ', 1287.309, 1290.909, NULL),
  (7267, 95, 'another question  we have ', 1289.809, 1292.376, NULL),
  (7268, 95, 'a lot of  Business  Leaders ', 1290.376, 1292.976, NULL),
  (7269, 95, 'and CEOs  here  and I think ', 1291.009, 1294.176, NULL),
  (7270, 95, 'they''re going to  be  ', 1292.476, 1297.609, NULL),
  (7271, 95, 'surprised to hear this  you ', 1293.076, 1298.242, NULL),
  (7272, 95, 'have  40  direct  reports.  ', 1294.276, 1299.509, NULL),
  (7273, 95, 'So at the so at the So at the ', 1297.709, 1301.609, NULL),
  (7274, 95, 'company so at the 50 director ', 1298.342, 1302.576, NULL),
  (7275, 95, '50  direct  Reports,  most  ', 1299.609, 1303.409, NULL),
  (7276, 95, 'people  say I don''t know  if  ', 1301.709, 1303.909, NULL),
  (7277, 95, 'we have any consultants ', 1302.676, 1304.476, NULL),
  (7278, 95, 'in the  room, they''d  ', 1303.509, 1305.109, NULL),
  (7279, 95, 'the room, in  consultants ', 1304.009, 1305.709, NULL),
  (7280, 95, 'have any  we  know if don''t I ', 1304.576, 1307.142, NULL),
  (7281, 95, 'say they''d  say,  you know, ', 1305.209, 1307.676, NULL),
  (7282, 95, 'what  half  a dozen maybe ', 1305.809, 1309.682, NULL),
  (7283, 95, '10, that  should be the ', 1307.242, 1310.516, NULL),
  (7284, 95, 'limit.  What''s  ', 1307.776, 1312.516, NULL),
  (7285, 95, 'your what''s your  philosophy  ', 1309.782, 1313.416, NULL),
  (7286, 95, 'or  Theory  here? Well, the ', 1310.616, 1314.916, NULL),
  (7287, 95, 'people  that  report  to  the ', 1312.616, 1317.216, NULL),
  (7288, 95, 'CEO should  require the least ', 1313.516, 1318.082, NULL),
  (7289, 95, 'amount  of  pampering.  And ', 1315.016, 1319.882, NULL),
  (7290, 95, 'so I  don''t think they  need  ', 1317.316, 1322.316, NULL),
  (7291, 95, 'life  advice. I don''t think ', 1318.182, 1323.416, NULL),
  (7292, 95, 'they  need  career  guidance. ', 1319.982, 1324.982, NULL),
  (7293, 95, 'They  should  be  at the  top ', 1322.416, 1325.649, NULL),
  (7294, 95, 'of  their game  incredibly  ', 1323.516, 1329.216, NULL),
  (7295, 95, 'good  at  their craft ', 1325.082, 1330.116, NULL),
  (7296, 95, 'their craft.  And unless  ', 1325.749, 1332.016, NULL),
  (7297, 95, 'they  need  my  personal  ', 1329.316, 1333.016, NULL),
  (7298, 95, 'help, you know, they  should  ', 1330.216, 1334.416, NULL),
  (7299, 95, 'require very little ', 1332.116, 1337.116, NULL),
  (7300, 95, 'management. And so  so I  ', 1333.116, 1337.749, NULL),
  (7301, 95, 'think that  one the ', 1334.516, 1340.621, NULL),
  (7302, 95, 'more the more direct  reports ', 1337.216, 1342.221, NULL),
  (7303, 95, 'of  CEO has the less layers ', 1337.849, 1344.421, NULL),
  (7304, 95, 'are in the  company and so  ', 1340.721, 1346.688, NULL),
  (7305, 95, 'Co  so  I it allows us  to  ', 1342.321, 1349.788, NULL),
  (7306, 95, 'keep  information fluid ', 1344.521, 1350.221, NULL),
  (7307, 95, 'allows us to  make sure that  ', 1346.788, 1350.754, NULL),
  (7308, 95, 'that  everyone is ', 1349.888, 1351.254, NULL),
  (7309, 95, 'empowered by  Make sure ', 1350.321, 1352.288, NULL),
  (7310, 95, 'information make sure ', 1350.854, 1353.788, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (7311, 95, 'Make sure and our company ', 1351.354, 1355.454, NULL),
  (7312, 95, 'that  you know  just  ', 1352.388, 1355.754, NULL),
  (7313, 95, 'performs  better  because ', 1353.888, 1356.254, NULL),
  (7314, 95, 'you know, ', 1355.554, 1356.721, NULL),
  (7315, 95, 'everybody is aligned  ', 1355.854, 1357.288, NULL),
  (7316, 95, 'you know  you know, ', 1356.354, 1358.588, NULL),
  (7317, 95, 'everybody''s informed  of  ', 1356.821, 1359.221, NULL),
  (7318, 95, 'what''s  going on. I ', 1357.388, 1360.521, NULL),
  (7319, 95, 'want to open up to questions  ', 1358.688, 1361.521, NULL),
  (7320, 95, 'in  just  a moment. So, ', 1359.321, 1363.521, NULL),
  (7321, 95, 'please  do  raise your  ', 1360.621, 1364.921, NULL),
  (7322, 95, 'hand so I can find you  but I ', 1361.621, 1365.654, NULL),
  (7323, 95, 'want to ask you this  you did ', 1363.621, 1366.821, NULL),
  (7324, 95, 'a podcast recently  find you, ', 1365.021, 1367.621, NULL),
  (7325, 95, 'find you  and there ', 1365.754, 1370.621, NULL),
  (7326, 95, 'are a lot of  headlines about ', 1366.921, 1371.521, NULL),
  (7327, 95, 'it. And you said  during  the ', 1367.721, 1372.921, NULL),
  (7328, 95, 'podcast if  you could do  it  ', 1370.721, 1374.121, NULL),
  (7329, 95, 'all over  again,  like  if  ', 1371.621, 1374.554, NULL),
  (7330, 95, 'you could start ', 1373.021, 1376.588, NULL),
  (7331, 95, 'inventing again,  ', 1374.221, 1381.121, NULL),
  (7332, 95, 'invading again, yeah, you ', 1374.654, 1383.021, NULL),
  (7333, 95, 'wouldn''t. No, what  do you  ', 1376.688, 1383.854, NULL),
  (7334, 95, 'what did  you mean? Why ', 1381.221, 1385.054, NULL),
  (7335, 95, 'I mean  you''ve done this  ', 1383.121, 1386.521, NULL),
  (7336, 95, 'amazing thing?  Yeah, you''re  ', 1383.954, 1387.521, NULL),
  (7337, 95, 'worth forty billion dollars ', 1385.154, 1390.054, NULL),
  (7338, 95, 'personally. That  wasn''t what ', 1386.621, 1391.054, NULL),
  (7339, 95, 'I meant.  First of all, ', 1387.621, 1392.654, NULL),
  (7340, 95, 'you know, I think it  would ', 1390.154, 1395.854, NULL),
  (7341, 95, 'be  disingenuous. If  I said  ', 1391.154, 1400.788, NULL),
  (7342, 95, 'that  that  it  wasn''t  quote ', 1392.754, 1401.688, NULL),
  (7343, 95, 'worth it. I enjoy a lot of  ', 1395.954, 1403.288, NULL),
  (7344, 95, 'good  things  in  life. I''ve  ', 1400.888, 1405.621, NULL),
  (7345, 95, 'got a great family. We  built ', 1401.788, 1407.088, NULL),
  (7346, 95, 'a great company.  All of  ', 1403.754, 1408.488, NULL),
  (7347, 95, 'that  is  worth it. That  ', 1405.721, 1410.921, NULL),
  (7348, 95, 'wasn''t  what  I meant.  What  ', 1407.188, 1412.121, NULL),
  (7349, 95, 'I meant was if  people  ', 1408.588, 1414.088, NULL),
  (7350, 95, 'realized  how hard  something ', 1411.021, 1415.388, NULL),
  (7351, 95, 'is  and if  I were to ', 1412.221, 1416.288, NULL),
  (7352, 95, 'realize how hard it was how ', 1414.188, 1418.221, NULL),
  (7353, 95, 'many  times we''re going to  ', 1415.488, 1419.588, NULL),
  (7354, 95, 'fail  how the original  ', 1416.388, 1422.554, NULL),
  (7355, 95, 'business  plan  had no, hope  ', 1418.321, 1423.454, NULL),
  (7356, 95, 'of  succeeding. that  that  ', 1419.688, 1424.388, NULL),
  (7357, 95, 'That  that  almost  the That  ', 1422.654, 1427.421, NULL),
  (7358, 95, 'early Founders  that  we  ', 1423.554, 1429.337, NULL),
  (7359, 95, 'built the whole company with  ', 1424.488, 1429.937, NULL),
  (7360, 95, 'we  had to  completely  ', 1427.521, 1431.737, NULL),
  (7361, 95, 'relearn just  about ', 1429.437, 1432.470, NULL),
  (7362, 95, 'everything. We  had to  know  ', 1430.037, 1433.070, NULL),
  (7363, 95, 'if  I would have  known we  ', 1431.837, 1433.670, NULL),
  (7364, 95, 'everything  all of  the ', 1432.570, 1434.970, NULL),
  (7365, 95, 'things that We  everything. ', 1433.170, 1437.537, NULL),
  (7366, 95, 'we  everything  I had to  ', 1433.770, 1438.170, NULL),
  (7367, 95, 'know  in order  to be a CEO ', 1435.070, 1439.070, NULL),
  (7368, 95, 'everything  that  we  had ', 1437.637, 1440.737, NULL),
  (7369, 95, 'to solve  in  order to  be  ', 1438.270, 1443.770, NULL),
  (7370, 95, 'where we are  that  mountain  ', 1439.170, 1444.804, NULL),
  (7371, 95, 'of  work  that  melon of  ', 1440.837, 1446.570, NULL),
  (7372, 95, 'you know  challenges  ', 1443.870, 1448.537, NULL),
  (7373, 95, 'you know, the mountain  of  ', 1444.904, 1449.570, NULL),
  (7374, 95, 'adversity and setback and ', 1446.670, 1451.437, NULL),
  (7375, 95, 'some amount of  humiliation ', 1448.637, 1452.037, NULL),
  (7376, 95, 'and a lot of  embarrassment.  ', 1449.670, 1452.804, NULL),
  (7377, 95, 'If you want if you want to  ', 1451.537, 1454.537, NULL),
  (7378, 95, 'If you want mount piled all ', 1452.137, 1456.537, NULL),
  (7379, 95, 'if you want of  that  on  in  ', 1452.904, 1458.337, NULL),
  (7380, 95, '1993  in  you know  on the  ', 1454.637, 1458.970, NULL),
  (7381, 95, 'table of  a 29  year  old,  I ', 1456.637, 1460.649, NULL),
  (7382, 95, 'don''t think I would have  ', 1458.437, 1461.649, NULL),
  (7383, 95, 'done  it. I would you know, I ', 1459.070, 1462.349, NULL),
  (7384, 95, 'would have  said  there''s ', 1460.749, 1463.316, NULL),
  (7385, 95, 'no way  I would know  all ', 1461.749, 1464.182, NULL),
  (7386, 95, 'this. There''s no  way I could ', 1462.449, 1465.282, NULL),
  (7387, 95, 'learn all this. There''s no  ', 1463.416, 1466.282, NULL),
  (7388, 95, 'way we can  overcome  all ', 1464.282, 1467.416, NULL),
  (7389, 95, 'this. There''s no  way ', 1465.382, 1468.182, NULL),
  (7390, 95, 'you know, this  is  a game  ', 1466.382, 1469.716, NULL),
  (7391, 95, 'plan  that  that''s not  ', 1467.516, 1472.116, NULL),
  (7392, 95, 'going to  work. And so  ', 1468.282, 1473.316, NULL),
  (7393, 95, 'that''s  what  I meant that  ', 1469.816, 1475.816, NULL),
  (7394, 95, 'I think I think the ignorance ', 1472.216, 1477.416, NULL),
  (7395, 95, 'of  enterpreneurs this  ', 1473.416, 1478.516, NULL),
  (7396, 95, 'attitude  that  and I try to  ', 1475.916, 1483.316, NULL),
  (7397, 95, 'do  to keep that  today,  ', 1477.516, 1483.816, NULL),
  (7398, 95, 'which is  ask yourself. ', 1478.616, 1484.349, NULL),
  (7399, 95, 'How hard  could it be ', 1483.416, 1484.949, NULL),
  (7400, 95, 'you know you  approach  ', 1483.916, 1485.582, NULL),
  (7401, 95, 'life with this attitude of  ', 1484.449, 1486.716, NULL),
  (7402, 95, 'how hard  could it  be  they  ', 1485.049, 1488.316, NULL),
  (7403, 95, 'could do  it  I could do  it  ', 1485.682, 1490.418, NULL),
  (7404, 95, 'that  attitude  is  ', 1486.816, 1492.118, NULL),
  (7405, 95, 'completely  helpful,  ', 1488.416, 1494.352, NULL),
  (7406, 95, 'but it''s  also  completely  ', 1490.518, 1496.152, NULL),
  (7407, 95, 'wrong.  It''s  very  helpful ', 1492.218, 1497.718, NULL),
  (7408, 95, 'because it  gives you courage ', 1494.452, 1498.918, NULL),
  (7409, 95, 'but it''s  wrong because it  ', 1496.252, 1502.252, NULL),
  (7410, 95, 'is  way harder  than  you ', 1497.818, 1503.452, NULL),
  (7411, 95, 'think.  Yes,  and and the ', 1499.018, 1504.085, NULL),
  (7412, 95, 'amount of skill that  is  ', 1502.352, 1505.318, NULL),
  (7413, 95, 'necessary to  amount  of  ', 1503.552, 1507.152, NULL),
  (7414, 95, 'knowledge as a  sentence  ', 1504.185, 1510.652, NULL),
  (7415, 95, 'that''s  necessary.  You know, ', 1505.418, 1512.385, NULL),
  (7416, 95, 'I think it''s  one of  those ', 1507.252, 1513.952, NULL),
  (7417, 95, 'teenager  attitudes and and I ', 1510.752, 1515.252, NULL),
  (7418, 95, 'think I think we  I try to  ', 1512.485, 1516.785, NULL),
  (7419, 95, 'keep  that  in  the company ', 1514.052, 1519.352, NULL),
  (7420, 95, 'that  teenage attitude  how ', 1515.352, 1521.204, NULL),
  (7421, 95, 'hard  can something can scan  ', 1516.885, 1522.037, NULL),
  (7422, 95, 'something be, you know  ', 1519.452, 1524.070, NULL),
  (7423, 95, 'gives you courage gives you ', 1521.304, 1524.870, NULL),
  (7424, 95, 'confidence. Let''s I too seek  ', 1522.137, 1527.170, NULL),
  (7425, 95, 'in one  question  or  two if  ', 1524.170, 1528.037, NULL),
  (7426, 95, 'we  could I know  I Ron ', 1524.970, 1529.337, NULL),
  (7427, 95, 'Conway  had a question  last  ', 1527.270, 1530.470, NULL),
  (7428, 95, 'time  for at a  different ', 1528.137, 1531.270, NULL),
  (7429, 95, 'moment. I know  if  he''s  ', 1529.437, 1532.670, NULL),
  (7430, 95, 'still in the  room. I felt  ', 1530.570, 1534.370, NULL),
  (7431, 95, 'like  I should  give him  ', 1531.370, 1535.570, NULL),
  (7432, 95, 'an opportunity  but I see ', 1532.770, 1540.170, NULL),
  (7433, 95, 'Gary  Lauder  there.  Hey,  ', 1534.470, 1542.604, NULL),
  (7434, 95, 'Gary. So  so  there are So  ', 1535.670, 1543.770, NULL),
  (7435, 95, 'a lot of  startups  so  and ', 1540.270, 1546.870, NULL),
  (7436, 95, 'not some non  startups  doing ', 1542.704, 1548.670, NULL),
  (7437, 95, 'AI  chips optimized for LMS.  ', 1543.870, 1550.004, NULL),
  (7438, 95, 'Can you talk  about and they  ', 1546.970, 1551.577, NULL),
  (7439, 95, 'claim to  be  dramatically  ', 1548.770, 1553.477, NULL),
  (7440, 95, 'more  effective at energy ', 1550.104, 1554.910, NULL),
  (7441, 95, 'efficient than  now gpus. Can ', 1551.677, 1555.477, NULL),
  (7442, 95, 'you talk  about what  ', 1553.577, 1558.177, NULL),
  (7443, 95, 'you''re planning ', 1555.010, 1559.977, NULL),
  (7444, 95, 'on these roads? Yeah. First ', 1555.577, 1561.010, NULL),
  (7445, 95, 'of all, this  is  one of  the ', 1558.277, 1563.210, NULL),
  (7446, 95, 'great observations  that  we  ', 1560.077, 1565.377, NULL),
  (7447, 95, 'made  in a  we  realized that ', 1561.110, 1567.210, NULL),
  (7448, 95, 'that  deep  learning  and AI  ', 1563.310, 1569.144, NULL),
  (7449, 95, 'wasn''t  was not a chip  ', 1565.477, 1571.844, NULL),
  (7450, 95, 'problem.  It''s  a reinvention ', 1567.310, 1572.744, NULL),
  (7451, 95, 'of  shooting problem  ', 1569.244, 1574.644, NULL),
  (7452, 95, 'everything  from  how the ', 1571.944, 1575.277, NULL),
  (7453, 95, 'computer works  how ', 1572.844, 1576.444, NULL),
  (7454, 95, 'computer software Everything  ', 1574.744, 1577.377, NULL),
  (7455, 95, 'everything  works the type of ', 1575.377, 1578.577, NULL),
  (7456, 95, 'software  that  ', 1576.544, 1580.544, NULL),
  (7457, 95, 'was going to write  the way ', 1577.477, 1582.094, NULL),
  (7458, 95, 'that  we  write it  the way ', 1578.677, 1585.794, NULL),
  (7459, 95, 'we  develop software  today ', 1580.644, 1587.294, NULL),
  (7460, 95, 'using AI  creating  a i that  ', 1582.194, 1588.194, NULL),
  (7461, 95, 'method of software  is  ', 1585.894, 1589.794, NULL),
  (7462, 95, 'fundamentally different than  ', 1587.394, 1591.194, NULL),
  (7463, 95, 'the way we  did it  before. ', 1588.294, 1592.794, NULL),
  (7464, 95, 'So  every aspect of computing ', 1589.894, 1593.794, NULL),
  (7465, 95, 'is  is  changed.  And in  ', 1591.294, 1595.594, NULL),
  (7466, 95, 'fact, one of  the things  ', 1592.894, 1597.194, NULL),
  (7467, 95, 'that  people don''t realize  ', 1593.894, 1598.928, NULL),
  (7468, 95, 'is  the vast  majority  of  ', 1595.694, 1600.428, NULL),
  (7469, 95, 'computing today.  today is  a ', 1597.294, 1603.428, NULL),
  (7470, 95, 'retrieval model meaning just  ', 1599.028, 1604.061, NULL),
  (7471, 95, 'all you have to ask Self what ', 1600.528, 1604.461, NULL),
  (7472, 95, 'happens when  you touch your  ', 1603.528, 1604.994, NULL),
  (7473, 95, 'phone self what ', 1604.161, 1605.528, NULL),
  (7474, 95, 'someone like, you know, ', 1604.561, 1606.494, NULL),
  (7475, 95, 'Self what there''s some  ', 1605.094, 1607.894, NULL),
  (7476, 95, 'electrons go  to a  data  ', 1605.628, 1608.694, NULL),
  (7477, 95, 'center  somewhere retrieves ', 1606.594, 1611.028, NULL),
  (7478, 95, 'the file  and brings it back  ', 1607.994, 1612.306, NULL),
  (7479, 95, 'to  you in the  future. The ', 1608.794, 1613.940, NULL),
  (7480, 95, 'vast  majority  of  computing ', 1611.128, 1616.440, NULL),
  (7481, 95, 'is  going to  be  retrieval ', 1612.406, 1617.940, NULL),
  (7482, 95, 'plus  generation. And so  the ', 1614.040, 1619.873, NULL),
  (7483, 95, 'way that  Computing is  done  ', 1616.540, 1620.940, NULL),
  (7484, 95, 'is  fundamentally changed ', 1618.040, 1622.140, NULL),
  (7485, 95, 'now,  we  have we observe ', 1619.973, 1623.340, NULL),
  (7486, 95, 'that  and realize that  about ', 1621.040, 1624.273, NULL),
  (7487, 95, 'a decade  and a half  ago.  ', 1622.240, 1624.940, NULL),
  (7488, 95, 'I think a lot of  people  are ', 1623.440, 1626.506, NULL),
  (7489, 95, 'still trying to sort  ', 1624.373, 1629.673, NULL),
  (7490, 95, 'that out. It  is the  ', 1625.040, 1631.173, NULL),
  (7491, 95, 'reason why  you know, people  ', 1626.606, 1631.773, NULL),
  (7492, 95, 'say,  oh, we''re ', 1629.773, 1632.806, NULL),
  (7493, 95, 'practically the only  P''nay ', 1631.273, 1633.340, NULL),
  (7494, 95, 'doing it. It''s  probably  ', 1631.873, 1635.006, NULL),
  (7495, 95, 'because we''re the only  ', 1632.906, 1635.806, NULL),
  (7496, 95, 'company that  got it  and ', 1633.440, 1637.940, NULL),
  (7497, 95, 'people  are still trying  to  ', 1635.106, 1639.540, NULL),
  (7498, 95, 'get it. You can''t you can''t ', 1635.906, 1640.773, NULL),
  (7499, 95, 'solve this  new way of doing  ', 1638.040, 1642.613, NULL),
  (7500, 95, 'Computing by  just  designing ', 1639.640, 1643.446, NULL),
  (7501, 95, 'a chip  every aspect of the ', 1640.873, 1645.446, NULL),
  (7502, 95, 'computer  has fundamentally ', 1642.713, 1646.446, NULL),
  (7503, 95, 'changed and so  everything  ', 1643.546, 1647.680, NULL),
  (7504, 95, 'from  networking  to  the ', 1645.546, 1648.546, NULL),
  (7505, 95, 'switching to  the way the ', 1646.546, 1650.646, NULL),
  (7506, 95, 'computers are designed  to  ', 1647.780, 1651.446, NULL),
  (7507, 95, 'the chips and self  all of  ', 1648.646, 1652.280, NULL),
  (7508, 95, 'the software  ', 1650.746, 1653.046, NULL),
  (7509, 95, 'that sits on top  of  it  ', 1651.546, 1662.613, NULL),
  (7510, 95, 'in the  methodology that  ', 1652.380, 1663.180, NULL);

INSERT INTO subtitle_segment (id, video_id, text, start_seconds, end_seconds, search_vector) VALUES
  (7511, 95, 'pulls it all  together. It''s  ', 1653.146, 1663.780, NULL),
  (7512, 95, 'It''s a  big deal  because ', 1662.713, 1664.380, NULL),
  (7513, 95, 'it''s a complete reinvention ', 1663.280, 1664.813, NULL),
  (7514, 95, 'of the  computer  industry. ', 1663.880, 1665.346, NULL),
  (7515, 95, 'And now we have a ', 1664.480, 1665.846, NULL),
  (7516, 95, 'trillion dollars  with  ', 1664.913, 1666.413, NULL),
  (7517, 95, 'the data centers  in  ', 1665.446, 1667.013, NULL),
  (7518, 95, 'the world.  All of  that  ', 1665.946, 1667.613, NULL),
  (7519, 95, 'is going to give  retooled. ', 1666.513, 1668.913, NULL),
  (7520, 95, 'That''s the  amazing thing.  ', 1667.113, 1669.713, NULL),
  (7521, 95, 'We''ve got ', 1667.713, 1670.613, NULL),
  (7522, 95, 'we''re in the beginning of a ', 1669.013, 1672.628, NULL),
  (7523, 95, 'brand new generation of ', 1669.813, 1674.828, NULL),
  (7524, 95, 'computing.  It  hasn''t been ', 1670.713, 1676.061, NULL),
  (7525, 95, 'reinvented  in  60 years. ', 1672.728, 1677.294, NULL),
  (7526, 95, 'This  is  the this is why ', 1674.928, 1677.794, NULL),
  (7527, 95, 'such  a big deal  it''s  ', 1676.161, 1679.428, NULL),
  (7528, 95, 'hard for  people  to  ', 1677.394, 1681.128, NULL),
  (7529, 95, 'wrap their  head around it. ', 1677.894, 1682.128, NULL),
  (7530, 95, 'But that''s  that''s  the that  ', 1679.528, 1683.694, NULL),
  (7531, 95, 'was the great observation ', 1681.228, 1685.094, NULL),
  (7532, 95, 'that  we made is it includes  ', 1682.228, 1687.494, NULL),
  (7533, 95, 'a trip, but it''s  not about ', 1683.861, 1688.128, NULL),
  (7534, 95, 'that  ship  Jensen  ', 1685.194, 1688.561, NULL),
  (7535, 95, 'Wong everybody. Thank you ', 1687.594, 1689.194, NULL),
  (7536, 95, 'very  very  much. ', 1688.228, 1689.528, NULL),
  (7537, 95, 'long everybody. ', 1688.661, 1689.528, NULL),
  (7538, 95, 'Thanks everybody', 1689.294, 1689.528, NULL);

-- Reconstruir search_vector con config 'simple'
UPDATE subtitle_segment SET search_vector = to_tsvector('simple', text);

SELECT setval('video_id_seq', (SELECT MAX(id) FROM video));
SELECT setval('subtitle_segment_id_seq', (SELECT MAX(id) FROM subtitle_segment));