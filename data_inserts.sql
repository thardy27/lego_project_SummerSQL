INSERT OVERWRITE INTO th_lego_summer_sql.colors (
	SELECT * FROM til_portfolio_projects.staging.lego_colors
);

INSERT OVERWRITE INTO th_lego_summer_sql.inventories (
	SELECT * FROM til_portfolio_projects.staging.lego_inventories
);

INSERT OVERWRITE INTO th_lego_summer_sql.inventory_parts (
	SELECT * FROM til_portfolio_projects.staging.lego_inventory_parts
);

INSERT OVERWRITE INTO th_lego_summer_sql.inventory_sets (
	SELECT * FROM til_portfolio_projects.staging.lego_inventory_sets
);

INSERT OVERWRITE INTO th_lego_summer_sql.part_categories (
	SELECT * FROM til_portfolio_projects.staging.lego_part_categories
);

INSERT OVERWRITE INTO th_lego_summer_sql.parts (
	SELECT * FROM til_portfolio_projects.staging.lego_parts
);

INSERT OVERWRITE INTO th_lego_summer_sql.sets (
	SELECT * FROM til_portfolio_projects.staging.lego_sets
);

INSERT OVERWRITE INTO th_lego_summer_sql.themes (
	SELECT * FROM til_portfolio_projects.staging.lego_themes
);
