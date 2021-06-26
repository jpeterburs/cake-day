CREATE DATABASE IF NOT EXISTS cake_day;

CREATE TABLE IF NOT EXISTS cake_day.users (
  discord_id BIGINT NOT NULL,
  birthdate DATE NOT NULL,
  server_id BIGINT NOT NULL
);