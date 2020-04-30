--QUESTION 2--
--Sequence seq_membres--
CREATE SEQUENCE seq_membres START WITH 1;

--Trigger trig_membres--
CREATE OR REPLACE TRIGGER trig_membres
    BEFORE INSERT ON Membres FOR EACH ROW
BEGIN
    SELECT seq_membres.nextval INTO :new.numero FROM dual;
EXCEPTION
    WHEN OTHERS THEN
        NULL;
END;
/