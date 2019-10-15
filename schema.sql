DROP DATABASE IF EXISTS bamazon_DB;

CREATE DATABASE bamazon_DB;

CREATE TABLE products (
  item_id INTEGER NOT NULL AUTO_INCREMENT,
product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price DECIMAL(10,2) NOT NULL,
stock_quality INTEGER(10) NOT NULL,
PRIMARY KEY(item_id)
);



