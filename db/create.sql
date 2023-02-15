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
  Windows VARCHAR(255),
  Linux VARCHAR(255),
  MacOS VARCHAR(255),
  PS4 VARCHAR(255),
  XBOX VARCHAR(255)
);

CREATE TABLE genre (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  naam_genre VARCHAR(255)
);

CREATE TABLE genre_game (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  game_id INTEGER,
  genre_id INTEGER
)

CREATE TABLE fysiek_digitaal (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  fysiek boolean,
  digitaal boolean
);

CREATE TABLE leeftijd_categorie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  leeftijd_categorie VARCHAR(255),
  waarschuwing VARCHAR(255)
);

CREATE TABLE products_platform (
  id_products (),
  id_platform ()
);

CREATE TABLE products_genre (
  id_products (),
  id_genre ()
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
insert into products (name, description, code, price) values ('Fortnite: Save the World', 'Fortnite: Save the World is a player-versus-environment cooperative game, with four players collaborating towards a common objective on various missions. The game is set after a fluke storm appears across Earth, causing 98% of the population to disappear, and the survivors to be attacked by zombie-like "husks". The players take the role of commanders of home base shelters, collecting resources, saving survivors, and defending equipment that helps to either collect data on the storm or to push back the storm. From missions, players are awarded a number of in-game items, which include hero characters, weapon and trap schematics, and survivors, all of which can be leveled up through gained experience to improve their attributes.', '816905633-0', 20);
insert into products (name, description, code, price) values ('Minecraft: Java Edition', 'Minecraft is a 3D sandbox game that has no required goals to accomplish, allowing players a large amount of freedom in choosing how to play the game. However, there is an achievement system,[19] known as "advancements" in the Java Edition of the game, and "trophies" on the PlayStation ports. Gameplay is in the first-person perspective by default, but players have the option of a third-person perspective. The game world is composed of rough 3D objects—mainly cubes and fluids, and commonly called "blocks"—representing various materials, such as dirt, stone, ores, tree trunks, water, and lava. The core gameplay revolves around picking up and placing these objects. These blocks are arranged in a 3D grid, while players can move freely around the world. Players can "mine" blocks and then place them elsewhere, enabling them to build things. Many commentators have described the games physics system as unrealistic. The game also contains a material called redstone, which can be used to make primitive mechanical devices, electrical circuits, and logic gates, allowing for the construction of many complex systems.', '077030122-3', 30);
insert into products (name, description, code, price) values ('Call of Duty', 'Call of Duty is a first-person shooter video game franchise published by Activision. Starting out in 2003, it first focused on games set in World War II. Over time, the series has seen games set in the midst of the Cold War, futuristic worlds, and the modern day. The games were first developed by Infinity Ward, then also by Treyarch and Sledgehammer Games. Several spin-off and handheld games were made by other developers. The most recent title, Call of Duty: Modern Warfare II, was released on October 28, 2022. ', '445924201-X', 60);
insert into products (name, description, code, price) values ('Factorio', 'Factorio is a construction and management simulation game developed by the Czech studio Wube Software. The game was announced via an Indiegogo crowdfunding campaign in 2013 and released for Windows, macOS, and Linux on 14 August 2020 following a four-year long early access phase to positive reviews. The game was released on Nintendo Switch on 28 October 2022.', '693155505-7', 30);
insert into products (name, description, code, price) values ('For Honor', 'For Honor is an action game developed and published by Ubisoft. The game allows players to play the roles of historical forms of soldiers and warriors such as knights, samurai, vikings, controlled using a third-person perspective. The game was developed primarily by Ubisoft Montreal and released worldwide for Microsoft Windows, PlayStation 4, and Xbox One in 2017.', '686928463-6', 30);
insert into products (name, description, code, price) values ('Dishonored', 'Dishonored is a 2012 action-adventure game developed by Arkane Studios and published by Bethesda Softworks. Set in the fictional, plague-ridden industrial city of Dunwall, Dishonored follows the story of Corvo Attano, bodyguard to the Empress of the Isles. He is framed for her murder and forced to become an assassin, seeking revenge on those who conspired against him. Corvo is aided in his quest by the Loyalists—a resistance group fighting to reclaim Dunwall, and the Outsider—a powerful being who imbues Corvo with magical abilities. Several noted actors, including Susan Sarandon, Brad Dourif, Carrie Fisher, Michael Madsen, John Slattery, Lena Headey and Chloë Grace Moretz, provided voice work for the game.', '492662523-7', 20);
insert into products (name, description, code, price) values ('Hollow Knight', 'Hollow Knight is a 2017 Metroidvania video game developed and published by independent developer Team Cherry. In the game, the player controls the Knight, a nameless insectoid warrior, who explores Hallownest, a fallen kingdom plagued by a supernatural disease. The game is set in diverse subterranean locations, and it features friendly and hostile insectoid characters and numerous bosses. Players have the opportunity to unlock new abilities as they explore each location, along with pieces of lore and flavour text that are spread throughout the kingdom. ', '492662523-8', 25);
insert into products (name, description, code, price) values ('Ori and The Blind Forest', 'Ori and the Blind Forest is a platform-adventure Metroidvania video game developed by Moon Studios and published by Microsoft Studios. The game was released for Xbox One and Microsoft Windows in March 2015, and for Nintendo Switch in September 2019. Players assume control of Ori, a small white spirit, and Sein, the "light and eyes" of the Forests Spirit Tree. Players are tasked to move between platforms and solve puzzles. The game features a save system called "Soul Links", which allows players to save their progress at will with limited resources, and an upgrade system that gives players the ability to strengthen Oris skills and abilities.', '492662523-9', 20);
insert into products (name, description, code, price) values ('Dirt Rally', 'Dirt Rally is a racing simulation video game developed and published by Codemasters for Microsoft Windows. A Steam Early Access version of the game was released on 27 April 2015, and the full version was released on 7 December. PlayStation 4, Xbox One and physical PC DVD versions were released on 5 April 2016. The Linux and macOS versions, developed by Feral Interactive, were released on 2 March 2017. A sequel, Dirt Rally 2.0, was released in February 2019.', '492662523-4', 20);
insert into products (name, description, code, price) values ('Doom Eternal', 'Doom Eternal is a first-person shooter game developed by id Software and published by Bethesda Softworks. The sequel to Doom (2016), and the sixth main game in the Doom series, it was released on March 20, 2020, for PlayStation 4, Stadia, Windows, and Xbox One, with a version for Nintendo Switch being released on December 8, 2020, and versions for PlayStation 5 and Xbox Series X and Series S being released on June 29, 2021. Set some time after the events of the 2016 game, the story follows the Doomslayer once again, on a mission to end Hells consumption of Earth and foil the alien Maykrs plans to exterminate humanity.', '492662523-5', 60);

--
-- table platform
--
insert into platform (Windows, Linux, MacOS, PS4, XBOX) values ('Windows, ... users', 'Linux, ... users', 'MacOS, ... users', 'PS4, ... users', 'XBOX, ... users');
insert into platform (Windows, Linux, MacOS, PS4, XBOX) values ('Windows, ... users', 'Linux, ... users', 'MacOS, ... users', 'PS4, FALSE', 'XBOX, FALSE');
insert into platform (Windows, Linux, MacOS, PS4, XBOX) values ('Windows, ... users', 'Linux, FALSE', 'MacOS, FALSE', 'PS4, ... users', 'XBOX, ... users');
insert into platform (Windows, Linux, MacOS, PS4, XBOX) values ('Windows, ... users', 'Linux, ... users', 'MacOS, ... users', 'PS4, FALSE', 'XBOX, FALSE');
insert into platform (Windows, Linux, MacOS, PS4, XBOX) values ('Windows, ... users', 'Linux, FALSE', 'MacOS, FALSE', 'PS4, ... users', 'XBOX, ... users');
insert into platform (Windows, Linux, MacOS, PS4, XBOX) values ('Windows, ... users', 'Linux, FALSE', 'MacOS, FALSE', 'PS4, FALSE', 'XBOX, FALSE');
insert into platform (Windows, Linux, MacOS, PS4, XBOX) values ('Windows, ... users', 'Linux, ... users', 'MacOS, ... users', 'PS4, ... users', 'XBOX, ... users');
insert into platform (Windows, Linux, MacOS, PS4, XBOX) values ('Windows, ... users', 'Linux, FALSE', 'MacOS, ... users', 'PS4, ... users', 'XBOX, ... users');
insert into platform (Windows, Linux, MacOS, PS4, XBOX) values ('Windows, ... users', 'Linux, FALSE', 'MacOS, FALSE', 'PS4, ... users', 'XBOX, ... users');
insert into platform (Windows, Linux, MacOS, PS4, XBOX) values ('Windows, ... users', 'Linux, FALSE', 'MacOS, FALSE', 'PS4, ... users', 'XBOX, ... users');

--
-- table genre
--
insert into genre ("Base Building");
insert into genre ("Sandbox");
insert into genre ("FPS");
insert into genre ("Fighting");
insert into genre ("Action");
insert into genre ("Racing");
insert into genre ("Platformer");
insert into genre ("Stealth");

--
-- join game genre table
--
insert into genre_game (1, 1);
insert into genre_game (1, 3);

insert into genre_game (2, 1);
insert into genre_game (2, 2);

insert into genre_game (3, 3);
insert into genre_game (3, 5);

insert into genre_game (4, 1);

insert into genre_game (5, 4);
insert into genre_game (5, 5);

insert into genre_game (6, 5);
insert into genre_game (6, 8);

insert into genre_game (7, 5);
insert into genre_game (7, 7);

insert into genre_game (8, 5);
insert into genre_game (8, 7);

insert into genre_game (9, 5);
insert into genre_game (9, 6);

insert into genre_game (10, 5);
insert into genre_game (10, 3);


--
-- table fysiek digitaal
--
insert into fysiek_digitaal (fysiek, digitaal) values (false, true);
insert into fysiek_digitaal (fysiek, digitaal) values (false, true);
insert into fysiek_digitaal (fysiek, digitaal) values (true, true);
insert into fysiek_digitaal (fysiek, digitaal) values (false, true);
insert into fysiek_digitaal (fysiek, digitaal) values (true, true);
insert into fysiek_digitaal (fysiek, digitaal) values (false, true);
insert into fysiek_digitaal (fysiek, digitaal) values (false, true);
insert into fysiek_digitaal (fysiek, digitaal) values (false, true);
insert into fysiek_digitaal (fysiek, digitaal) values (true, true);
insert into fysiek_digitaal (fysiek, digitaal) values (true, true);

--
-- table leeftijd categorie
--
insert into leeftijd_categorie (leeftijd_categorie, waarschuwing) values ("12", "geweld, in game aankopen");
insert into leeftijd_categorie (leeftijd_categorie, waarschuwing) values ("7", "-");
insert into leeftijd_categorie (leeftijd_categorie, waarschuwing) values ("18", "geweld");
insert into leeftijd_categorie (leeftijd_categorie, waarschuwing) values ("12", "geweld");
insert into leeftijd_categorie (leeftijd_categorie, waarschuwing) values ("16", "geweld, in game aankopen");
insert into leeftijd_categorie (leeftijd_categorie, waarschuwing) values ("18", "geweld, grof taalgebruik");
insert into leeftijd_categorie (leeftijd_categorie, waarschuwing) values ("16", "geweld, angst");
insert into leeftijd_categorie (leeftijd_categorie, waarschuwing) values ("12", "-");
insert into leeftijd_categorie (leeftijd_categorie, waarschuwing) values ("7", "in game aankopen");
insert into leeftijd_categorie (leeftijd_categorie, waarschuwing) values ("18", "geweld");


