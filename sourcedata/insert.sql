COPY smb_one.character FROM '/var/lib/postgresql/csvs/characters.csv' WITH DELIMITER ';' CSV HEADER;
COPY smb_one.enemy FROM '/var/lib/postgresql/csvs/enemies.csv' WITH DELIMITER ';' CSV HEADER;
COPY smb_one.powerbooster FROM '/var/lib/postgresql/csvs/powerboosters.csv' WITH DELIMITER ';' CSV HEADER;
COPY smb_one.world FROM '/var/lib/postgresql/csvs/worlds.csv' WITH CSV HEADER;
