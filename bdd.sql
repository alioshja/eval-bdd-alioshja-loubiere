-- Active: 1694069296748@@127.0.0.1@3306@eval-wordpress-front
CREATE DATABASE evalDatabase;

CREATE TABLE cinéma (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Film VARCHAR(30) NOT NULL,
    Durée VARCHAR(30) NOT NULL,
    Auteur VARCHAR(30) NOT NULL,
    AgeConseillée INT NOT NULL,
    Note INT NOT NULL
);

CREATE TABLE tarifs (
    jusqua14ans INT NOT NULL,
    étudiant INT NOT NULL,
    adulte INT NOT NULL
);
 CREATE TABLE lieuethoraires (
    ville VARCHAR(40) NOT NULL,
    séance1 VARCHAR(5) NOT NULL,
    séance2 VARCHAR(5) NOT NULL,
    séance3 VARCHAR(5) NOT NULL,
    séance4 VARCHAR(5) NOT NULL,
    séance5 VARCHAR(5) NOT NULL,
    séance6 VARCHAR(5) NOT NULL,
    séance7 VARCHAR(5) NOT NULL,
    séance8 VARCHAR(5) NOT NULL,
    séance9 VARCHAR(5) NOT NULL,
    séance10 VARCHAR(5) NOT NULL,
    séance11 VARCHAR(5) NOT NULL
 )
