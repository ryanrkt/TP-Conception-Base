CREATE TABLE categorie (
id_categorie INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
libelle VARCHAR(500) NOT NULL
);

INSERT INTO categorie(libelle) VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et gouter'),
('Boisson');

ALTER TABLE plat 
ADD COLUMN id_categorie INT,
ADD CONSTRAINT fk_plat_categorie 
FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie);

UPDATE plat 
SET id_categorie = (SELECT id_categorie FROM categorie WHERE libelle = 'Plat malagasy')
WHERE libelle IN ('Romazava', 'Ravitoto sy henakisoa', 'Akoho sy voanio');

UPDATE plat 
SET id_categorie = (SELECT id_categorie FROM categorie WHERE libelle = 'Plat chinois')
WHERE libelle = 'Mi sao';

UPDATE plat 
SET id_categorie = (SELECT id_categorie FROM categorie WHERE libelle = 'Soupe')
WHERE libelle = 'Soupe chinoise';

UPDATE plat 
SET id_categorie = (SELECT id_categorie FROM categorie WHERE libelle = 'Dessert et goûter')
WHERE libelle = 'Mofo gasy (les 4)';

UPDATE plat 
SET id_categorie = (SELECT id_categorie FROM categorie WHERE libelle = 'Boisson')
WHERE libelle = 'Ranon''ampango';