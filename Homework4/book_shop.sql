DROP DATABASE IF EXISTS book_shop;
CREATE DATABASE book_shop;

USE book_shop;

CREATE TABLE book_genres(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL
);

CREATE TABLE authors_info(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    surname VARCHAR(45) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(150) NOT NULL,
    birth_date DATE NOT NULL
);

CREATE TABLE books(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(120) NOT NULL UNIQUE,
    description TEXT,
    price REAL NOT NULL,
    isbn BIGINT NOT NULL,
    genre_id INT NOT NULL,
    CONSTRAINT book_genre_FK FOREIGN KEY (genre_id) REFERENCES book_genres(id)
);

CREATE TABLE book_author_mapping(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    book_id INT NOT NULL,
    CONSTRAINT book_FK FOREIGN KEY (book_id) REFERENCES books(id),
    author_id INT NOT NULL,
    CONSTRAINT author_info_FK FOREIGN KEY (author_id) REFERENCES authors_info(id)
);

INSERT INTO book_genres(name) VALUES 
	('Crime'), ('Fantasy'), ('Psychology'), ('Mystery'), ('Horror'), ('Suspense'), ('Thriller'), ('Romance'), ('Travel');
        
INSERT INTO books(title, description, price, isbn, genre_id) VALUES
	('The Companion', 'They say she’s a murderess. She claims she’s innocent. But Lucy has been known to tell lies...', 14.5234, 9781978679153, 1),
    ('Infinity Son', 'Balancing epic and intensely personal stakes, bestselling author Adam Silvera’s Infinity Son is a gritty, fast-paced adventure about two brothers caught up in a magical war generations in the making.', 18.14, 9781471187803, 2),
    ('The Other People', 'A gripping new thriller about a man\'s quest for the daughter no one else believes is still alive, from the acclaimed author of The Chalk Man and The Hiding Place.', 19.33, 9781984824998, 5),
    ('How Quickly She Disappears', 'The Dry meets Silence of the Lambs in this intoxicating tale of literary suspense set in the relentless Alaskan landscape about madness and obsession, loneliness and grief, and the ferocious bonds of family …', 18.27, 9781984805171, 4);
    
INSERT INTO authors_info(name, surname, email, address, birth_date) VALUES
		('Kim',	'Taylor', 'kim.t@gmail.com', '41 Park Lane, London', '1988-05-24'),
        ('Adam', 'Silvera', 'adam.sil@gmail.com', '61 Church Lane, London', '1996-01-18'),
        ('Seanan', 'McGuire', 'mc.guire@gmail.com', '9014 Green Lane, London', '1986-08-02'),
        ('Emma', 'Copley', 'emma.copley@gmail.com', '44 The Green, London', '1982-02-10');
        
INSERT INTO book_author_mapping(book_id, author_id) VALUES
	(1, 1), (1, 2), (2, 4), (3, 4), (4, 3), (4, 4);