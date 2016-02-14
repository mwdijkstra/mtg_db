USE mtg_db;

# It is necessary to insert the lists-of-values first

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
    01,
    "Limited Edition Alpha",
    "1E",
    null,
    "al",
    "1993-08-05",
    null,
    false
);