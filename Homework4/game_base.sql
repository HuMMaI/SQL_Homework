DROP DATABASE IF EXISTS game_base;
CREATE DATABASE game_base;

USE game_base;

CREATE TABLE accounts(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(15) NOT NULL UNIQUE,
    password VARCHAR(15) NOT NULL
);

CREATE TABLE classes(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE permissions(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE characters(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nickname VARCHAR(15) NOT NULL UNIQUE,
    level INT NOT NULL DEFAULT 1 CHECK (level <= 200),
    class_id INT NOT NULL,
    CONSTRAINT character_class_FK FOREIGN KEY (class_id) REFERENCES classes(id),
    permission_id INT NOT NULL DEFAULT 1,
    CONSTRAINT character_permission_FK FOREIGN KEY (permission_id) REFERENCES permissions(id)
);

CREATE TABLE account_info(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username_id INT NOT NULL,
    CONSTRAINT account_username_FK FOREIGN KEY (username_id) REFERENCES accounts(id),
    character_id INT NOT NULL UNIQUE,
    CONSTRAINT account_character_FK FOREIGN KEY (character_id) REFERENCES characters(id)
);

CREATE TABLE item_types(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(25) NOT NULL UNIQUE
);

CREATE TABLE characteristics(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE items(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL UNIQUE,
    item_level INT NOT NULL CHECK (item_level <= 200),
    type_id INT NOT NULL,
    CONSTRAINT item_type_FK FOREIGN KEY (type_id) REFERENCES item_types(id)
);

CREATE TABLE item_info(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    item_id INT NOT NULL,
    CONSTRAINT items_FK FOREIGN KEY (item_id) REFERENCES items(id),
    enchantment_level INT NOT NULL DEFAULT 0 CHECK (enchantment_level <= 20),
    main_characteristic_id INT NOT NULL,
    CONSTRAINT item_characteristic_FK FOREIGN KEY (main_characteristic_id) REFERENCES characteristics(id),
    quantity INT NOT NULL DEFAULT 1
);

CREATE TABLE character_inventory(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    character_id INT NOT NULL,
    CONSTRAINT character_inventory_FK FOREIGN KEY (character_id) REFERENCES characters(id),
    item_id INT NOT NULL,
    CONSTRAINT character_item_FK FOREIGN KEY (item_id) REFERENCES item_info(id)
);

INSERT INTO classes(name) VALUES
	('Knight'), ('Paladin'), ('Cavalier'),
    ('Summoner'), ('Druid'), ('Mage'),
    ('Assassin'), ('Ninja'), ('Shadow');
    
INSERT INTO permissions(name) VALUES
	('Gamer'), ('Tester'), ('Moderator'), ('Admin');
    
INSERT INTO accounts(username, password) VALUES
	('user1', '12345'),
    ('tester', '13425'),
    ('moderator', '41231'),
    ('admin', '17654332');
    
INSERT INTO characters(nickname, level, class_id, permission_id) VALUES 
	('Character1', 100, 2, DEFAULT),
	('Character2', 21, 9, DEFAULT),
	('Character3', 2, 5, DEFAULT),
	('Character4', 144, 1, 2),
	('Character5', 200, 8, 3),
	('Character6', 200, 4, 4);
    
INSERT INTO account_info(username_id, character_id) VALUES 
	(1, 1), (1, 2), (1, 3),
    (2, 4), (3, 5), (4, 6);
    
INSERT INTO characteristics(name) VALUES 
	('Strength'), ('Agility'), ('Intelligence'), ('Endurance'), ('Accuracy'), ('Healing');
    
INSERT INTO item_types(name) VALUES
	('Sword'), ('Two-handed staff'), ('One-handed staff'), ('Shield'), ('Robe'), ('Armor'), ('Ring'), ('Potion');
    
INSERT INTO items(name, item_level, type_id) VALUES
	('Lord\'s Sword', 150, 1),
    ('Bitrydent', 200, 2),
    ('Plumobile', 100, 3),
    ('Ilyzaelle Daggers', 120, 1),
    ('Heqaxe', 180, 2),
    ('Cycloid Shield', 70, 4),
    ('Bontarian Shield', 140, 4),
    ('Nidas\'s Ring', 60, 7),
    ('Pauper\'s Robe', 30, 5),
    ('Life potion', 5, 8),
    ('Great potion of life', 100, 8);
    
INSERT INTO item_info(item_id, enchantment_level, main_characteristic_id, quantity) VALUES
	(1, 10, 1, DEFAULT), (2, 20, 3, DEFAULT), (4, 2, 2, DEFAULT), (8, DEFAULT, 5, DEFAULT), (9, 1, 2, DEFAULT), (10, DEFAULT, 6, 10), (11, DEFAULT, 6, 42);
    
INSERT INTO character_inventory(character_id, item_id) VALUES 
	(1, 7), (6, 2), (4, 1), (3, 5), (2, 6);
