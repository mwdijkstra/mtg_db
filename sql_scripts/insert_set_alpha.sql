USE mtg_db;

INSERT INTO set_types (set_type_id, set_type_name)

INSERT INTO borders (border_id, border_name)
VALUES	(01, "white"),
		(02, "black"),
        (03, "silver");

INSERT INTO sets (
	set_code,
    set_border_id,
    set_type_id,
    set_name,
    set_gatherer_code,
    set_old_code,
    set_magiccards_info_code,
    set_release_date,
    set_blockname,
    set_is_online_only
) VALUES (
	"LEA",
    02,
    
);