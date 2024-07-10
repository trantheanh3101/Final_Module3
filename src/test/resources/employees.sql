create table employees
(
    id            int auto_increment
        primary key,
    name          varchar(255) not null,
    date_of_birth date         null,
    address       varchar(255) null
);

INSERT INTO codegym_db.employees (id, name, date_of_birth, address) VALUES (1, 'John Doe', '1990-05-15', '123 Main St, Anytown');
INSERT INTO codegym_db.employees (id, name, date_of_birth, address) VALUES (2, 'Jane Smith', '1985-08-20', '456 Oak Ave, Another City');
INSERT INTO codegym_db.employees (id, name, date_of_birth, address) VALUES (3, 'Michael Johnson', '1988-11-10', '789 Elm Blvd, Somewhere');
INSERT INTO codegym_db.employees (id, name, date_of_birth, address) VALUES (4, 'Emily Brown', '1992-03-25', '567 Pine Rd, Elsewhere');
INSERT INTO codegym_db.employees (id, name, date_of_birth, address) VALUES (5, 'David Wilson', '1987-07-05', '321 Maple Dr, Nowhere');
INSERT INTO codegym_db.employees (id, name, date_of_birth, address) VALUES (6, 'Sarah Martinez', '1995-01-30', '876 Birch Lane, Anywhere');
INSERT INTO codegym_db.employees (id, name, date_of_birth, address) VALUES (7, 'Jason Taylor', '1983-09-12', '654 Cedar St, Everywhere');
INSERT INTO codegym_db.employees (id, name, date_of_birth, address) VALUES (8, 'Emma Garcia', '1991-06-18', '234 Spruce Ave, Nowhereville');
INSERT INTO codegym_db.employees (id, name, date_of_birth, address) VALUES (9, 'Matthew Anderson', '1989-04-08', '432 Fir Blvd, Here');
INSERT INTO codegym_db.employees (id, name, date_of_birth, address) VALUES (10, 'Olivia Lopez', '1993-02-28', '789 Pineapple Rd, There');
