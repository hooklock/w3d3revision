DROP TABLE CARS;

CREATE TABLE dealerships(
  id SERIAL4 primary key,
  name VARCHAR(255),
  address1  VARCHAR(255),
  make VARCHAR(255)
);

CREATE TABLE cars(
  id SERIAL4 primary key,
  model VARCHAR(255),
  fuel VARCHAR(255),
  engine VARCHAR(255),
  transmission VARCHAR(255),
  picture VARCHAR(255),
  dealer_id INT4 references dealerships(id) ON DELETE CASCADE
);