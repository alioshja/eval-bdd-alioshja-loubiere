-- Active: 1694069296748@@127.0.0.1@3306@evaldatabase
CREATE DATABASE evalDatabase;

--_______________________________________________________

CREATE TABLE Tarifs (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    TypeTarifs VARCHAR(20) NOT NULL,
    Tarifs FLOAT(10) NOT NULL
    );

INSERT INTO Tarifs (TypeTarifs, Tarifs) VALUES 
('Moins de 14ans','5,90'),
('Etudiant', '7,60'),
('Adulte', '9,20');
--________________________________________________________

CREATE TABLE ville (
NomDeVilles VARCHAR(40) NOT NULL,
Id INT AUTO_INCREMENT PRIMARY KEY
);

INSERT INTO ville (nomDeVilles) VALUES ('Bordeaux'),
('Lille'),
('Draguignan'),
('Fréjus'),
('Monaco');

--________________________________________________________

CREATE TABLE films_villes (
-id villes_film  (étrangère) : int
-id film_villes (étrangère) : int
);

--________________________________________________________

CREATE TABLE Films (
    Film VARCHAR(30) NOT NULL,
    Durée VARCHAR(30) NOT NULL,
    Auteur VARCHAR(30) NOT NULL,
    AgeConseillée INT NOT NULL,
    Note INT NOT NULL
);

INSERT INTO Films (Film, Durée, Auteur, AgeConseillée, Note) VALUES 
('Titanic','1H30','James Cameron','14','4.6'),
('Hunger games','2H15','Suzanne Collins','16','4.3'),
('The Hobbit','2H','Peter Jackson','12','4.8'),
('The Amazing Spider-Man','1H30','Marc Webb','12','3.7'),
('Docteur Strange','1H30','Stan Lee','12','4.4');

--________________________________________________________

CREATE TABLE films_horaires (
films_horaires INT  Foreign Key () REFERENCES ()
id_horaires_films INT  Foreign Key () REFERENCES ()
);


--________________________________________________________

 CREATE TABLE horaires (
    séance VARCHAR(5)
 );

INSERT INTO horaires (séance) VALUES 
('10H'),
('12H'),
('14H'),
('16H'),
('18H'),
('20H'),
('22H'),
('24H'),
('2H');

--________________________________________________________
--________________________________________________________
--________________________________________________________

SELECT * FROM ville 
RIGHT JOIN cinema ON ville.`Id` = ville.`Id`
RIGHT JOIN ville a ON horaires.séance = horaires.séance;
JOIN horaires ON tarifs.`Id`;