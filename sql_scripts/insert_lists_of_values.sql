INSERT INTO booster_rarities (booster_rarity_code, booster_rarity_name)
VALUES	(01, "common"),
		(02, "uncommon"),
        (03, "rare"),
        (04, "mythic rare"),
        (05, "land"),
        (06, "marketing"),
        (07, "checklist"),
        (08, "double faced"),
        (09, "timeshifted common"),
        (10, "timeshifted uncommon"),
        (11, "timeshifted rare"),
        (12, "timeshifted purple");

INSERT INTO borders (border_id, border_name)
VALUES	(01, "white"),
		(02, "black"),
        (03, "silver");
        
INSERT INTO card_rarities (card_rarity_code, card_rarity_name)
VALUES	("C", "common"),
		("U", "uncommon"),
        ("R", "rare"),
        ("M", "mythic rare"),
        ("S", "special"),
        ("L", "land");
        
INSERT INTO colors (color_code, color_name)
VALUES	("W", "white"),
		("U", "blue"),
        ("B", "black"),
        ("R", "red"),
        ("G", "green"),
        ("C", "colorless");
        
INSERT INTO contactpoint_types (contactpoint_type_code, contactpoint_type_name)
VALUES	(01, "e-mail"),
		(02, "facebook"),
        (03, "twitter"),
        (04, "instagram");
        
INSERT INTO layouts (layout_id, layout_name)
VALUES	(01, "normal"),
		(01, "split"),
        (01, "flip"),
        (01, "double-faced"),
        (01, "token"),
        (01, "plane"),
        (01, "scheme"),
        (01, "phenomenon"),
        (01, "leveler"),
        (01, "vanguard");

INSERT INTO set_types (set_type_id, set_type_name)
VALUES	(01, "core"),
		(02, "expansion"),
        (03, "reprint"),
        (04, "box"),
        (05, "un"),
        (06, "from the vault"),
        (07, "premium deck"),
        (08, "duel deck"),
        (09, "starter"),
        (10, "commander"),
        (11, "planechase"),
        (12, "archenemy"),
        (13, "promo"),
        (14, "vanguard"),
        (15, "masters");