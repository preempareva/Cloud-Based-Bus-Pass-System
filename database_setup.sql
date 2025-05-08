-- Create the travel database if it doesn't exist
CREATE DATABASE IF NOT EXISTS travel;
USE travel;

-- Create destination table
CREATE TABLE IF NOT EXISTS destination (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL DEFAULT 0.00
);

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    contact VARCHAR(15) NOT NULL,
    password VARCHAR(255) NOT NULL,
    valid_till DATE NOT NULL,
    destination VARCHAR(100) NOT NULL,
    status VARCHAR(20) DEFAULT 'active'
);

-- Create passes table
CREATE TABLE IF NOT EXISTS passes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    issue_date DATE NOT NULL,
    valid_till DATE NOT NULL,
    destination VARCHAR(100) NOT NULL,
    status VARCHAR(20) DEFAULT 'active',
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Insert some default destinations with prices
INSERT INTO destination (name, price) VALUES 
('Mathura', 500.00),
('Vrindavan', 450.00),
('Agra', 600.00),
('Delhi', 800.00); 