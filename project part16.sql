--QUESTION 16--
--Créer la fonction--
CREATE OR REPLACE FUNCTION fct_nbOuvNonRendus(membreId IN number) RETURN number IS
    resultat number := 0;
    tempid number;
BEGIN
    FOR elem in (SELECT * FROM Detailsemprunts) LOOP
        SELECT membre INTO tempid FROM Emprunts WHERE numero = elem.emprunt;
        IF membreId = tempid THEN
            IF elem.rendule IS NULL THEN
                resultat := resultat + 1;
            END IF;
        END IF;
    END LOOP;
    return resultat;
END;
/