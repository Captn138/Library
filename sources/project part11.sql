--QUESTION 11--
--Procedure update_etat--
CREATE OR REPLACE PROCEDURE update_etat(isbn1 IN number, exemplaire1 IN number) IS
    resultat number;
BEGIN
    SELECT count(*) INTO resultat FROM Detailsemprunts WHERE isbn = isbn1 AND exemplaire = exemplaire1;
    IF resultat <= 10 THEN
        UPDATE Exemplaires
            SET etat = 'NE'
            WHERE isbn = isbn1 AND numero = exemplaire1;
    ELSIF resultat <= 25 THEN
        UPDATE Exemplaires
            SET etat = 'BO'
            WHERE isbn = isbn1 AND numero = exemplaire1;
    ELSIF resultat <= 40 THEN
        UPDATE Exemplaires
            SET etat = 'MO'
            WHERE isbn = isbn1 AND numero = exemplaire1;
    ELSE
        UPDATE Exemplaires
            SET etat = 'MA'
            WHERE isbn = isbn1 AND numero = exemplaire1;
    END IF;
END;
/

--Update tous les Exemplaires--
BEGIN
FOR elem IN (SELECT * FROM Detailsemprunts) LOOP
    update_etat(elem.isbn, elem.exemplaire);
END LOOP;
END;
/