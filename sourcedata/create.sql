CREATE SCHEMA IF NOT EXISTS smb_one;

CREATE TABLE IF NOT EXISTS smb_one.character (
  name varchar(250) NOT NULL,
  description varchar(250) NOT NULL,
  PRIMARY KEY (name)
);

CREATE TABLE IF NOT EXISTS smb_one.enemy (
  name varchar(250) NOT NULL,
  description varchar(250) NOT NULL,
  points integer,
  PRIMARY KEY (name)
);

CREATE TABLE IF NOT EXISTS smb_one.powerbooster (
  name varchar(250) NOT NULL,
  transformation varchar(250) NOT NULL,
  PRIMARY KEY (name)
);

CREATE TABLE IF NOT EXISTS smb_one.world (
  name varchar(250) NOT NULL,
  description varchar(250) NOT NULL,
  secondary varchar(250),
  PRIMARY KEY (name)
);