--QUESTION 12--
--Add Column--
ALTER TABLE Membres ADD(finAdhesion date AS (ADD_MONTHS(adhesion,duree)));