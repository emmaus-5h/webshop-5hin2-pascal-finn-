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
  name_game VARCHAR(255),
  Windows boolean,
  Linux boolean,
  MacOS boolean,
  PS4 boolean,
  XBOX boolean
);

CREATE TABLE genre (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam_genre VARCHAR(255)
);

CREATE TABLE fysiek_digitaal (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  fysiek_digitaal VARCHAR(255)
);

CREATE TABLE leeftijd_categorie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
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
insert into platform (name_game, Windows, Linux, MacOS, PS4, XBOX) values ('Fortnite: Save the world', TRUE, TRUE, TRUE, TRUE, TRUE);
insert into platform (name_game, Windows, Linux, MacOS, PS4, XBOX) values ('Minecraft', TRUE, TRUE, TRUE, FALSE, FALSE);