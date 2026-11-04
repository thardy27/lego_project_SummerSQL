---- EXAMPLE: Check String cols length ----

-- SELECT
--    max(length(set_num))
-- FROM TIL_PORTFOLIO_PROJECTS.STAGING.LEGO_INVENTORIES
-- limit 10
-- ;

------- ALL CREATE TABLES --------

CREATE TABLE th_lego_summer_sql.colors (
	id smallint,
	name varchar(30),
	rgb varchar(6),
	is_trans varchar(1)
);

CREATE TABLE th_lego_summer_sql.inventories (
	id integer,
	version integer,
	set_num varchar(20)
);

CREATE TABLE th_lego_summer_sql.inventory_parts (
	inventory_id smallint,
	part_num varchar(15),
	color_id smallint,
	quantity smallint,
	is_spare varchar(1)
);

CREATE TABLE th_lego_summer_sql.inventory_sets (
	inventory_id smallint,
	set_num varchar(10),
	quantity smallint
	);

CREATE TABLE th_lego_summer_sql.part_categories (
	id smallint,
	name varchar(50)
);

CREATE TABLE th_lego_summer_sql.parts (
	part_num varchar(15),
	name varchar(225),
	part_cat_id smallint
);

CREATE TABLE th_lego_summer_sql.sets (
	set_num varchar(20),
	name varchar(100),
	year smallint,
	theme_id smallint,
	num_parts smallint
);

CREATE TABLE th_lego_summer_sql.themes (
	id smallint,
	name varchar(50),
	parent_id smallint
);
