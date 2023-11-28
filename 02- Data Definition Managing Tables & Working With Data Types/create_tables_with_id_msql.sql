CREATE TABLE employers (
    employer_id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(250) not null,
    company_address VARCHAR(300) not null,
    yearly_revenue INT check ( yearly_revenue > 0 ),
    is_hiring BOOLEAN default FALSE
);

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(300) not null,
    yearly_salary float,
    status enum ('employed', 'self-employed', 'unemployed') not null
);


CREATE TABLE conversation (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(250) not null,
    employer_name varchar(250) not null,
    message text,
    date_sent timestamp default CURRENT_TIMESTAMP not null
);
