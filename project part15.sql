--QUESTION 15--
--Sequence seq_emprunts--
CREATE SEQUENCE seq_emprunts START WITH 21;

--Créer la procédure--
CREATE OR REPLACE PROCEDURE proc_empruntExpress(membre IN number, isbn IN number, exemplaire IN number) IS
    emprunt_number number := seq_emprunts.NEXTVAL;
BEGIN
    INSERT INTO emprunts VALUES(emprunt_number, membre, SYSDATE);
    INSERT INTO Detailsemprunts VALUES(emprunt_number, '1', isbn, exemplaire, NULL);
END;
/