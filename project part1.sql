--QUESTION 1--
--Table Genres--
CREATE TABLE Genres(
    code char(5) CONSTRAINT pk_genres PRIMARY KEY,
    libelle varchar2(80) NOT NULL
);

--Table Ouvrages--
CREATE TABLE Ouvrages(
    isbn number(10) CONSTRAINT pk_ouvrages PRIMARY KEY,
    titre varchar2(200) NOT NULL,
    auteur varchar2(80),
    genre char(5) NOT NULL,
    editeur varchar2(80)
);

--Table Exemplaires--
CREATE TABLE Exemplaires(
    isbn number(10),
    numero number(3),
    etat char(5),
    CONSTRAINT pk_exemplaires PRIMARY KEY(isbn, numero)
);

--Table Membres--
CREATE TABLE Membres(
    numero number(6) CONSTRAINT pk_membres PRIMARY KEY,
    nom varchar2(80) NOT NULL,
    prenom varchar2(80) NOT NULL,
    adresse varchar2(80) NOT NULL,
    telephone char(10) NOT NULL,
    adhesion date NOT NULL,
    duree number(2) NOT NULL
);

--Table Emprunts--
CREATE TABLE Emprunts(
    numero number(10) CONSTRAINT pk_emprunts PRIMARY KEY,
    membre number(6),
    creele date DEFAULT SYSDATE
);

--Table Detailsemprunts--
CREATE TABLE Detailsemprunts(
    emprunt number(10),
    numero number(3),
    isbn number(10),
    exemplaire number(3),
    rendule date,
    CONSTRAINT pk_detailsemprunts PRIMARY KEY(emprunt, numero)
);

--Foreign Keys--
ALTER TABLE Ouvrages ADD CONSTRAINT fk_ouvrages FOREIGN KEY(genre) REFERENCES Genres(code);
ALTER TABLE Emprunts ADD CONSTRAINT fk_emprunts FOREIGN KEY(membre) REFERENCES Membres(numero);
ALTER TABLE Detailsemprunts ADD CONSTRAINT fk_detailsemprunts1 FOREIGN KEY(emprunt) REFERENCES Emprunts(numero);
ALTER TABLE Detailsemprunts ADD CONSTRAINT fk_detailsemprunts2 FOREIGN KEY(isbn) REFERENCES Ouvrages(isbn);