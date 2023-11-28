create type employment_status as enum  (
    'employed', 'self-employed', 'unemployed'
    );

CREATE TABLE employers (
    employer_id SERIAL,
    company_name VARCHAR(250) not null,
    company_address VARCHAR(300) not null,
    yearly_revenue INT check ( yearly_revenue > 0 ),
    is_hiring BOOLEAN default FALSE
);

CREATE TABLE users (
    user_id SERIAL,
    full_name VARCHAR(300) not null,
    yearly_salary float,
    status employment_status not null
);


CREATE TABLE conversation (
    conversation_id SERIAL,
    user_name VARCHAR(250) not null,
    employer_name varchar(250) not null,
    message text,
    date_sent timestamp default CURRENT_TIMESTAMP not null
)