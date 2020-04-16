--QUESTION 18--
--Trigger trig_modifEmprunt--
CREATE OR REPLACE TRIGGER trig_modifEmprunt
    BEFORE UPDATE ON Emprunts FOR EACH ROW
DECLARE
    oldmemberid number;
BEGIN
    SELECT membre INTO oldmemberid FROM Emprunts WHERE numero = :new.numero;
    IF :new.membre != oldmemberid THEN
        raise_application_error(-20008, 'Changement du membre non autorisée');
    END IF;
END;
/