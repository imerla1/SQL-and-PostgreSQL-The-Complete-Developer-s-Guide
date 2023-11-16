ALTER TABLE employers
MODIFY COLUMN yearly_revenue FLOAT;

ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300);


-- Add NOT null CONSTRAINT
alter table users
MODIFY column full_name VARCHAR(300) not null,
MODIFY COLUMN status ENUM('employed', 'self-employed', 'unemployed') not null;