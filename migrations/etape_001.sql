CREATE DATABASE gargote_rado ;
\c gargote_rado ;



CREATE TABLE plat (
    id_plat INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    libelle VARCHAR(500) NOT NULL,
    prix INT NOT NULL
);

INSERT INTO plat (libelle,prix) VALUES 
('Romazava',7000),
('Ravitoto sy Henakisoa',8000),
('Akoho sy Voanio',8500),
('Mi Soa',6000),
('Soupe Chinoise',5000),
('Mofo gasy',1000),
('Ranon''ampango',500);

SELECT libelle as  plat,prix FROM plat ORDER BY prix;

