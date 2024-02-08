-- V1__Create_users_table.sql
CREATE TABLE IF NOT EXISTS users_table (
                                           id INT AUTO_INCREMENT PRIMARY KEY,
                                           first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
    );
