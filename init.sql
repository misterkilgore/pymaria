DROP DATABASE IF EXISTS shop;

CREATE DATABASE shop;
USE shop;

CREATE TABLE client (
  client_id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50)
);

CREATE TABLE product (
  product_id INT PRIMARY KEY,
  name VARCHAR(50),
  price DECIMAL(10,2),
  stock INT
);

CREATE TABLE purchase (
  purchase_id INT PRIMARY KEY,
  client_id INT,
  order_date DATE,
  FOREIGN KEY (client_id) REFERENCES client(client_id)
);

CREATE TABLE orderdetail (
  orderdetail_id INT PRIMARY KEY,
  purchase_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (purchase_id) REFERENCES purchase(purchase_id),
  FOREIGN KEY (product_id) REFERENCES product(product_id)
);

INSERT INTO client (client_id, name, email) VALUES
(1, 'Luca Rossi', 'luca.rossi@example.com'),
(2, 'Maria Bianchi', 'maria.bianchi@example.com'),
(3, 'Giovanni Verdi', 'giovanni.verdi@example.com');

INSERT INTO product (product_id, name, price, stock) VALUES
(1, 'Laptop Dell XPS 13', 1200.00, 15),
(2, 'Mouse Logitech MX Master 3', 99.99, 50),
(3, 'Tastiera meccanica Corsair', 150.00, 30),
(4, 'Monitor LG UltraFine 27"', 450.00, 20),
(5, 'Hard Disk SSD Samsung 1TB', 130.00, 40);

INSERT INTO purchase (purchase_id, client_id, order_date) VALUES
(1, 1, '2026-01-10'),
(2, 2, '2026-01-11'),
(3, 3, '2026-01-12');

INSERT INTO orderdetail (orderdetail_id, purchase_id, product_id, quantity) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1),
(4, 2, 5, 1),
(5, 3, 4, 2),
(6, 3, 2, 1);