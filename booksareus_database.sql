CREATE DATABASE booksareus;
USE booksareus;

CREATE TABLE users 
(
    user_id INT NOT NULL IDENTITY(1,1),
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    phone_number VARCHAR(11) NOT NULL,
    email VARCHAR(64) NOT NULL
    PRIMARY KEY (user_id)
);

CREATE TABLE ebooks
(
    ebook_id INT NOT NULL IDENTITY(1,1),
    title VARCHAR(64) NOT NULL,
    ebook_location VARCHAR(64) NOT NULL,
    release_date DATE NOT NULL,
    user_id INT,
    PRIMARY KEY (ebook_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) 
);

CREATE TABLE bookings
(
    booking_id INT NOT NULL IDENTITY(1,1),
    ebook_id INT NOT NULL,
    user_id INT NOT NULL,
    booking_date DATE NOT NULL,
    price DECIMAL(5,2) NOT NULL
    PRIMARY KEY (booking_id),
    FOREIGN KEY (ebook_id) REFERENCES ebooks(ebook_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Input data into user
INSERT INTO users(first_name, last_name, phone_number, email);
VALUES ('Jane', 'McLewsky', '07695456407', 'J.McLew@yahoo.com');

INSERT INTO users(first_name, last_name, phone_number, email);
VALUES ('Micheal', 'Leach', '07695488407', 'mikeleach@gmail.com');

-- Input data into ebooks
INSERT INTO ebooks(title, ebook_location, release_date, user_id);
VALUES ('Naughts and crosses', 'N123', '08/24/98', 1)

INSERT INTO ebooks(title, ebook_location, release_date, user_id);
VALUES ('Thunderstruck', 'T89', '12/04/98', 2)

-- Input data into bookings
INSERT INTO bookings(ebook_id, user_id, booking_date, price);
VALUES (1, 2, '11/04/16', '4.99')

INSERT INTO bookings(ebook_id, user_id, booking_date, price);
VALUES (2, 1, '01/30/18', '8.99')

INSERT INTO bookings(ebook_id, user_id, booking_date, price);
VALUES (2, 2, '20/30/18', '8.99')