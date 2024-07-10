create table orders
(
    id               int auto_increment
        primary key,
    payment_method   varchar(100)                        not null,
    customer_id      int                                 null,
    employee_id      int                                 null,
    order_date       timestamp default CURRENT_TIMESTAMP null,
    delivery_date    timestamp                           null,
    delivery_address varchar(255)                        null,
    constraint orders_ibfk_1
        foreign key (customer_id) references customers (id),
    constraint orders_ibfk_2
        foreign key (employee_id) references employees (id)
);

create index customer_id
    on orders (customer_id);

create index employee_id
    on orders (employee_id);

INSERT INTO codegym_db.orders (id, payment_method, customer_id, employee_id, order_date, delivery_date, delivery_address) VALUES (1, 'Credit Card', 1, 1, '2024-07-10 09:04:48', '2024-07-15 00:00:00', '123 Main St, Anytown');
INSERT INTO codegym_db.orders (id, payment_method, customer_id, employee_id, order_date, delivery_date, delivery_address) VALUES (2, 'PayPal', 2, 2, '2024-07-10 09:04:48', '2024-07-16 00:00:00', '456 Oak Ave, Another City');
INSERT INTO codegym_db.orders (id, payment_method, customer_id, employee_id, order_date, delivery_date, delivery_address) VALUES (3, 'Cash on Delivery', 3, 3, '2024-07-10 09:04:48', '2024-07-17 00:00:00', '789 Elm Blvd, Somewhere');
INSERT INTO codegym_db.orders (id, payment_method, customer_id, employee_id, order_date, delivery_date, delivery_address) VALUES (4, 'Bank Transfer', 4, 4, '2024-07-10 09:04:48', '2024-07-18 00:00:00', '567 Pine Rd, Elsewhere');
INSERT INTO codegym_db.orders (id, payment_method, customer_id, employee_id, order_date, delivery_date, delivery_address) VALUES (5, 'Credit Card', 5, 5, '2024-07-10 09:04:48', '2024-07-19 00:00:00', '321 Maple Dr, Nowhere');
INSERT INTO codegym_db.orders (id, payment_method, customer_id, employee_id, order_date, delivery_date, delivery_address) VALUES (6, 'PayPal', 6, 6, '2024-07-10 09:04:48', '2024-07-20 00:00:00', '876 Birch Lane, Anywhere');
INSERT INTO codegym_db.orders (id, payment_method, customer_id, employee_id, order_date, delivery_date, delivery_address) VALUES (7, 'Cash on Delivery', 7, 7, '2024-07-10 09:04:48', '2024-07-21 00:00:00', '654 Cedar St, Everywhere');
INSERT INTO codegym_db.orders (id, payment_method, customer_id, employee_id, order_date, delivery_date, delivery_address) VALUES (8, 'Bank Transfer', 8, 8, '2024-07-10 09:04:48', '2024-07-22 00:00:00', '234 Spruce Ave, Nowhereville');
INSERT INTO codegym_db.orders (id, payment_method, customer_id, employee_id, order_date, delivery_date, delivery_address) VALUES (9, 'Credit Card', 9, 9, '2024-07-10 09:04:48', '2024-07-23 00:00:00', '432 Fir Blvd, Here');
INSERT INTO codegym_db.orders (id, payment_method, customer_id, employee_id, order_date, delivery_date, delivery_address) VALUES (10, 'PayPal', 10, 10, '2024-07-10 09:04:48', '2024-07-24 00:00:00', '789 Pineapple Rd, There');
