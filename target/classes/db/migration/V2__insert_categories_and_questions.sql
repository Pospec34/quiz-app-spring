INSERT INTO categories (name)
VALUES ('Movies'),
       ('Sports');

INSERT INTO subcategories (category_id, name)
SELECT c.category_id, 'Lord of the Rings'
FROM categories c
WHERE c.name = 'Movies';

INSERT INTO subcategories (category_id, name)
SELECT c.category_id, 'OCR'
FROM categories c
WHERE c.name = 'Sports';

-- LotR Question 1
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Lord of the Rings'),
        'What is the name of the spider in Shelob''s lair?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the name of the spider in Shelob''s lair?'), 'Shelob',
        TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the spider in Shelob''s lair?'),
        'Ungoliant', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of the spider in Shelob''s lair?'), 'Arachne',
        FALSE);

-- LotR Question 2
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Lord of the Rings'),
        'Who forged the One Ring in the fires of Mount Doom?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Who forged the One Ring in the fires of Mount Doom?'),
        'Sauron', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Who forged the One Ring in the fires of Mount Doom?'),
        'Celebrimbor', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Who forged the One Ring in the fires of Mount Doom?'),
        'Melkor', FALSE);

-- LotR Question 3
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Lord of the Rings'),
        'What is the name of the enchanted forest in The Fellowship of the Ring?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id
         FROM questions
         WHERE text = 'What is the name of the enchanted forest in The Fellowship of the Ring?'), 'Lothlórien', TRUE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'What is the name of the enchanted forest in The Fellowship of the Ring?'), 'Fangorn', FALSE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'What is the name of the enchanted forest in The Fellowship of the Ring?'), 'Mirkwood', FALSE);

-- LotR Question 4
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Lord of the Rings'),
        'Which king does Aragorn reveal himself to be in The Return of the King?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id
         FROM questions
         WHERE text = 'Which king does Aragorn reveal himself to be in The Return of the King?'), 'Elessar', TRUE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'Which king does Aragorn reveal himself to be in The Return of the King?'), 'Elendil', FALSE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'Which king does Aragorn reveal himself to be in The Return of the King?'), 'Isildur', FALSE);

-- LotR Question 5
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Lord of the Rings'),
        'What is the name of Boromir and Faramir''s father?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the name of Boromir and Faramir''s father?'),
        'Denethor', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of Boromir and Faramir''s father?'),
        'Théoden', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of Boromir and Faramir''s father?'),
        'Borondir', FALSE);

-- LotR Question 6
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Lord of the Rings'),
        'Who is the master of Rivendell and a member of the White Council?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id
         FROM questions
         WHERE text = 'Who is the master of Rivendell and a member of the White Council?'), 'Elrond', TRUE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'Who is the master of Rivendell and a member of the White Council?'), 'Galadriel', FALSE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'Who is the master of Rivendell and a member of the White Council?'), 'Celeborn', FALSE);

-- LotR Question 7
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Lord of the Rings'), 'What race is Legolas?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What race is Legolas?'), 'Elf', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What race is Legolas?'), 'Dwarf', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What race is Legolas?'), 'Human', FALSE);

-- LotR Question 8
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Lord of the Rings'), 'What is the Eye of Sauron?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the Eye of Sauron?'),
        'A symbol of Sauron''s power and surveillance', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the Eye of Sauron?'), 'Sauron''s pet', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the Eye of Sauron?'), 'A magical artifact', FALSE);

-- LotR Question 9
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Lord of the Rings'), 'What is the name of Frodo''s sword?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the name of Frodo''s sword?'), 'Sting', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of Frodo''s sword?'), 'Andúril', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the name of Frodo''s sword?'), 'Glamdring', FALSE);

-- LotR Question 10
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'Lord of the Rings'), 'Who is the Dark Lord that corrupted Saruman?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Who is the Dark Lord that corrupted Saruman?'), 'Morgoth',
        FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Who is the Dark Lord that corrupted Saruman?'), 'Melkor',
        FALSE), -- Note: Morgoth is another name for Melkor, might need clarification or adjustment based on your quiz logic
       ((SELECT question_id FROM questions WHERE text = 'Who is the Dark Lord that corrupted Saruman?'), 'Sauron',
        TRUE);

-- OCR Question 1
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'OCR'),
        'In Spartan Race, what is the penalty for failing an obstacle?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id
         FROM questions
         WHERE text = 'In Spartan Race, what is the penalty for failing an obstacle?'), '30 burpees', TRUE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'In Spartan Race, what is the penalty for failing an obstacle?'), '50 jumping jacks', FALSE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'In Spartan Race, what is the penalty for failing an obstacle?'), '20 push-ups', FALSE);

-- OCR Question 2
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'OCR'),
        'Which OCR event is known for its "Trifecta" challenge?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which OCR event is known for its "Trifecta" challenge?'),
        'Spartan Race', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which OCR event is known for its "Trifecta" challenge?'),
        'Tough Mudder', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which OCR event is known for its "Trifecta" challenge?'),
        'Warrior Dash', FALSE);

-- OCR Question 3
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'OCR'),
        'What material are Spartan Race Trifecta medals made of?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What material are Spartan Race Trifecta medals made of?'),
        'Metal', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What material are Spartan Race Trifecta medals made of?'),
        'Plastic', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What material are Spartan Race Trifecta medals made of?'),
        'Wood', FALSE);

-- OCR Question 4
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'OCR'),
        'In Tough Mudder, what is the signature obstacle featuring a field of live wires?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id
         FROM questions
         WHERE text = 'In Tough Mudder, what is the signature obstacle featuring a field of live wires?'),
        'Electroshock Therapy', TRUE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'In Tough Mudder, what is the signature obstacle featuring a field of live wires?'),
        'Arctic Enema', FALSE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'In Tough Mudder, what is the signature obstacle featuring a field of live wires?'), 'Mud Mile',
        FALSE);

-- OCR Question 5
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'OCR'),
        'Which OCR event includes obstacles like the "Twister" and "Multi-Rig"?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id
         FROM questions
         WHERE text = 'Which OCR event includes obstacles like the "Twister" and "Multi-Rig"?'), 'Savage Race', TRUE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'Which OCR event includes obstacles like the "Twister" and "Multi-Rig"?'), 'Rugged Maniac',
        FALSE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'Which OCR event includes obstacles like the "Twister" and "Multi-Rig"?'), 'Mud Hero', FALSE);

-- OCR Question 6
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'OCR'),
        'What is the distance of a standard Spartan Race Sprint?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the distance of a standard Spartan Race Sprint?'),
        'Approximately 5 kilometers', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the distance of a standard Spartan Race Sprint?'),
        '10 miles', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the distance of a standard Spartan Race Sprint?'),
        'Half marathon', FALSE);

-- OCR Question 7
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'OCR'),
        'Which OCR series features obstacles designed by British Royal Marines?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id
         FROM questions
         WHERE text = 'Which OCR series features obstacles designed by British Royal Marines?'), 'Toughest', TRUE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'Which OCR series features obstacles designed by British Royal Marines?'), 'Bone Frog Challenge',
        FALSE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'Which OCR series features obstacles designed by British Royal Marines?'), 'Conquer The Gauntlet',
        FALSE);

-- OCR Question 8
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'OCR'),
        'What is the main objective of the OCR World Championships?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'What is the main objective of the OCR World Championships?'),
        'Crown the best OCR athletes in the world', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'What is the main objective of the OCR World Championships?'),
        'Raise money for charity', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'What is the main objective of the OCR World Championships?'),
        'Promote healthy living', FALSE);

-- OCR Question 9
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'OCR'),
        'Which OCR event is known for its "Legionnaire" program?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id FROM questions WHERE text = 'Which OCR event is known for its "Legionnaire" program?'),
        'Tough Mudder', TRUE),
       ((SELECT question_id FROM questions WHERE text = 'Which OCR event is known for its "Legionnaire" program?'),
        'Spartan Race', FALSE),
       ((SELECT question_id FROM questions WHERE text = 'Which OCR event is known for its "Legionnaire" program?'),
        'Rugged Maniac', FALSE);

-- OCR Question 20
INSERT INTO questions (subcategory_id, text)
VALUES ((SELECT subcategory_id FROM subcategories WHERE name = 'OCR'),
        'In which OCR event might you encounter the "Stairway to Sparta" obstacle?');

INSERT INTO answers (question_id, text, is_correct)
VALUES ((SELECT question_id
         FROM questions
         WHERE text = 'In which OCR event might you encounter the "Stairway to Sparta" obstacle?'), 'Spartan Race',
        TRUE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'In which OCR event might you encounter the "Stairway to Sparta" obstacle?'), 'Mudderella',
        FALSE),
       ((SELECT question_id
         FROM questions
         WHERE text = 'In which OCR event might you encounter the "Stairway to Sparta" obstacle?'), 'Rugged Maniac',
        FALSE);
