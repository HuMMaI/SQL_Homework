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

CREATE TABLE book_catalog(
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
    ('How Quickly She Disappears', 'The Dry meets Silence of the Lambs in this intoxicating tale of literary suspense set in the relentless Alaskan landscape about madness and obsession, loneliness and grief, and the ferocious bonds of family …', 18.27, 9781984805171, 4),
    ('Prosper\'s Demon', 'In the pitch dark, witty fantasy novella Prosper\'s Demon, K. J. Parker deftly creates a world with vivid, unbending rules, seething with demons, broken faith, and worse men.', 9.76, 9781250260505, 5),
    ('Goodbye Nothing', 'Since the night of the accident, Cain Emmerick has felt different. Empty. What was important to him—family, friends, his job—doesn\'t matter anymore. His new life revolves around that Nothing inside of him and the extraordinary highs he gets from committing random acts of violence.', 28.5, 9780985732721, 5);
    
INSERT INTO authors_info(name, surname, email, address, birth_date) VALUES
		('Kim',	'Taylor', 'kim.t@gmail.com', '41 Park Lane, London', '1988-05-24'),
        ('Adam', 'Silvera', 'adam.sil@gmail.com', '61 Church Lane, London', '1996-01-18'),
        ('Seanan', 'McGuire', 'mc.guire@gmail.com', '9014 Green Lane, London', '1986-08-02'),
        ('Emma', 'Copley', 'emma.copley@gmail.com', '44 The Green, London', '1982-02-10'),
        ('Howard', 'Axelrod', 'how.axel@gmail.com', '57 George Street, London', '1975-07-19'),
        ('Maureen', 'Johnson', 'maureen.j@gmail.com', '9919 Manor Road, London', '1990-10-20');
        
INSERT INTO book_catalog(book_id, author_id) VALUES
	(1, 1), (1, 2), (2, 4), (3, 4), (4, 3), (4, 4);
    
SELECT b.id, b.title, b.isbn, bg.name AS genre FROM books AS b
JOIN book_genres AS bg
ON b.genre_id = bg.id;

SELECT bc.id, b.title, b.isbn, 
	b.price, bg.name AS genre, ai.name AS author_name, 
    ai.surname AS author_surname, ai.email AS author_email, ai.address AS author_address,
    ai.birth_date AS author_birth_date FROM book_catalog AS bc
JOIN books AS b
ON bc.book_id = b.id
JOIN book_genres AS bg
ON b.genre_id = bg.id
RIGHT JOIN authors_info AS ai
ON ai.id = bc.author_id;

SELECT b.id, b.title, b.isbn, bg.name AS genre FROM books AS b
JOIN book_genres AS bg
ON b.genre_id = bg.id
WHERE bg.name = 'Horror'
ORDER BY b.title ASC;