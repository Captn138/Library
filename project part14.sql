--QUESTION 14--
--Créer la fonction--
CREATE OR REPLACE FUNCTION fct_mesureActivite(periode IN number)RETURN number AS memberId number;
BEGIN
    SELECT (
        SELECT Membre
        FROM (
            SELECT Membre, count(*)
            FROM Emprunts
            WHERE creele >= ADD_MONTHS(sysdate, - periode)
            GROUP BY Membre
            ORDER BY count(*) DESC
        )
        WHERE rownum=1
    )
    INTO memberId FROM dual;
    return memberId;
END;
/