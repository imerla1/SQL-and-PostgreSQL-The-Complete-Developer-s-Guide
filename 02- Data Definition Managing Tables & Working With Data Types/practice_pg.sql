-- create a new database for the shop
CREATE DATABASE shop;

-- add a table for the products
-- Choose appropriate column names + data types

create table products
(
    product_name        varchar(300),
    product_price       FLOAT,
    product_quantity    NUMERIC,
    product_manufacture VARCHAR(300)
);


-- # insert dummy data
insert into products (product_name, product_price, product_quantity, product_manufacture)
VALUES ('Off-white Sneakers',
        398,
        200,
        'Off-white CO VIRGIL');

-- # Update table and add sensible constraints
alter table products
    alter column product_name set not null,
    alter column product_price set not null,
    add constraint check_product_price CHECK ( product_price > 0 ),
    alter column product_quantity set not null,
    alter column product_manufacture set not null;

-- # Update table and add primary key
alter table products
add column product_id SERIAL;
