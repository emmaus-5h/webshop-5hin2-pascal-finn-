--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);

CREATE TABLE platform (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  game_id INTEGER,
  Windows VARCHAR(255),
  Linux VARCHAR(255),
  MacOS VARCHAR(255),
  PS4 VARCHAR(255),
  XBOX VARCHAR(255)
);

CREATE TABLE genre (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  game_id INTEGER,
  naam_genre VARCHAR(255)
);

CREATE TABLE fysiek_digitaal (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  game_id INTEGER,
  fysiek_digitaal VARCHAR(255)
);

CREATE TABLE leeftijd_categorie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  game_id INTEGER,
  leeftijd_categorie VARCHAR(255)
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

--
-- table products
--
insert into products (name, description, code, price) values ('Fortnite: Save the World', 'description', '816905633-0', 20);
insert into products (name, description, code, price) values ('Minecrat: Java Edition', 'description', '077030122-3', 30);
insert into products (name, description, code, price) values ('Call of Duty', 'description', '445924201-X', 60);
insert into products (name, description, code, price) values ('Factorio', 'description', '693155505-7', 30);
insert into products (name, description, code, price) values ('For Honor', 'description', '686928463-6', 30);
insert into products (name, description, code, price) values ('Dishonored', 'description', '492662523-7', 20);
insert into products (name, description, code, price) values ('Hollow Knight', 'description', '492662523-8', 25);
insert into products (name, description, code, price) values ('Ori and The Blind Forest', 'description', '492662523-9', 20);
insert into products (name, description, code, price) values ('Dirt Rally', 'description', '492662523-4', 20);
insert into products (name, description, code, price) values ('Doom Eternal', 'description', '492662523-5', 60);

--
-- table platform
--
insert into platform (game_id, Windows, Linux, MacOS, PS4, XBOX) values (1, 'TRUE, ... users', 'TRUE, ... users', 'TRUE, ... users', 'TRUE, ... users', 'TRUE, ... users');
insert into platform (game_id, Windows, Linux, MacOS, PS4, XBOX) values (2, 'TRUE, ... users', 'TRUE, ... users', 'TRUE, ... users', 'FALSE', 'FALSE');
insert into platform (game_id, Windows, Linux, MacOS, PS4, XBOX) values (3, 'TRUE, ... users', 'FALSE', 'FALSE', 'TRUE, ... users', 'TRUE, ... users');
insert into platform (game_id, Windows, Linux, MacOS, PS4, XBOX) values (4, 'TRUE, ... users', 'TRUE, ... users', 'TRUE, ... users', 'FALSE', 'FALSE');
insert into platform (game_id, Windows, Linux, MacOS, PS4, XBOX) values (5, 'TRUE, ... users', 'FALSE', 'FALSE', 'TRUE, ... users', 'TRUE, ... users');
insert into platform (game_id, Windows, Linux, MacOS, PS4, XBOX) values (6, 'TRUE, ... users', 'FALSE', 'FALSE', 'FALSE', 'FALSE');
insert into platform (game_id, Windows, Linux, MacOS, PS4, XBOX) values (7, 'TRUE, ... users', 'TRUE, ... users', 'TRUE, ... users', 'TRUE, ... users', 'TRUE, ... users');
insert into platform (game_id, Windows, Linux, MacOS, PS4, XBOX) values (8, 'TRUE, ... users', 'FALSE', 'TRUE, ... users', 'TRUE, ... users', 'TRUE, ... users');
insert into platform (game_id, Windows, Linux, MacOS, PS4, XBOX) values (9, 'TRUE, ... users', 'FALSE', 'FALSE', 'TRUE, ... users', 'TRUE, ... users');
insert into platform (game_id, Windows, Linux, MacOS, PS4, XBOX) values (10, 'TRUE, ... users', 'FALSE', 'FALSE', 'TRUE, ... users', 'TRUE, ... users');