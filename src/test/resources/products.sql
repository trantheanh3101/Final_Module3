create table products
(
    id             int auto_increment
        primary key,
    name           varchar(255)               not null,
    price          decimal(10, 2)             not null,
    discount       decimal(5, 2) default 0.00 null,
    stock_quantity int           default 0    null
);

INSERT INTO codegym_db.products (id, name, price, discount, stock_quantity) VALUES (1, 'Laptop Dell XPS 13', 1500.00, 0.00, 50);
INSERT INTO codegym_db.products (id, name, price, discount, stock_quantity) VALUES (2, 'Smartphone iPhone 12 Pro', 1200.00, 0.00, 30);
INSERT INTO codegym_db.products (id, name, price, discount, stock_quantity) VALUES (3, 'Monitor Samsung 27 inch', 300.00, 0.00, 20);
INSERT INTO codegym_db.products (id, name, price, discount, stock_quantity) VALUES (4, 'Keyboard Logitech G Pro', 100.00, 0.00, 100);
INSERT INTO codegym_db.products (id, name, price, discount, stock_quantity) VALUES (5, 'Mouse Wireless Microsoft', 50.00, 0.00, 80);
INSERT INTO codegym_db.products (id, name, price, discount, stock_quantity) VALUES (6, 'Headphones Sony WH-1000XM4', 300.00, 0.00, 40);
INSERT INTO codegym_db.products (id, name, price, discount, stock_quantity) VALUES (7, 'External SSD Samsung 1TB', 200.00, 0.00, 60);
INSERT INTO codegym_db.products (id, name, price, discount, stock_quantity) VALUES (8, 'Printer HP LaserJet Pro', 150.00, 0.00, 25);
INSERT INTO codegym_db.products (id, name, price, discount, stock_quantity) VALUES (9, 'Tablet iPad Air', 600.00, 0.00, 15);
INSERT INTO codegym_db.products (id, name, price, discount, stock_quantity) VALUES (10, 'Camera Sony Alpha 7 III', 2000.00, 0.00, 10);
INSERT INTO codegym_db.products (id, name, price, discount, stock_quantity) VALUES (11, 'Alan Tran', 2000.00, 10.00, 20);
INSERT INTO codegym_db.products (id, name, price, discount, stock_quantity) VALUES (12, 'trần thế anh', 200.00, 15.00, 50);
