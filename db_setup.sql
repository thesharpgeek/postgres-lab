----------------------
--      |
-- //\\(Oo_oO))//\\
--        ``
-- Author: jsharp
----------------------
-- README
-- -- Script for setting up a newly installed postgres lab environment

-- Create app user(s).
CREATE USER zookeeper WITH
	LOGIN
	NOSUPERUSER
	CREATEDB
	NOCREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'myzoo';

-- Create tablespace for zoo database
-- Directory should not be in the data directory
CREATE TABLESPACE zoodata
  OWNER zookeeper
  LOCATION '/Users/jessica.sharp/Library/Application Support/Postgres/tbsp/';

ALTER TABLESPACE zoodata
  OWNER TO zookeeper;

-- Create non-default database and give app user full access. 
CREATE DATABASE zoo
    WITH 
    OWNER = zookeeper
    ENCODING = 'UTF8'
    TABLESPACE = zoodata
    CONNECTION LIMIT = 10;

COMMENT ON DATABASE zoo
    IS 'lab database for testing';

-- . Create sample schema owned by app user.
CREATE SCHEMA IF NOT EXISTS zookeeper AUTHORIZATION zookeeper;

-- . Create table(s).
-- -- TABLE 1
CREATE TABLE "zoo.zookeeper.reptile"
(
    rep_id NUMERIC NOT NULL,
    species VARCHAR,
    name VARCHAR,
    dob DATE,
    -- Primary key
    CONSTRAINT reptile_pkey PRIMARY KEY (rep_id)
)
TABLESPACE zoodata;

ALTER TABLE "zoo.zookeeper.reptile"
    OWNER TO zookeeper;

-- -- TABLE 2
CREATE TABLE "zoo.zookeeper.bird"
(
    bird_id NUMERIC NOT NULL,
    species VARCHAR,
    name VARCHAR,
    dob DATE,
    CONSTRAINT bird_pkey PRIMARY KEY (bird_id)
)
WITH 
TABLESPACE zoodata;

ALTER TABLE "zoo.zookeeper.bird"
    OWNER TO zookeeper;

-- -- TABLE 3
CREATE TABLE "zoo.zookeeper.arachnid"
(
    spooder_id NUMERIC NOT NULL,
    species VARCHAR,
    name VARCHAR,
    dob DATE,
    CONSTRAINT spooder_id PRIMARY KEY (spooder_id)
)
WITH TABLESPACE zoodata;

ALTER TABLE "zoo.zookeeper.arachnid"
    OWNER TO zookeeper;