--QUESTION 14--
--Créer la fonction--
CREATE OR REPLACE FUNCTION fct_mesureActivite(startdate IN date, duree IN number) RETURN number IS
    enddate date;
    resultat number;
    createdate date;
    membreId number;
    CURSOR Membres1 IS
        SELECT numero, 0 AS nbEmprunts FROM Membres;
    --Membres2 Membres1%ROWTYPE
BEGIN
    OPEN Membres1;
    enddate := add_months(startdate, duree);
    FOR elem IN (SELECT * FROM Detailsemprunts) LOOP
        SELECT creele INTO createdate FROM Emprunts WHERE numero = elem.emprunt;
        IF createdate > startdate AND createdate <= enddate THEN
            SELECT membre INTO membreId FROM Emprunts WHERE numero = elem.emprunt;
            UPDTAE Membres1
                SET nbEmprunts = nbEmprunts + 1
                WHERE numero = membreId;
        END IF;
    END LOOP;
    SELECT numero INTO resultat FROM Membres1 ORDER BY nbEmprunts DESC WHERE ROWNUM <= 1;
    CLOSE Membres1;
    RETURN resultat;
END;
/


--?????