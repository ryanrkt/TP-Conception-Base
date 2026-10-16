CREATE TABLE client (
    id_client INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100)
);

CREATE TABLE commande (
    id_commande INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    date_commande TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_client INT DEFAULT NULL,
    CONSTRAINT fk_commande_client 
        FOREIGN KEY (id_client) 
        REFERENCES client(id_client) 
        ON DELETE SET NULL 
);

CREATE TABLE ligne_commande (
    id_ligne INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_commande INT NOT NULL,
    id_plat INT NOT NULL,
    quantite INT NOT NULL CHECK (quantite > 0),   
    CONSTRAINT fk_ligne_commande 
        FOREIGN KEY (id_commande) 
        REFERENCES commande(id_commande) 
        ON DELETE CASCADE, 
        
    CONSTRAINT fk_ligne_plat 
        FOREIGN KEY (id_plat) 
        REFERENCES plat(id_plat),
        
    CONSTRAINT uk_commande_plat UNIQUE (id_commande, id_plat)
);