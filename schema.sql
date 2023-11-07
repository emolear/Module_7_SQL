-- Drop table if exists

DROP TABLE IF EXISTS card_holder;
DROP TABLE IF EXISTS credit_card;
DROP TABLE IF EXISTS merchant_category;
DROP TABLE IF EXISTS merchant;
DROP TABLE IF EXISTS transaction;

-- Create new table
CREATE TABLE card_holder (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
);

-- Create new table to import data
CREATE TABLE credit_card (
  card SERIAL PRIMARY KEY,
  cardholder_id  INT,
);

-- Create new table to import data
CREATE TABLE merchant_category (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
);

-- Create new table to import data
CREATE TABLE merchant (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  id_merchant_category VARCHAR(50),
);

-- Create new table to import data
CREATE TABLE transaction (
  id SERIAL PRIMARY KEY,
  date DATE,
  amount FLOAT,
  card INT,
  id_merchant INT,
 );


