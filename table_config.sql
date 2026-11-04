----------- PRIMARY KEYS --------------

ALTER TABLE colors ADD PRIMARY KEY (id)
;

ALTER TABLE inventories ADD PRIMARY KEY (id)
;

ALTER TABLE parts ADD PRIMARY KEY (part_num)
;

ALTER TABLE part_categories ADD PRIMARY KEY (id)
;

ALTER TABLE sets ADD PRIMARY KEY (set_num)
;

ALTER TABLE themes ADD PRIMARY KEY (id)
;

------------- FOREIGN KEYS ------------

ALTER TABLE parts 
ADD FOREIGN KEY (part_cat_id) REFERENCES part_categories (id);

ALTER TABLE inventory_parts ADD FOREIGN KEY (inventory_id) REFERENCES inventories (id);
ALTER TABLE inventory_parts ADD FOREIGN KEY (part_num)     REFERENCES parts (part_num);
ALTER TABLE inventory_parts ADD FOREIGN KEY (color_id)     REFERENCES colors (id);;

ALTER TABLE inventories 
ADD FOREIGN KEY (set_num) REFERENCES sets (set_num);

ALTER TABLE themes 
ADD FOREIGN KEY (id) REFERENCES themes (id);

ALTER TABLE inventory_sets 
ADD FOREIGN KEY (inventory_id) REFERENCES inventories (id);

-- Alter the data type for set_num
ALTER TABLE inventory_sets ALTER COLUMN set_num SET DATA TYPE VARCHAR(20);

ALTER TABLE inventory_sets 
ADD FOREIGN KEY (set_num) REFERENCES sets (set_num);
