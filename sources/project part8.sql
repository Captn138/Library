--QUESTION 8--
--Créer la procédure--
CREATE OR REPLACE PROCEDURE check_etat_emprunt IS
    resultat number;
BEGIN
    UPDATE Emprunts
        SET etat = 'RE';
    FOR elem IN (SELECT * FROM Emprunts) LOOP
        SELECT count(*) INTO resultat FROM Detailsemprunts WHERE emprunt = elem.numero;
        IF resultat != 0 THEN
            FOR elem2 IN (SELECT * FROM Detailsemprunts WHERE emprunt = elem.numero) LOOP
                IF elem2.rendule IS NULL THEN
                    UPDATE Emprunts
                        SET etat = 'EC'
                        WHERE numero = elem.numero;
                END IF;
            END LOOP;
        END IF;
    END LOOP;
END;
/

--Exécuter la procédure--
EXEC check_etat_emprunt;