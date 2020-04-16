--QUESTION 17--
--Trigger trig_emprunt--
CREATE OR REPLACE TRIGGER trig_emprunt_validite
    BEFORE INSERT ON Emprunts FOR EACH ROW
DECLARE
    limdate date := fct_finValidite(:new.membre);
BEGIN
    IF limdate < SYSDATE THEN
        raise_application_error(-20003, 'Adhésion du membre expirée');
    END IF;
END;
/

--Tester la trigger--
EXEC proc_empruntExpress(1, 2203314168, 1);