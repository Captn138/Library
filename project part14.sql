--QUESTION 14--
--Créer la fonction--
CREATE OR REPLACE FUNCTION fct_mesureActivite(f_period in number)RETURN number AS memberId number;
BEGIN
    SELECT (
        SELECT Membre FROM (
            SELECT Membre, count() FROM Emprunts
            WHERE creele >= ADD_MONTHS(sysdate, - f_period)
            GROUP BY Membre
            ORDER BY count() DESC)
        WHERE rownum=1)
    INTO memberId FROM dual;
    return memberId;
END;
/