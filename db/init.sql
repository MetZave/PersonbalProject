DROP TABLE IF EXISTS bills
DROP TABLE IF EXISTS groups
DROP TABLE IF EXISTS users


CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(250),
    password VARCHAR(3000)
);

CREATE TABLE groups (
    group_id SERIAL PRIMARY KEY,
    group_name VARCHAR(300),
    admin_user_id INT REFERENCES users(user_id)
);

CREATE TABLE bills (
    bill_id SERIAL PRIMARY KEY,
    bill_name VARCHAR(100),
    user_id INT REFERENCES users(user_id),
    group_id INT REFERENCES groups(group_id)
);