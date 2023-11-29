-- in pg we have to create CUSTOM type first for ENUM
CREATE TYPE employment_status AS ENUM(
    'employed',
    'self-employed',
    'unemployed'
);

CREATE TABLE users (
    full_name VARCHAR(200),
    yearly_salary INT

    );