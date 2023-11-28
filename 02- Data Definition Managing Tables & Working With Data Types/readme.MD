## ENUMS


### ENUMs in MySQL:
In MySQL, ENUM is a column data type that represents a set of predefined values. When you define an ENUM column, you specify a list of allowed values. Here's an example:

```sql
-- Create a table with ENUM in MySQL
CREATE TABLE status_types_mysql (
    status_id INT PRIMARY KEY,
    status_name ENUM('Pending', 'Processing', 'Completed', 'Cancelled') NOT NULL
);

```

### ENUMs in PostgreSQL:

PostgreSQL also supports ENUM as a column data type, but the implementation is slightly different. In PostgreSQL, you first need to define the ENUM type before using it in a table. Here's an example:


```sql
-- Create an ENUM type in PostgreSQL
CREATE TYPE status_enum AS ENUM ('Pending', 'Processing', 'Completed', 'Cancelled');

-- Create a table with ENUM in PostgreSQL
CREATE TABLE status_types_postgresql (
    status_id SERIAL PRIMARY KEY,
    status_name status_enum NOT NULL
);
```

### Differences:
ENUM Declaration Syntax:

* MySQL: The allowed values are listed directly in the ENUM column declaration.
* PostgreSQL: You first create an ENUM type and then use it in the table definition.


## Inserting

```sql
-- Inserting a single row into the users table
INSERT INTO users (username, email, created_at)
VALUES ('john_doe', 'john@example.com', NOW());

-- Inserting multiple rows into the orders table
INSERT INTO orders (user_id, product_name, order_date)
VALUES
    (1, 'Product A', '2023-01-01'),
    (2, 'Product B', '2023-01-02');

```

## DEFAULT VALUES

The DEFAULT keyword in SQL is used to provide a default value for a column when no explicit value is specified during an INSERT operation. Both PostgreSQL and MySQL support the DEFAULT keyword, but there are some differences in how it's used.


### DEFAULT Values in MySQL:

In MySQL, you can use the `DEFAULT` keyword to specify a default value for a column when defining the table:

```sql
-- Create a table with a column having a default value in MySQL
CREATE TABLE my_table_mysql (
    id INT,
    name VARCHAR(50) DEFAULT 'Unknown'
);

-- Inserting data into the table without specifying a value for the 'name' column
INSERT INTO my_table_mysql (id) VALUES (1);

```

In this example, if you don't provide a value for the 'name' column during the `INSERT` operation, it will be set to the default value 'Unknown'.

## DROP TABLE
To delete a table in both MySQL and PostgreSQL, you use the DROP TABLE statement. However, it's important to note that dropping a table will permanently delete all the data stored in that table, and the table structure will no longer exist in the database. Be sure to use this command with caution, especially in a production environment.

```sql
DROP TABLE IF EXISTS your_table_name;
```

## UPDATE Tables & Columns

### Changing Column Type in MySQL:
In MySQL, you can use the `MODIFY` clause within the `ALTER TABLE` statement to change the data type of a column:

```sql
-- Change the data type of a column in MySQL
ALTER TABLE your_table_name
MODIFY COLUMN your_column_name new_data_type;
```


### Changing Column Type in PostgreSQL:

In `PostgreSQL`, you use the `ALTER TABLE` statement with the `ALTER COLUMN` clause to change the data type of a column:

```sql
-- Change the data type of a column in PostgreSQL
ALTER TABLE your_table_name
ALTER COLUMN your_column_name TYPE new_data_type;
```