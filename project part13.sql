--QUESTION 13--
--Créer la fonction--
CREATE OR REPLACE FUNCTION fct_finValidite(membreId IN number) RETURN date IS
    limdate date;
BEGIN
    SELECT finAdhesion INTO limdate FROM Membres WHERE numero = membreId;
    RETURN limdate-14;
END;
/

--Exécuter la fonction--
SELECT fct_finValidite(1) FROM dual;