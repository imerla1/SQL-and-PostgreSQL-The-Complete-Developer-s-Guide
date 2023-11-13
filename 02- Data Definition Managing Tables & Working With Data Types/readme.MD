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