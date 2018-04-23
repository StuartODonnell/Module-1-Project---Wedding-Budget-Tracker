DROP TABLE items;
DROP TABLE vendors;
DROP TABLE categories;



CREATE TABLE vendors (
id SERIAL8 PRIMARY KEY,
name VARCHAR (255)

);

CREATE TABLE categories (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR (255)
);

CREATE TABLE items (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  cost INT,
  vendor_id INT8 REFERENCES vendors(id) ON DELETE CASCADE,
  category_id INT8 REFERENCES categories(id) ON DELETE CASCADE
);
