CREATE DATABASE mtg_db;

USE mtg_db;

GRANT ALL ON mtg_db.* TO ''@'';

CREATE TABLE cards
(	card_id varchar(40) NOT NULL,
	card_name varchar(255),
    card_manacost varchar(255),
    card_cmc decimal(2,1),
    card_type varchar(255),
    card_rarity char(1),
    CONSTRAINT card_id_pk PRIMARY KEY (card_id),
    CONSTRAINT fk_rarity
		FOREIGN KEY (card_rarity)
        REFERENCES rarities(rarity)
);