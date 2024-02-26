INSERT INTO categories (name)
VALUES ('TV Shows'),
       ('Video Games');

INSERT INTO subcategories (category_id, name)
SELECT c.category_id, 'Breaking Bad'
FROM categories c
WHERE c.name = 'TV Shows';

INSERT INTO subcategories (category_id, name)
SELECT c.category_id, 'General TV Shows Questions'
FROM categories c
WHERE c.name = 'TV Shows';

INSERT INTO subcategories (category_id, name)
SELECT c.category_id, 'General Video Games Questions'
FROM categories c
WHERE c.name = 'Video Games';

INSERT INTO subcategories (category_id, name)
SELECT c.category_id, 'Horror'
FROM categories c
WHERE c.name = 'Movies';

-- Movies/Horror Question 1
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'What is the name of the killer in the "Halloween" series?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the name of the killer in the "Halloween" series?'), 'Michael Myers',
        TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the killer in the "Halloween" series?'),
        'Jason Voorhees', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the killer in the "Halloween" series?'), 'Freddy Krueger',
        FALSE);

-- Movies/Horror Question 2
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'In which horror movie does the line "I see dead people" appear?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'In which horror movie does the line "I see dead people" appear?'), 'The Sixth Sense', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'In which horror movie does the line "I see dead people" appear?'), 'The Others', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'In which horror movie does the line "I see dead people" appear?'), 'Stir of Echoes', FALSE);

-- Movies/Horror Question 3
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'What is the main antagonist''s name in "A Nightmare on Elm Street"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the main antagonist''s name in "A Nightmare on Elm Street"?'), 'Freddy Krueger', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the main antagonist''s name in "A Nightmare on Elm Street"?'), 'Michael Myers', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the main antagonist''s name in "A Nightmare on Elm Street"?'), 'Leatherface', FALSE);

-- Movies/Horror Question 4
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'What kind of mask does the killer wear in "Scream"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What kind of mask does the killer wear in "Scream"?'), 'Ghostface', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What kind of mask does the killer wear in "Scream"?'), 'Hockey mask', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What kind of mask does the killer wear in "Scream"?'), 'William Shatner mask', FALSE);

-- Movies/Horror Question 5
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'Which movie features a cursed videotape that kills the viewer seven days after watching it?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which movie features a cursed videotape that kills the viewer seven days after watching it?'), 'The Ring', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which movie features a cursed videotape that kills the viewer seven days after watching it?'), 'The Grudge', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which movie features a cursed videotape that kills the viewer seven days after watching it?'), 'Poltergeist', FALSE);

-- Movies/Horror Question 6
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'What is the name of the hotel in "The Shining"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the name of the hotel in "The Shining"?'), 'The Overlook Hotel', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the hotel in "The Shining"?'), 'The Bates Motel', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the hotel in "The Shining"?'), 'The Dolphin Hotel', FALSE);

-- Movies/Horror Question 7
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'In "Psycho," where does Norman Bates dispose of Marion Crane''s car?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'In "Psycho," where does Norman Bates dispose of Marion Crane''s car?'), 'A swamp', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'In "Psycho," where does Norman Bates dispose of Marion Crane''s car?'), 'A lake', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'In "Psycho," where does Norman Bates dispose of Marion Crane''s car?'), 'An ocean', FALSE);

-- Movies/Horror Question 8
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'What is the name of the doll possessed by a serial killer''s soul in "Child''s Play"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the name of the doll possessed by a serial killer''s soul in "Child''s Play"?'), 'Chucky', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the doll possessed by a serial killer''s soul in "Child''s Play"?'), 'Billy', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the doll possessed by a serial killer''s soul in "Child''s Play"?'), 'Annabelle', FALSE);

-- Movies/Horror Question 9
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'Which horror film is set in the fictional town of Woodsboro?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which horror film is set in the fictional town of Woodsboro?'), 'Scream', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which horror film is set in the fictional town of Woodsboro?'), 'Halloween', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which horror film is set in the fictional town of Woodsboro?'), 'Friday the 13th', FALSE);

-- Movies/Horror Question 10
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'What is the primary setting of "The Texas Chainsaw Massacre"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the primary setting of "The Texas Chainsaw Massacre"?'), 'A rural Texas farmhouse', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the primary setting of "The Texas Chainsaw Massacre"?'), 'An abandoned asylum', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the primary setting of "The Texas Chainsaw Massacre"?'), 'A secluded cabin', FALSE);

-- Movies/Horror Question 11
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'Which movie involves a game that leads to death, introduced by the phrase "Do you want to play a game?"');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which movie involves a game that leads to death, introduced by the phrase "Do you want to play a game?"'), 'Saw', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which movie involves a game that leads to death, introduced by the phrase "Do you want to play a game?"'), 'Cube', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which movie involves a game that leads to death, introduced by the phrase "Do you want to play a game?"'), 'Jumanji', FALSE);

-- Movies/Horror Question 12
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'Who directed "The Exorcist"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Who directed "The Exorcist"?'), 'William Friedkin', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Who directed "The Exorcist"?'), 'Stanley Kubrick', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Who directed "The Exorcist"?'), 'Roman Polanski', FALSE);

-- Movies/Horror Question 13
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'In which movie does the entity known as Pennywise terrorize children?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'In which movie does the entity known as Pennywise terrorize children?'), 'It', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'In which movie does the entity known as Pennywise terrorize children?'), 'The Clown at Midnight', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'In which movie does the entity known as Pennywise terrorize children?'), 'Clownhouse', FALSE);

-- Movies/Horror Question 14
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'What is the profession of Clarice Starling in "The Silence of the Lambs"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the profession of Clarice Starling in "The Silence of the Lambs"?'), 'FBI trainee', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the profession of Clarice Starling in "The Silence of the Lambs"?'), 'Police detective', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the profession of Clarice Starling in "The Silence of the Lambs"?'), 'Journalist', FALSE);

-- Movies/Horror Question 15
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'Which film features a haunted videotape as a central plot element?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which film features a haunted videotape as a central plot element?'), 'Ringu', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which film features a haunted videotape as a central plot element?'), 'Videodrome', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which film features a haunted videotape as a central plot element?'), 'The Video Dead', FALSE);

-- Movies/Horror Question 16
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'What is the main threat in "The Birds"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the main threat in "The Birds"?'), 'Birds attacking humans', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the main threat in "The Birds"?'), 'A virus', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the main threat in "The Birds"?'), 'Alien invasion', FALSE);

-- Movies/Horror Question 17
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'What type of supernatural entity haunts the family in "Poltergeist"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What type of supernatural entity haunts the family in "Poltergeist"?'), 'Ghosts', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What type of supernatural entity haunts the family in "Poltergeist"?'), 'Demons', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What type of supernatural entity haunts the family in "Poltergeist"?'), 'Witches', FALSE);

-- Movies/Horror Question 18
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'What is the name of the ship in the movie "Event Horizon" where the crew experiences a hellish nightmare?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the name of the ship in the movie "Event Horizon" where the crew experiences a hellish nightmare?'), 'Event Horizon', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the ship in the movie "Event Horizon" where the crew experiences a hellish nightmare?'), 'Nostromo', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the ship in the movie "Event Horizon" where the crew experiences a hellish nightmare?'), 'Prometheus', FALSE);

-- Movies/Horror Question 19
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'In "The Blair Witch Project," what do the characters intend to document?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'In "The Blair Witch Project," what do the characters intend to document?'), 'The legend of the Blair Witch', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'In "The Blair Witch Project," what do the characters intend to document?'), 'A haunted mansion', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'In "The Blair Witch Project," what do the characters intend to document?'), 'A possessed doll', FALSE);

-- Movies/Horror Question 20
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Horror'),
        'Which horror movie features a game of survival in a bathroom, where the characters have to make a deadly choice?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which horror movie features a game of survival in a bathroom, where the characters have to make a deadly choice?'), 'Saw', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which horror movie features a game of survival in a bathroom, where the characters have to make a deadly choice?'), 'Cube', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which horror movie features a game of survival in a bathroom, where the characters have to make a deadly choice?'), 'Escape Room', FALSE);

-- TV Shows/General Question 1
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'In "Breaking Bad," what is Walter White''s alias?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'In "Breaking Bad," what is Walter White''s alias?'), 'Heisenberg', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'In "Breaking Bad," what is Walter White''s alias?'), 'Saul Goodman', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'In "Breaking Bad," what is Walter White''s alias?'), 'Gus Fring', FALSE);

-- TV Shows/General Question 2
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'What is the name of the fictional town in "Stranger Things"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the name of the fictional town in "Stranger Things"?'), 'Hawkins', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the fictional town in "Stranger Things"?'), 'Haddonfield', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the fictional town in "Stranger Things"?'), 'Sunnydale', FALSE);

-- TV Shows/General Question 3
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'Who does Jon Snow pledge his loyalty to in "Game of Thrones"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Who does Jon Snow pledge his loyalty to in "Game of Thrones"?'), 'Daenerys Targaryen', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Who does Jon Snow pledge his loyalty to in "Game of Thrones"?'), 'Cersei Lannister', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Who does Jon Snow pledge his loyalty to in "Game of Thrones"?'), 'Sansa Stark', FALSE);

-- TV Shows/General Question 4
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'Which TV show features the characters Leonard, Sheldon, Penny, and Howard?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which TV show features the characters Leonard, Sheldon, Penny, and Howard?'), 'The Big Bang Theory', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which TV show features the characters Leonard, Sheldon, Penny, and Howard?'), 'Friends', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which TV show features the characters Leonard, Sheldon, Penny, and Howard?'), 'How I Met Your Mother', FALSE);

-- TV Shows/General Question 5
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'In "The Office," who replaces Michael Scott as regional manager of Dunder Mifflin''s Scranton branch?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'In "The Office," who replaces Michael Scott as regional manager of Dunder Mifflin''s Scranton branch?'), 'Andy Bernard', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'In "The Office," who replaces Michael Scott as regional manager of Dunder Mifflin''s Scranton branch?'), 'Jim Halpert', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'In "The Office," who replaces Michael Scott as regional manager of Dunder Mifflin''s Scranton branch?'), 'Dwight Schrute', FALSE);

-- TV Shows/General Question 6
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'What is the name of the parallel universe in "Fringe"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the name of the parallel universe in "Fringe"?'), 'The Alternate Universe', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the parallel universe in "Fringe"?'), 'The Upside Down', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the parallel universe in "Fringe"?'), 'The Mirror Universe', FALSE);

-- TV Shows/General Question 7
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'In "Friends," how many times did Ross get divorced?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'In "Friends," how many times did Ross get divorced?'), '3', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'In "Friends," how many times did Ross get divorced?'), '2', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'In "Friends," how many times did Ross get divorced?'), '4', FALSE);

-- TV Shows/General Question 8
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'Who is the creator of the TV series "Breaking Bad"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Who is the creator of the TV series "Breaking Bad"?'), 'Vince Gilligan', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Who is the creator of the TV series "Breaking Bad"?'), 'David Chase', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Who is the creator of the TV series "Breaking Bad"?'), 'Matthew Weiner', FALSE);

-- TV Shows/General Question 9
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'In "Game of Thrones," who is known as "The King in the North"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'In "Game of Thrones," who is known as "The King in the North"?'), 'Robb Stark', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'In "Game of Thrones," who is known as "The King in the North"?'), 'Jon Snow', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'In "Game of Thrones," who is known as "The King in the North"?'), 'Eddard Stark', FALSE);

-- TV Shows/General Question 10
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'Which character in "Stranger Things" is famous for saying, "Friends don''t lie"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which character in "Stranger Things" is famous for saying, "Friends don''t lie"?'), 'Eleven', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which character in "Stranger Things" is famous for saying, "Friends don''t lie"?'), 'Mike', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which character in "Stranger Things" is famous for saying, "Friends don''t lie"?'), 'Dustin', FALSE);

-- TV Shows/General Question 11
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'What is the real name of the character "Red" in "Orange Is the New Black"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the real name of the character "Red" in "Orange Is the New Black"?'), 'Galina Reznikov', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the real name of the character "Red" in "Orange Is the New Black"?'), 'Piper Chapman', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the real name of the character "Red" in "Orange Is the New Black"?'), 'Suzanne Warren', FALSE);

-- TV Shows/General Question 12
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'In "Sherlock," who plays the role of Sherlock Holmes?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'In "Sherlock," who plays the role of Sherlock Holmes?'), 'Benedict Cumberbatch', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'In "Sherlock," who plays the role of Sherlock Holmes?'), 'Martin Freeman', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'In "Sherlock," who plays the role of Sherlock Holmes?'), 'Robert Downey Jr.', FALSE);

-- TV Shows/General Question 13
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'Which TV show features a high school chemistry teacher turned meth producer?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which TV show features a high school chemistry teacher turned meth producer?'), 'Breaking Bad', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which TV show features a high school chemistry teacher turned meth producer?'), 'Weeds', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which TV show features a high school chemistry teacher turned meth producer?'), 'Narcos', FALSE);

-- TV Shows/General Question 14
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'In "The Walking Dead," what is the name of Rick Grimes'' son?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'In "The Walking Dead," what is the name of Rick Grimes'' son?'), 'Carl', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'In "The Walking Dead," what is the name of Rick Grimes'' son?'), 'Shane', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'In "The Walking Dead," what is the name of Rick Grimes'' son?'), 'Daryl', FALSE);

-- TV Shows/General Question 15
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'Which TV series is known for the fictional character Sheldon Cooper?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which TV series is known for the fictional character Sheldon Cooper?'), 'The Big Bang Theory', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which TV series is known for the fictional character Sheldon Cooper?'), 'Friends', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which TV series is known for the fictional character Sheldon Cooper?'), 'How I Met Your Mother', FALSE);

-- TV Shows/General Question 16
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'What is the main setting of the TV show "Friends"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the main setting of the TV show "Friends"?'), 'New York City', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the main setting of the TV show "Friends"?'), 'Los Angeles', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the main setting of the TV show "Friends"?'), 'Chicago', FALSE);

-- TV Shows/General Question 17
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'In "Game of Thrones," who is Jon Snow''s real mother?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'In "Game of Thrones," who is Jon Snow''s real mother?'), 'Lyanna Stark', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'In "Game of Thrones," who is Jon Snow''s real mother?'), 'Catelyn Stark', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'In "Game of Thrones," who is Jon Snow''s real mother?'), 'Cersei Lannister', FALSE);

-- TV Shows/General Question 18
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'Which character in "The Office" is known for his pranks on Dwight?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which character in "The Office" is known for his pranks on Dwight?'), 'Jim Halpert', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which character in "The Office" is known for his pranks on Dwight?'), 'Michael Scott', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which character in "The Office" is known for his pranks on Dwight?'), 'Pam Beesly', FALSE);

-- TV Shows/General Question 19
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'In "Stranger Things," what is the name of the parallel dimension?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'In "Stranger Things," what is the name of the parallel dimension?'), 'The Upside Down', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'In "Stranger Things," what is the name of the parallel dimension?'), 'The Other Side', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'In "Stranger Things," what is the name of the parallel dimension?'), 'The Shadow Realm', FALSE);

-- TV Shows/General Question 20
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General TV Shows Questions'),
        'In "The Office" (US), what is the name of the paper company where the characters work?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'In "The Office" (US), what is the name of the paper company where the characters work?'), 'Dunder Mifflin', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'In "The Office" (US), what is the name of the paper company where the characters work?'), 'Wernham Hogg', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'In "The Office" (US), what is the name of the paper company where the characters work?'), 'Pendleton Paper', FALSE);

-- TV Shows/Breaking Bad Question 1
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'Who created "Breaking Bad"?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Who created "Breaking Bad"?'), 'Vince Gilligan', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Who created "Breaking Bad"?'), 'David Chase', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Who created "Breaking Bad"?'), 'Matthew Weiner', FALSE);

-- TV Shows/Breaking Bad Question 2
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'What is Walter White''s profession at the beginning of the series?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is Walter White''s profession at the beginning of the series?'), 'High school chemistry teacher', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is Walter White''s profession at the beginning of the series?'), 'College physics professor', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is Walter White''s profession at the beginning of the series?'), 'Car wash attendant', FALSE);

-- TV Shows/Breaking Bad Question 3
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'What alias does Walter White use for his drug lord persona?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What alias does Walter White use for his drug lord persona?'), 'Heisenberg', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What alias does Walter White use for his drug lord persona?'), 'Capone', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What alias does Walter White use for his drug lord persona?'), 'Scarface', FALSE);

-- TV Shows/Breaking Bad Question 4
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'Who is Walter White''s former student and business partner?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Who is Walter White''s former student and business partner?'), 'Jesse Pinkman', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Who is Walter White''s former student and business partner?'), 'Todd Alquist', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Who is Walter White''s former student and business partner?'), 'Steve Gomez', FALSE);

-- TV Shows/Breaking Bad Question 5
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'What type of cancer is Walter White diagnosed with?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What type of cancer is Walter White diagnosed with?'), 'Lung cancer', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What type of cancer is Walter White diagnosed with?'), 'Prostate cancer', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What type of cancer is Walter White diagnosed with?'), 'Brain cancer', FALSE);

-- TV Shows/Breaking Bad Question 6
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'Which character is a DEA agent and Walter White''s brother-in-law?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which character is a DEA agent and Walter White''s brother-in-law?'), 'Hank Schrader', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which character is a DEA agent and Walter White''s brother-in-law?'), 'Mike Ehrmantraut', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which character is a DEA agent and Walter White''s brother-in-law?'), 'Gus Fring', FALSE);

-- TV Shows/Breaking Bad Question 7
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'What is the name of the fast-food chain owned by Gustavo Fring?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the name of the fast-food chain owned by Gustavo Fring?'), 'Los Pollos Hermanos', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the fast-food chain owned by Gustavo Fring?'), 'El Pollo Loco', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the fast-food chain owned by Gustavo Fring?'), 'Madrigal Electromotive', FALSE);

-- TV Shows/Breaking Bad Question 8
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'What color is the methamphetamine that Walter White and Jesse Pinkman produce?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What color is the methamphetamine that Walter White and Jesse Pinkman produce?'), 'Blue', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What color is the methamphetamine that Walter White and Jesse Pinkman produce?'), 'Red', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What color is the methamphetamine that Walter White and Jesse Pinkman produce?'), 'Green', FALSE);

-- TV Shows/Breaking Bad Question 9
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'Who is Saul Goodman''s real name?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Who is Saul Goodman''s real name?'), 'James McGill', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Who is Saul Goodman''s real name?'), 'Howard Hamlin', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Who is Saul Goodman''s real name?'), 'Chuck McGill', FALSE);

-- TV Shows/Breaking Bad Question 10
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'Which character is Walter White''s wife?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which character is Walter White''s wife?'), 'Skyler White', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which character is Walter White''s wife?'), 'Marie Schrader', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which character is Walter White''s wife?'), 'Lydia Rodarte-Quayle', FALSE);

-- TV Shows/Breaking Bad Question 11
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'What high school does Walter White teach at?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What high school does Walter White teach at?'), 'J.P. Wynne High School', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What high school does Walter White teach at?'), 'McKinley High School', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What high school does Walter White teach at?'), 'East High School', FALSE);

-- TV Shows/Breaking Bad Question 12
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'Who kills Gus Fring?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Who kills Gus Fring?'), 'Walter White', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Who kills Gus Fring?'), 'Hector Salamanca', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Who kills Gus Fring?'), 'Jesse Pinkman', FALSE);

-- TV Shows/Breaking Bad Question 13
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'What is the name of Saul Goodman''s bodyguard?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the name of Saul Goodman''s bodyguard?'), 'Huell Babineaux', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of Saul Goodman''s bodyguard?'), 'Kuby', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of Saul Goodman''s bodyguard?'), 'Tyrus Kitt', FALSE);

-- TV Shows/Breaking Bad Question 14
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'Which character develops a close relationship with Jesse Pinkman and is later killed, prompting a major plot development?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which character develops a close relationship with Jesse Pinkman and is later killed, prompting a major plot development?'), 'Jane Margolis', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which character develops a close relationship with Jesse Pinkman and is later killed, prompting a major plot development?'), 'Andrea Cantillo', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which character develops a close relationship with Jesse Pinkman and is later killed, prompting a major plot development?'), 'Gale Boetticher', FALSE);

-- TV Shows/Breaking Bad Question 15
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'What is the name of the operation Hank Schrader investigates related to blue meth?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the name of the operation Hank Schrader investigates related to blue meth?'), 'Operation Ice Breaker', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the operation Hank Schrader investigates related to blue meth?'), 'Operation Blue Sky', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the operation Hank Schrader investigates related to blue meth?'), 'Operation Crystal Clear', FALSE);

-- TV Shows/Breaking Bad Question 16
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'Which of these substances is used by Walter White to cause an explosion in Tuco Salamanca''s headquarters?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which of these substances is used by Walter White to cause an explosion in Tuco Salamanca''s headquarters?'), 'Fulminated mercury', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which of these substances is used by Walter White to cause an explosion in Tuco Salamanca''s headquarters?'), 'Thermite', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which of these substances is used by Walter White to cause an explosion in Tuco Salamanca''s headquarters?'), 'Ricin', FALSE);

-- TV Shows/Breaking Bad Question 17
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'What does Walter White claim to be selling in his first lie to Skyler about his second cell phone?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What does Walter White claim to be selling in his first lie to Skyler about his second cell phone?'), 'Marijuana', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What does Walter White claim to be selling in his first lie to Skyler about his second cell phone?'), 'Gambling winnings', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What does Walter White claim to be selling in his first lie to Skyler about his second cell phone?'), 'Methamphetamine', FALSE);

-- TV Shows/Breaking Bad Question 18
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'Who is the principal of J.P. Wynne High School?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Who is the principal of J.P. Wynne High School?'), 'Carmen Molina', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Who is the principal of J.P. Wynne High School?'), 'Gretchen Schwartz', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Who is the principal of J.P. Wynne High School?'), 'Donald Margolis', FALSE);

-- TV Shows/Breaking Bad Question 19
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'What vehicle does Walter White drive at the beginning of the series?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What vehicle does Walter White drive at the beginning of the series?'), 'Pontiac Aztek', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What vehicle does Walter White drive at the beginning of the series?'), 'Ford Pinto', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What vehicle does Walter White drive at the beginning of the series?'), 'Chrysler PT Cruiser', FALSE);

-- TV Shows/Breaking Bad Question 20
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Breaking Bad'),
        'What name does Jesse Pinkman use to refer to his group of friends and dealers?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What name does Jesse Pinkman use to refer to his group of friends and dealers?'), 'The Posse', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What name does Jesse Pinkman use to refer to his group of friends and dealers?'), 'The Crew', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What name does Jesse Pinkman use to refer to his group of friends and dealers?'), 'The Circle', FALSE);

-- Video Games/General Video Games Question 1
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'),
        'What is the best-selling video game of all time?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the best-selling video game of all time?'), 'Minecraft', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the best-selling video game of all time?'), 'Grand Theft Auto V', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the best-selling video game of all time?'), 'Tetris', FALSE);

-- Video Games/General Video Games Question 2
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'),
        'Which game is credited with popularizing the battle royale genre?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which game is credited with popularizing the battle royale genre?'), 'PlayerUnknown''s Battlegrounds (PUBG)', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which game is credited with popularizing the battle royale genre?'), 'Fortnite', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which game is credited with popularizing the battle royale genre?'), 'Apex Legends', FALSE);

-- Video Games/General Video Games Question 3
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'),
        'What is the primary objective in "The Sims" series?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the primary objective in "The Sims" series?'), 'Building and managing a virtual life', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the primary objective in "The Sims" series?'), 'Completing quests and fighting monsters', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the primary objective in "The Sims" series?'), 'Racing against opponents', FALSE);

-- Video Games/General Video Games Question 4
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'),
        'Which console was the first to use optical discs as its primary storage medium?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which console was the first to use optical discs as its primary storage medium?'), 'PlayStation', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which console was the first to use optical discs as its primary storage medium?'), 'Sega Genesis', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which console was the first to use optical discs as its primary storage medium?'), 'Nintendo 64', FALSE);

-- Video Games/General Video Games Question 5
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'),
        'Which game is set in the fictional city of Rapture?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which game is set in the fictional city of Rapture?'), 'BioShock', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which game is set in the fictional city of Rapture?'), 'Dishonored', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which game is set in the fictional city of Rapture?'), 'Fallout', FALSE);

-- Video Games/General Video Games Question 6
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'),
        'What is the fictional virus in the "Resident Evil" series?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the fictional virus in the "Resident Evil" series?'), 'T-Virus', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the fictional virus in the "Resident Evil" series?'), 'C-Virus', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the fictional virus in the "Resident Evil" series?'), 'G-Virus', FALSE);

-- Video Games/General Video Games Question 7
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'),
        'What is the fictional continent where "The Elder Scrolls V: Skyrim" is set?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the fictional continent where "The Elder Scrolls V: Skyrim" is set?'), 'Tamriel', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the fictional continent where "The Elder Scrolls V: Skyrim" is set?'), 'Azeroth', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the fictional continent where "The Elder Scrolls V: Skyrim" is set?'), 'Middle-earth', FALSE);

-- Video Games/General Video Games Question 8
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'),
        'Which of these games is known for its high difficulty and the tagline "Prepare to Die"?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which of these games is known for its high difficulty and the tagline "Prepare to Die"?'), 'Dark Souls', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which of these games is known for its high difficulty and the tagline "Prepare to Die"?'), 'Bloodborne', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which of these games is known for its high difficulty and the tagline "Prepare to Die"?'), 'Sekiro: Shadows Die Twice', FALSE);

-- Video Games/General Video Games Question 9
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'),
        'What is the name of the digital storefront for PC games developed by Valve Corporation?');
INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the name of the digital storefront for PC games developed by Valve Corporation?'), 'Steam', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the digital storefront for PC games developed by Valve Corporation?'), 'Epic Games Store', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the digital storefront for PC games developed by Valve Corporation?'), 'Origin', FALSE);

-- Video Games/General Video Games Question 10
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'), 'In "The Witcher 3: Wild Hunt," who is the protagonist?');
INSERT INTO answers (question_id, text, is_correct)
VALUES
    ((SELECT question_id FROM questions WHERE text = 'In "The Witcher 3: Wild Hunt," who is the protagonist?'), 'Geralt of Rivia', TRUE),
    ((SELECT question_id FROM questions WHERE text = 'In "The Witcher 3: Wild Hunt," who is the protagonist?'), 'Ciri', FALSE),
    ((SELECT question_id FROM questions WHERE text = 'In "The Witcher 3: Wild Hunt," who is the protagonist?'), 'Dandelion', FALSE);

-- Video Games/General Video Games Question 11
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'), 'Which game is primarily set on the island of Vvardenfell?');
INSERT INTO answers (question_id, text, is_correct)
VALUES
    ((SELECT question_id FROM questions WHERE text = 'Which game is primarily set on the island of Vvardenfell?'), 'The Elder Scrolls III: Morrowind', TRUE),
    ((SELECT question_id FROM questions WHERE text = 'Which game is primarily set on the island of Vvardenfell?'), 'The Elder Scrolls IV: Oblivion', FALSE),
    ((SELECT question_id FROM questions WHERE text = 'Which game is primarily set on the island of Vvardenfell?'), 'The Elder Scrolls V: Skyrim', FALSE);

-- Video Games/General Video Games Question 12
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'), 'Which game first introduced the concept of "bullet time"?');
INSERT INTO answers (question_id, text, is_correct)
VALUES
    ((SELECT question_id FROM questions WHERE text = 'Which game first introduced the concept of "bullet time"?'), 'Max Payne', TRUE),
    ((SELECT question_id FROM questions WHERE text = 'Which game first introduced the concept of "bullet time"?'), 'The Matrix: Path of Neo', FALSE),
    ((SELECT question_id FROM questions WHERE text = 'Which game first introduced the concept of "bullet time"?'), 'Quantum Break', FALSE);

-- Video Games/General Video Games Question 13
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'), 'What is the primary setting of "Assassin''s Creed II"?');
INSERT INTO answers (question_id, text, is_correct)
VALUES
    ((SELECT question_id FROM questions WHERE text = 'What is the primary setting of "Assassin''s Creed II"?'), 'Renaissance Italy', TRUE),
    ((SELECT question_id FROM questions WHERE text = 'What is the primary setting of "Assassin''s Creed II"?'), 'Colonial America', FALSE),
    ((SELECT question_id FROM questions WHERE text = 'What is the primary setting of "Assassin''s Creed II"?'), 'Ancient Egypt', FALSE);

-- Video Games/General Video Games Question 14
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'General Video Games Questions'), 'In which game do players control Joel and Ellie through a post-apocalyptic United States?');
INSERT INTO answers (question_id, text, is_correct)
VALUES
    ((SELECT question_id FROM questions WHERE text = 'In which game do players control Joel and Ellie through a post-apocalyptic United States?'), 'The Last of Us', TRUE),
    ((SELECT question_id FROM questions WHERE text = 'In which game do players control Joel and Ellie through a post-apocalyptic United States?'), 'Days Gone', FALSE),
    ((SELECT question_id FROM questions WHERE text = 'In which game do players control Joel and Ellie through a post-apocalyptic United States?'), 'Fallout 4', FALSE);
