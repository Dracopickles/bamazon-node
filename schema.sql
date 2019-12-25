DROP DATABASE IF EXISTS bamazon_DB;

CREATE DATABASE bamazon_DB;

Use bamazon_DB;

CREATE TABLE products (
  item_id INTEGER NOT NULL AUTO_INCREMENT,
product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price DECIMAL(10,2) NOT NULL,
stock_quality INTEGER(10) NOT NULL,
PRIMARY KEY(item_id)
);

INSERT INTO products (product_name, department_name,price,stock_quality)
VALUES ("Digimon World 1", "Video Games", 50.99, 100);

INSERT INTO products (product_name, department_name,price,stock_quality)
VALUES ("Jak and Daxter 3", "Video Games", 40.45, 50);

INSERT INTO products (product_name, department_name,price,stock_quality)
VALUES ("Hammer", "Tools", 10.50, 400);

INSERT INTO products (product_name, department_name,price,stock_quality)
VALUES ("Bolts", "Tools", .50, 1000);

INSERT INTO products (product_name, department_name,price,stock_quality)
VALUES ("Monster Hunter", "Video Games", 60.50, 20);

INSERT INTO products (product_name, department_name,price,stock_quality)
VALUES ("Apples", "Grocery", .50, 500);

INSERT INTO products (product_name, department_name,price,stock_quality)
VALUES ("Cat Food", "Pets", 1.50, 5000);

INSERT INTO products (product_name, department_name,price,stock_quality)
VALUES ("Borderlands", "Video Games", 49.99, 500);

INSERT INTO products (product_name, department_name,price,stock_quality)
VALUES ("Dark Souls", "Video Games", 60.99, 1000);

INSERT INTO products (product_name, department_name,price,stock_quality)
VALUES ("Dragons Dogma", "Video Games", 35.99, 5);

