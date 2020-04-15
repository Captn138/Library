--QUESTION 7--
--Add constraint--
ALTER TABLE Emprunts ADD CONSTRAINT ck_emprunts_etat CHECK(etat IN('EC', 'RE'));