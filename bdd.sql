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

CREATE TABLE Films_Tarifs (
    TarifId INT,
    FilmId INT,
    FOREIGN KEY (TarifId) REFERENCES Tarifs(Id),
    FOREIGN KEY (FilmId) REFERENCES Films(Id)
)

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

CREATE TABLE Films_Villes (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    FilmId INT,
    VilleId INT,
    FOREIGN KEY (FilmId) REFERENCES Films(Id),
    FOREIGN KEY (VilleId) REFERENCES Ville(Id)
);

--________________________________________________________

CREATE TABLE Films (
    Id INT AUTO_INCREMENT PRIMARY KEY,
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

CREATE TABLE Films_Horaires (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    FilmId INT,
    HoraireId INT,
    FOREIGN KEY (FilmId) REFERENCES Films(Id),
    FOREIGN KEY (HoraireId) REFERENCES Horaires(Id)
);

--________________________________________________________

 CREATE TABLE horaires (
    Id INT AUTO_INCREMENT PRIMARY KEY,
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

CREATE TABLE Cinema (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    VilleId INT,
    FOREIGN KEY (VilleId) REFERENCES Ville(Id)
);

--________________________________________________________

CREATE TABLE modération (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    mot_de_passe VARCHAR(50)
)

--________________________________________________________

INSERT INTO modération (mot_de_passe) VALUES ('JojoLeNarvalo112299'),('AldricLeCinéphille499876'),('ElPatron002009001')

--________________________________________________________

SELECT Tarifs.TypeTarifs, Films.Film, Ville.NomDeVilles, Horaires.séance
FROM Tarifs
JOIN Films_Tarifs ON Tarifs.Id = Films_Tarifs.TarifId
JOIN Films ON Films_Tarifs.FilmId = Films.Id
JOIN Films_Villes ON Films.Id = Films_Villes.FilmId
JOIN Ville ON Films_Villes.VilleId = Ville.Id
JOIN Films_Horaires ON Films.Id = Films_Horaires.FilmId
JOIN Horaires ON Films_Horaires.HoraireId = Horaires.Id;

