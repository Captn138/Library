--QUESTION 4--
--Genres--
insert into genres values ('REC', 'Récit');
insert into genres values ('POL', 'Policier');
insert into genres values ('BD', 'Bande-dessiné');
insert into genres values ('INF', 'Informatique');
insert into genres values ('THE', 'Théâtre');
insert into genres values ('ROM', 'Roman');

--Ouvrages--
insert into ouvrages values ('2203314168', 'LEFRANC-L''ultimatum', 'Martin, Carin', 'BD', 'Casterman');
insert into ouvrages values ('2746021285', 'HTML entraînez vous pour maîtriser le code source', 'Luc Van Lancker', 'INF', 'ENI');
insert into ouvrages values ('2746026090', 'Oracle 12c SQL, PL/SQL, SQL* Plus', 'J. Gabillaud', 'INF', 'ENI');
insert into ouvrages values ('2266085816', 'Pantagruel', 'François RABELAIS', 'ROM', 'POCKET');
insert into ouvrages values ('2266091611', 'Voyage au centre de la terre', 'Jules Verne', 'ROM', 'POCKET');
insert into ouvrages values ('2253010219', 'Le crime de l''Orient Express', 'Agatha Christie', 'POL', 'Livre de poche');
insert into ouvrages values ('2070400816', 'Le Bourgeois gentilhomme', 'Molière', 'THE', 'Gallimard');
insert into ouvrages values ('2070367177', 'Le curé de Tours', 'Honoré de Balzac', 'ROM', 'Gallimard');
insert into ouvrages values ('2080720872', 'Boule de suif', 'Guy de Maupassant', 'REC', 'Flammarion');
insert into ouvrages values ('2877065073', 'La gloire de mon père', 'Marcel Pagnol', 'ROM', 'Fallois');
insert into ouvrages values ('2020549522', 'L''aventure des manuscrits de la mer morte', 'NULL', 'REC', 'Seuil');
insert into ouvrages values ('2253006327', 'Vingt mille lieues sous les mers', 'Jules Verne', 'ROM', 'LGF');
insert into ouvrages values ('2038704015', 'De la terre à la lune', 'Jules Verne', 'ROM', 'Larousse');
insert into ouvrages values ('2080703234', 'Cinq semaines en ballon', 'Jules Verne', 'ROM', 'Flammarion');

--Membres--
insert into membres(nom, prenom, adresse, telephone, adhesion, duree) values('ALBERT', 'Anne', '13 rue des alpes', '0601020304', TO_DATE('19/01/17', 'dd/mm/yy'), '1');
insert into membres(nom, prenom, adresse, telephone, adhesion, duree) values('BERNAUD', 'Barnabé', '6 rue des bécasses', '0602030105', TO_DATE('10/03/17', 'dd/mm/yy'), '3');
insert into membres(nom, prenom, adresse, telephone, adhesion, duree) values('CUVARD', 'Camille', '52 rue des cerisiers', '0602010509', TO_DATE('10/12/16', 'dd/mm/yy'), '6');
insert into membres(nom, prenom, adresse, telephone, adhesion, duree) values('DUPOND', 'Daniel', '11 rue des daims', '0610236515', TO_DATE('13/07/16', 'dd/mm/yy'), '12');
insert into membres(nom, prenom, adresse, telephone, adhesion, duree) values('EVROUX', 'Eglantine', '34 rue des elfes', '0658963125', TO_DATE('21/10/16', 'dd/mm/yy'), '6');
insert into membres(nom, prenom, adresse, telephone, adhesion, duree) values('FREGEON', 'Fernand', '11 rue des Francs', '0602036987', TO_DATE('14/02/16', 'dd/mm/yy'), '6');
insert into membres(nom, prenom, adresse, telephone, adhesion, duree) values('GORIT', 'Gaston', '96 rue de la glacerie', '0684235781', TO_DATE('21/10/16', 'dd/mm/yy'), '1');
insert into membres(nom, prenom, adresse, telephone, adhesion, duree) values('HEVARD', 'Hector', '12 rue haute', '0608546578', TO_DATE('13/07/16', 'dd/mm/yy'), '12');
insert into membres(nom, prenom, adresse, telephone, adhesion, duree) values('INGRAND', 'Irène', '54 rue des iris', '0605020409', TO_DATE('29/01/17', 'dd/mm/yy'), '12');
insert into membres(nom, prenom, adresse, telephone, adhesion, duree) values('JUSTE', 'Julien', '5 place des Jacobins', '0603069876', TO_DATE('10/12/16', 'dd/mm/yy'), '6');

--Exemplaires--
insert into exemplaires values('2203314168', '1', 'MO');
insert into exemplaires values('2746021285', '1', 'BO');
insert into exemplaires values('2746026090', '1', 'BO');
insert into exemplaires values('2266085816', '1', 'BO');
insert into exemplaires values('2266091611', '1', 'BO');
insert into exemplaires values('2253010219', '1', 'BO');
insert into exemplaires values('2070400816', '1', 'BO');
insert into exemplaires values('2070367177', '1', 'BO');
insert into exemplaires values('2080720872', '1', 'BO');
insert into exemplaires values('2877065073', '1', 'BO');
insert into exemplaires values('2020549522', '1', 'BO');
insert into exemplaires values('2253006327', '1', 'BO');
insert into exemplaires values('2038704015', '1', 'BO');
insert into exemplaires values('2203314168', '2', 'BO');
insert into exemplaires values('2746026090', '2', 'MO');
insert into exemplaires values('2266085816', '2', 'MO');
insert into exemplaires values('2266091611', '2', 'MO');
insert into exemplaires values('2253010219', '2', 'MO');
insert into exemplaires values('2070400816', '2', 'MO');
insert into exemplaires values('2070367177', '2', 'MO');
insert into exemplaires values('2080720872', '2', 'MO');
insert into exemplaires values('2877065073', '2', 'MO');
insert into exemplaires values('2020549522', '2', 'MO');
insert into exemplaires values('2253006327', '2', 'MO');
insert into exemplaires values('2038704015', '2', 'MO');
insert into exemplaires values('2203314168', '3', 'NE');

--Emprunts--
insert into emprunts values('1', '1', TO_DATE('01/09/16', 'dd/mm/yy'));
insert into emprunts values('2', '3', TO_DATE('11/09/16', 'dd/mm/yy'));
insert into emprunts values('3', '4', TO_DATE('21/09/16', 'dd/mm/yy'));
insert into emprunts values('4', '1', TO_DATE('01/10/16', 'dd/mm/yy'));
insert into emprunts values('5', '5', TO_DATE('11/10/16', 'dd/mm/yy'));
insert into emprunts values('6', '2', TO_DATE('21/10/16', 'dd/mm/yy'));
insert into emprunts values('7', '4', TO_DATE('31/10/16', 'dd/mm/yy'));
insert into emprunts values('8', '1', TO_DATE('10/11/16', 'dd/mm/yy'));
insert into emprunts values('9', '9', TO_DATE('20/11/16', 'dd/mm/yy'));
insert into emprunts values('10', '6', TO_DATE('30/11/16', 'dd/mm/yy'));
insert into emprunts values('11', '1', TO_DATE('10/12/16', 'dd/mm/yy'));
insert into emprunts values('12', '6', TO_DATE('20/12/16', 'dd/mm/yy'));
insert into emprunts values('13', '2', TO_DATE('30/12/16', 'dd/mm/yy'));
insert into emprunts values('14', '4', TO_DATE('09/01/17', 'dd/mm/yy'));
insert into emprunts values('15', '1', TO_DATE('19/01/17', 'dd/mm/yy'));
insert into emprunts values('16', '3', TO_DATE('29/01/17', 'dd/mm/yy'));
insert into emprunts values('17', '1', TO_DATE('08/02/17', 'dd/mm/yy'));
insert into emprunts values('18', '5', TO_DATE('18/02/17', 'dd/mm/yy'));
insert into emprunts values('19', '4', TO_DATE('28/02/17', 'dd/mm/yy'));
insert into emprunts values('20', '1', TO_DATE('10/03/17', 'dd/mm/yy'));

--Detailsemprunts--
insert into Detailsemprunts values('1', '1', '2038704015', '1', TO_DATE('06/09/16', 'dd/mm/yy'));
insert into Detailsemprunts values('1', '2', '2070367177', '2', TO_DATE('11/09/16', 'dd/mm/yy'));
insert into Detailsemprunts values('2', '1', '2080720872', '1', TO_DATE('21/09/16', 'dd/mm/yy'));
insert into Detailsemprunts values('2', '2', '2203314168', '1', TO_DATE('22/09/16', 'dd/mm/yy'));
insert into Detailsemprunts values('3', '1', '2038704015', '1', TO_DATE('01/10/16', 'dd/mm/yy'));
insert into Detailsemprunts values('4', '1', '2203314168', '2', TO_DATE('16/10/16', 'dd/mm/yy'));
insert into Detailsemprunts values('4', '2', '2080720872', '1', TO_DATE('16/10/16', 'dd/mm/yy'));
insert into Detailsemprunts values('4', '3', '2266085816', '1', TO_DATE('12/10/16', 'dd/mm/yy'));
insert into Detailsemprunts values('5', '1', '2038704015', '1', TO_DATE('31/10/16', 'dd/mm/yy'));
insert into Detailsemprunts values('6', '1', '2266085816', '2', TO_DATE('30/10/16', 'dd/mm/yy'));
insert into Detailsemprunts values('6', '2', '2080720872', '2', TO_DATE('10/11/16', 'dd/mm/yy'));
insert into Detailsemprunts values('6', '3', '2746021285', '1', TO_DATE('07/11/16', 'dd/mm/yy'));
insert into Detailsemprunts values('7', '1', '2070367177', '2', TO_DATE('10/12/16', 'dd/mm/yy'));
insert into Detailsemprunts values('8', '1', '2080720872', '1', TO_DATE('24/11/16', 'dd/mm/yy'));
insert into Detailsemprunts values('9', '1', '2038704015', '1', TO_DATE('10/12/16', 'dd/mm/yy'));
insert into Detailsemprunts values('10', '1', '2080720872', '2', TO_DATE('03/12/16', 'dd/mm/yy'));
insert into Detailsemprunts values('10', '2', '2746026090', '1', TO_DATE('01/01/17', 'dd/mm/yy'));
insert into Detailsemprunts values('11', '1', '2746021285', '1', TO_DATE('29/12/16', 'dd/mm/yy'));
insert into Detailsemprunts values('12', '1', '2203314168', '1', TO_DATE('24/12/16', 'dd/mm/yy'));
insert into Detailsemprunts values('12', '2', '2038704015', '1', TO_DATE('19/01/17', 'dd/mm/yy'));
insert into Detailsemprunts values('13', '1', '2070367177', '1', TO_DATE('14/01/17', 'dd/mm/yy'));
insert into Detailsemprunts values('14', '1', '2266091611', '1', TO_DATE('13/01/17', 'dd/mm/yy'));
insert into Detailsemprunts values('15', '1', '2070400816', '1', TO_DATE('29/01/17', 'dd/mm/yy'));
insert into Detailsemprunts values('16', '1', '2253010219', '2', TO_DATE('07/02/17', 'dd/mm/yy'));
insert into Detailsemprunts values('16', '2', '2070367177', '2', TO_DATE('07/02/17', 'dd/mm/yy'));
insert into Detailsemprunts values('17', '1', '2877065073', '2', TO_DATE('12/02/17', 'dd/mm/yy'));
insert into Detailsemprunts values('18', '1', '2070367177', '1', TO_DATE('06/03/17', 'dd/mm/yy'));
insert into Detailsemprunts values('19', '1', '2746026090', '1', TO_DATE('08/03/17', 'dd/mm/yy'));
insert into Detailsemprunts values('20', '1', '2266091611', '1', NULL);
insert into Detailsemprunts values('20', '2', '2253010219', '1', NULL);