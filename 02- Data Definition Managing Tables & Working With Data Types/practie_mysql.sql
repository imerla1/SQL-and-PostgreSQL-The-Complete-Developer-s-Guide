# create a new database for the shop

CREATE DATABASE shop;

# add a table for the products
# Choose appropriate column names + data types
create table products
(
    product_name        varchar(300),
    product_price       FLOAT,
    product_quantity    NUMERIC,
    product_manufacture VARCHAR(300)
);


# insert dummy data

insert into products (product_name, product_price, product_quantity, product_manufacture)
VALUES ('chair',
        25,
        350,
        'kiosk');

# Update table and add sensible constraints

alter table products
    modify column product_name varchar(300) not null,
    modify column product_price varchar(300) not null check ( product_price > 0 ),
    modify column product_quantity NUMERIC not null,
    modify column product_manufacture VARCHAR(300) not null;

# Update table and add primary key

alter table products
add column product_id INT AUTO_INCREMENT PRIMARY KEY;