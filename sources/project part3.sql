--QUESTION 3--
--Drop fk_detailsemprunts1--
ALTER TABLE Detailsemprunts DROP CONSTRAINT fk_detailsemprunts1;

--Add fk_details_emprunts--
ALTER TABLE Detailsemprunts ADD CONSTRAINT fk_details_emprunts FOREIGN KEY(emprunt) REFERENCES Emprunts(numero) ON DELETE CASCADE;