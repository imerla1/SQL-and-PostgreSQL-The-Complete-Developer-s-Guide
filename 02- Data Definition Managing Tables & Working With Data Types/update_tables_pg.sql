ALTER TABLE  employers
ALTER COLUMN yearly_revenue SET DATA TYPE FLOAT;


ALTER TABLE users
ALTER COLUMN full_name SET DATA TYPE VARCHAR(300);


-- Add NOT null CONSTRAINT
ALTER TABLE employers
ALTER COLUMN company_address SET not null,
ALTER COLUMN company_name SET NOT NULL;

ALTER TABLE users
ALTER column full_name set not null,
ALTER COLUMN current_status set not null ;