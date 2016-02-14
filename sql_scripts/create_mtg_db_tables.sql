CREATE DATABASE mtg_db;

USE mtg_db;

GRANT ALL ON mtg_db.* TO 'root'@'nqnlicjv';

CREATE TABLE layouts
(	layout_id smallint(2),
	layout_name varchar(20),
	CONSTRAINT layout_id_pk PRIMARY KEY (layout_id)
);

CREATE TABLE card_rarities
(	card_rarity_code char(1),
	card_rarity_name varchar(20),
	CONSTRAINT card_rarity_code_pk PRIMARY KEY (card_rarity_code)
);

CREATE TABLE artist
(	artist_id int(5),
	artist_name varchar(255),
	CONSTRAINT artist_id_pk PRIMARY KEY (artist_id)
);

CREATE TABLE borders
(	border_id SMALLINT(2),
	border_name VARCHAR(20),
    CONSTRAINT border_id_pk PRIMARY KEY (border_id)
);

CREATE TABLE set_types
(	set_type_id SMALLINT(2),
	set_type_name varchar(50),
	CONSTRAINT set_type_id_pk PRIMARY KEY (set_type_id)
);

CREATE TABLE sets
(	set_code char(3),
	set_border_id smallint(2),
    set_type_id smallint(2),
    set_name varchar(255),
    set_gatherer_code char(3),
    set_old_code char(3),
    set_magiccards_info_code char(3),
    set_release_date varchar(10),
    set_blockname varchar(255),
    set_is_online_only boolean,
	CONSTRAINT set_code_pk PRIMARY KEY (set_code),
    CONSTRAINT fk_set_border_id
		FOREIGN KEY (set_border_id)
		REFERENCES borders(border_id),
	CONSTRAINT fk_set_type_id
		FOREIGN KEY (set_type_id)
        REFERENCES set_types(set_type_id)
);

# We need mkm_name and mkm_id .. not in documentation but it is in the Alpha file

CREATE TABLE cards
(	card_id varchar(40),
	card_layout smallint(2),
    card_rarity_code char(1),
    card_artist_id int(5),
    card_border_id SMALLINT(2),
    card_set_code char(3),
    card_name varchar(255),
    card_manacost varchar(255),
    card_cmc decimal(2,1),
    card_type varchar(255),
    card_text varchar(255),
    card_flavor varchar(255),
    card_number varchar(5),
    card_power varchar(3),
    card_toughness varchar(3),
    card_loyalty smallint(2),
    card_multiverse_id bigint(18),
    card_imagename varchar(255),
    card_watermark varchar(50),
    card_timeshifted boolean,
    card_hand_modifier smallint(1),
    card_life_modifier smallint(2),
    card_reserved boolean,
    card_promo_releasedate varchar(10),
    card_in_starter boolean,
    card_orignal_text varchar(255),
    card_original_type varchar(50),
    card_promo_source varchar(50),
    CONSTRAINT card_id_pk PRIMARY KEY (card_id),
	CONSTRAINT fk_card_layout
		FOREIGN KEY (card_layout)
        REFERENCES layouts(layout_id),
	CONSTRAINT fk_card_rarity_code
		FOREIGN KEY (card_rarity_code)
        REFERENCES card_rarities(card_rarity_code),
	CONSTRAINT fk_card_artist_id
		FOREIGN KEY (card_artist_id)
        REFERENCES artist(artist_id),
	CONSTRAINT fk_card_border_id
		FOREIGN KEY (card_border_id)
        REFERENCES borders(border_id),
	CONSTRAINT fk_card_set_code
		FOREIGN KEY (card_set_code)
        REFERENCES sets(set_code)
);

CREATE TABLE card_variations
(	card_id varchar(40),
	variation_multiverse_id bigint(18),
    CONSTRAINT fk_card_id_from_cvar
		FOREIGN KEY (card_id)
        REFERENCES cards(card_id)
);

CREATE TABLE card_foreign_names
(	card_id varchar(40),
	card_foreign_language varchar(20),
    card_foreign_name varchar(255),
    card_foreign_multiverse_id bigint(18),
	CONSTRAINT fk_card_id_from_cfna
		FOREIGN KEY (card_id)
        REFERENCES cards(card_id)
);

CREATE TABLE card_supertypes
(	card_id varchar(40),
	card_supertype_name varchar(255),
    CONSTRAINT fk_card_id_from_csup
		FOREIGN KEY (card_id)
        REFERENCES cards(card_id)
);

CREATE TABLE card_types
(	card_id varchar(40),
	card_type_name varchar(255),
    CONSTRAINT fk_card_id_from_ctyp
		FOREIGN KEY (card_id)
        REFERENCES cards(card_id)
);

CREATE TABLE card_subtypes
(	card_id varchar(40),
	card_subtype_name varchar(255),
    CONSTRAINT fk_card_id_from_csub
		FOREIGN KEY (card_id)
        REFERENCES cards(card_id)
);

CREATE TABLE colors
(	color_code char(1),
	color_name varchar(20),
    CONSTRAINT color_code_pk PRIMARY KEY (color_code)
);

CREATE TABLE card_colors
(	card_id varchar(40),
	color_code char(1),
    CONSTRAINT fk_card_id_from_ccol
		FOREIGN KEY (card_id)
        REFERENCES cards(card_id),
	CONSTRAINT fk_color_code_from_ccol
		FOREIGN KEY (color_code)
        REFERENCES colors(color_code)
);

CREATE TABLE card_color_identity
(	card_id varchar(40),
	color_code char(1),
    CONSTRAINT fk_card_id_from_ccid
		FOREIGN KEY (card_id)
        REFERENCES cards(card_id),
	CONSTRAINT fk_color_code_from_ccid
		FOREIGN KEY (color_code)
        REFERENCES colors(color_code)
);

CREATE TABLE booster_rarities
(	booster_rarity_code char(2),
	booster_rarity_name varchar(20),
    CONSTRAINT booster_rarity_code_pk PRIMARY KEY (booster_rarity_code)
);

CREATE TABLE boosters
(	set_code char(3),
	rarity_code char(1),
    CONSTRAINT fk_set_code_from_boo
		FOREIGN KEY (set_code)
        REFERENCES sets(set_code),
	CONSTRAINT fk_rarity_code_from_boo
		FOREIGN KEY (rarity_code)
        REFERENCES booster_rarities(booster_rarity_code)
);

CREATE TABLE persons
(	person_id int(10),
	person_first_name varchar(255),
    person_last_name varchar(255),
    person_birthdate date,
    CONSTRAINT person_id_pk PRIMARY KEY (person_id)
);

CREATE TABLE collections
(	person_id int(10),
	card_id varchar(40),
    card_amount_wanted smallint(2),
    card_amount_for_trade smallint(2),
    card_amount_owned smallint(2),
    CONSTRAINT fk_person_id_from_col
		FOREIGN KEY (person_id)
        REFERENCES persons(person_id),
	CONSTRAINT fk_card_id_from_col
		FOREIGN KEY (card_id)
        REFERENCES cards(card_id)
);