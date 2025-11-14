-- STEP 2
-- Question 1
SELECT * FROM WORD_REL;

--Question 2
UPDATE WORD_REL
SET syn_col = 'blithe'
WHERE word = 'insouciant';

SELECT * FROM WORD_REL;

--Question 3
CREATE OR REPLACE VIEW WORD_REL (word, syn_col, ant_col) AS
SELECT s.word_term, s.syn_word, a.ant_word
FROM WORD_SYNONYMS s, WORD_ANTONYMS a
WHERE a.word_id = s.word_id
WITH READ ONLY;

--Question 4
SELECT word, word_length FROM WORD_ANALYSIS;

--Question 5
--Question 6
DROP VIEW WORD_REL;
CREATE OR REPLACE VIEW WORD_REL (word, syn_col, ant_col) AS
SELECT s.word_term, s.syn_word, a.ant_word
FROM WORD_SYNONYMS s, WORD_ANTONYMS a
WHERE a.word_id = s.word_id;

--Question 7 
SELECT * FROM WORD_SUMMARY;

--Question 8 
CREATE OR REPLACE VIEW HOM_MEAN AS
SELECT word_term AS word, meaning
FROM HOMONYMS;

