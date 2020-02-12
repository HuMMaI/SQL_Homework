CREATE DATABASE IF NOT EXISTS library;

USE library;
CREATE TABLE books (
	id INT PRIMARY KEY auto_increment,
	title VARCHAR(120) NOT NULL,
    description VARCHAR(225) DEFAULT "Description is missing",
    date_of_publication DATE NOT NULL DEFAULT "2018-01-01",
    author VARCHAR(60) NOT NULL,
    category VARCHAR(30) NOT NULL
);

INSERT INTO books (title, date_of_publication, author, category)
VALUES
	("Fight of the Century", 
	 "2020-01-21",
	 "Michael Chabon",
     "History");
INSERT INTO books (title, description, author, category)
VALUES
     ("Overground Railroad: The Green Book & Roots of Black Travel in America", 
     "The first book to explore the historical role and residual impact of the Green Book, a travel guide for black motorists",
	 "Candacy A. Taylor",
     "History");
INSERT INTO books (title, description, date_of_publication, author, category)
VALUES
     ("Imperfect Union", 
     "Steve Inskeep tells the riveting story of John and Jessie Frémont, the husband and wife team who in the 1800s were instrumental in the westward expansion of the United States.",
	 "2019-06-18",
	 "Steve Inskeep",
     "History");
INSERT INTO books (title, description, date_of_publication, author, category)
VALUES
     ("Wilmington's Lie", 
     "From Pulitzer Prize winner, David Zucchino, comes a searing account of the Wilmington riot and coup of 1898, an extraordinary event unknown to most Americans.",
	 "2019-11-01",
	 "David Zucchino",
     "History");
INSERT INTO books (title, date_of_publication, author, category)
VALUES
     ("Race of Aces", 
	 "2018-08-29",
	 "John R. Bruning",
     "History");
INSERT INTO books (title, author, category)
VALUES
     ("What's Your Pronoun?: Beyond He and She", 
	 "Dennis Baron",
     "History");
INSERT INTO books (title, description, date_of_publication, author, category)
VALUES
     ("Black Wave", 
     "A Journey with Hillary Clinton from Beirut to the Heart of American Power tells the gripping story of the real roots of the Middle East Sunni-Shia conflict in the 1979 Iran Revolution that changed the region forever.",
	 "2020-01-11",
	 "Kim Ghattas",
     "History");
INSERT INTO books (title, description, author, category)
VALUES
     ("My War Criminal: Personal Encounters with an Architect of Genocide", 
     "An investigation into the nature of violence, terror, and trauma through conversations with a notorious war criminal by Jessica Stern, one of the world's foremost experts on terrorism.",
	 "Jessica Stern",
     "Biography");
INSERT INTO books (title, date_of_publication, author, category)
VALUES
     ("The First Conspiracy", 
	 "2020-02-05",
	 "Brad Meltzer",
     "History");
INSERT INTO books (title, author, category)
VALUES
     ("Franchise: The Golden Arches in Black America", 
	 "Marcia Chatelain",
     "History");
     
SELECT * FROM books;