-- +micrate Up
CREATE TABLE activities (
  id BIGSERIAL PRIMARY KEY,
  description VARCHAR,
  owner VARCHAR,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);


-- +micrate Down
DROP TABLE IF EXISTS activities;
