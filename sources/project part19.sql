--QUESTION 19--
--Trigger trig_emprunt--
CREATE OR REPLACE TRIGGER trig_etat
    AFTER INSERT ON Detailsemprunts FOR EACH ROW
BEGIN
    update_etat(:new.isbn, :new.exemplaire);
END;
/

--Trigger trig_maj--
CREATE OR REPLACE TRIGGER trig_maj
    AFTER INSERT ON Exemplaires FOR EACH ROW
BEGIN
    update_etat(:new.isbn, :new.numero);
END;
/