create table customers
(
    id            int auto_increment
        primary key,
    name          varchar(255) not null,
    date_of_birth date         null,
    phone         varchar(20)  null,
    address       varchar(255) null,
    email         varchar(100) null
);

INSERT INTO codegym_db.customers (id, name, date_of_birth, phone, address, email) VALUES (1, 'Alice Johnson', '1987-12-10', '123-456-7890', '789 Oak St, Anytown', 'alice@example.com');
INSERT INTO codegym_db.customers (id, name, date_of_birth, phone, address, email) VALUES (2, 'Bob Smith', '1990-06-25', '234-567-8901', '456 Elm Ave, Another City', 'bob@example.com');
INSERT INTO codegym_db.customers (id, name, date_of_birth, phone, address, email) VALUES (3, 'Carol Williams', '1988-03-15', '345-678-9012', '567 Pine St, Somewhere', 'carol@example.com');
INSERT INTO codegym_db.customers (id, name, date_of_birth, phone, address, email) VALUES (4, 'David Brown', '1992-09-05', '456-789-0123', '678 Maple Rd, Elsewhere', 'david@example.com');
INSERT INTO codegym_db.customers (id, name, date_of_birth, phone, address, email) VALUES (5, 'Eva Garcia', '1985-11-20', '567-890-1234', '789 Birch Blvd, Nowhere', 'eva@example.com');
INSERT INTO codegym_db.customers (id, name, date_of_birth, phone, address, email) VALUES (6, 'Frank Martinez', '1993-04-30', '678-901-2345', '890 Cedar Ave, Anywhere', 'frank@example.com');
INSERT INTO codegym_db.customers (id, name, date_of_birth, phone, address, email) VALUES (7, 'Grace Taylor', '1989-08-08', '789-012-3456', '987 Spruce Rd, Everywhere', 'grace@example.com');
INSERT INTO codegym_db.customers (id, name, date_of_birth, phone, address, email) VALUES (8, 'Henry Wilson', '1991-02-18', '890-123-4567', '876 Fir St, Nowhereville', 'henry@example.com');
INSERT INTO codegym_db.customers (id, name, date_of_birth, phone, address, email) VALUES (9, 'Ivy Anderson', '1986-07-22', '901-234-5678', '765 Pineapple Ave, Here', 'ivy@example.com');
INSERT INTO codegym_db.customers (id, name, date_of_birth, phone, address, email) VALUES (10, 'Jack Lopez', '1994-01-12', '012-345-6789', '654 Orange Blvd, There', 'jack@example.com');
