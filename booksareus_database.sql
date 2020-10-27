CREATE DATABASE booksareus;
USE booksareus;

CREATE TABLE users 
(
    user_id INT NOT NULL,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    phone_number VARCHAR(11) NOT NULL,
    email VARCHAR(64) NOT NULL
    PRIMARY KEY (user_id)
);

CREATE TABLE ebooks
(
    ebook_id INT NOT NULL,
    title VARCHAR(64) NOT NULL,
    ebook_location VARCHAR(64) NOT NULL,
    release_date DATE NOT NULL,
    user_id INT,
    PRIMARY KEY (ebook_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) 
);

CREATE TABLE bookings
(
    booking_id INT NOT NULL,
    ebook_id INT NOT NULL,
    user_id INT NOT NULL,
    booking_date DATE NOT NULL,
    price DECIMAL(5,2) NOT NULL
    PRIMARY KEY (booking_id),
    FOREIGN KEY (ebook_id) REFERENCES ebooks(ebook_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);