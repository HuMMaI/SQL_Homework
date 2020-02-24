USE library;

DROP TABLE book_catalog;
CREATE TABLE book_catalog (
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(120) NOT NULL,
    description TEXT,
    date_of_publication DATE NOT NULL DEFAULT '2018-01-01',
    category VARCHAR(30) NOT NULL,
    isbn BIGINT NOT NULL UNIQUE,
    number_of_pages SMALLINT NOT NULL,
    price REAL NOT NULL,
    author_name VARCHAR(45) NOT NULL,
    author_surname VARCHAR(45) NOT NULL,
    author_email VARCHAR(50) NOT NULL,
    author_age TINYINT NOT NULL,
    author_birth_date DATE NOT NULL,
    author_awards VARCHAR(120)
);

INSERT INTO book_catalog(title, description, date_of_publication, category, isbn, number_of_pages, price, author_name, author_surname, author_email, author_age, author_birth_date, author_awards)
VALUES
	('The Companion', 'They say she’s a murderess. She claims she’s innocent. But Lucy has been known to tell lies...', '2020-01-14', 'Crime', 9781978679153, 324, 14.5234, 'Kim', 'Taylor', 'kim.t@gmail.com', 31, '1988-05-24', NULL),
	('Infinity Son', 'Balancing epic and intensely personal stakes, bestselling author Adam Silvera’s Infinity Son is a gritty, fast-paced adventure about two brothers caught up in a magical war generations in the making.', DEFAULT, 'Fantasy', 9781471187803, 368, 18.14, 'Adam', 'Silvera', 'adam.sil@gmail.com', 24, '1996-01-18', NULL),
	('Come Tumbling Down', 'The fifth installment in Seanan McGuire\'s award-winning, bestselling Wayward Children series, Come Tumbling Down picks up the threads left dangling by Every Heart a Doorway and Down Among the Sticks and Bones', '2019-07-12', 'Fantasy', 9780765399311, 208, 22, 'Seanan', 'McGuire', 'mc.guire@gmail.com', 33, '1986-08-02', 'National Book Award'),
    ('The Third Rainbow Girl', 'In the afternoon or early evening of June 25, 1980, two young women, Vicki Durian and Nancy Santomero, were killed in an isolated clearing in rural Pocahontas County West Virginia.', DEFAULT, 'Crime', 9780316449236, 336, 11.2175, 'Emma', 'Copley', 'emma.copley@gmail.com', 38, '1982-02-10', NULL),
    ('Little Boy Lost', 'One early October afternoon, ten-year-old Jacob Rossi begins the short walk home from school. But he never makes it.', '2019-02-11', 'Crime', 9780316149836, 400, 24.31, 'John', 'Carter', 'john.c@gmail.com', 28, '1991-11-06', 'Caldecott Medal'),
    ('You\'re Not Listening', 'At work, we’re taught to lead the conversation. On social media, we shape our personal narratives. At parties, we talk over one another. So do our politicians. We’re not listening. And no one is listening to us.', '2018-03-21', 'Psychology', 9781473561106, 277, 16.78, 'Kate', 'Murphy', 'kate.mur@gmail.com', 21, '1998-12-01', 'EMMA Awards'),
    ('The Stars in Our Pockets', 'What shapes our sense of place, our sense of time, and our memory? How is technology changing the way we make sense of the world and of ourselves?', DEFAULT, 'Psychology', 9780807036754, 401, 36.7012, 'Howard', 'Axelrod', 'how.axel@gmail.com', 44, '1975-07-19', NULL),
    ('Nameless Queen', 'One girl must make a name for herself--or die trying --in this royal fantasy where an unknown peasant becomes the ultimate ruler. But how long can she keep the crown if everyone wants her dead? Perfect for fans of Furyborn, Red Queen, and Everless.', '2020-01-07', 'Fantasy', 9781524700263, 352, 23.35, 'Rebecca', 'McLaughlin', 'rebe.cca@gmail.com', 20, '2000-01-03', NULL),
    ('The Hand on the Wall', 'Ellingham Academy must be cursed. Three people are now dead. One, a victim of either a prank gone wrong or a murder. Another, dead by misadventure. And now, an accident in Burlington has claimed another life.', DEFAULT, 'Mystery', 9780062338112, 384, 29.44, 'Maureen', 'Johnson', 'maureen.j@gmail.com', 29, '1990-10-20', NULL),
    ('Human Diversity', 'All people are equal but, as Human Diversity explores, all groups of people are not the same -- a fascinating investigation of the genetics and neuroscience of human differences.', '2020-01-28', 'Psychology', 9781538744017, 528, 41.58, 'Charles', 'Murray', 'charles.m@gmail.com', 54, '1965-06-14', NULL),
    ('The Other People', 'A gripping new thriller about a man\'s quest for the daughter no one else believes is still alive, from the acclaimed author of The Chalk Man and The Hiding Place.', DEFAULT, 'Horror', 9781984824998, 336, 19.33, 'Charlotte', 'Tudor', 'charlotte.tud@gmail.com', 29, '1990-11-02', 'Pulitzer Prize'),
    ('Goodbye Nothing', 'Since the night of the accident, Cain Emmerick has felt different. Empty. What was important to him—family, friends, his job—doesn\'t matter anymore. His new life revolves around that Nothing inside of him and the extraordinary highs he gets from committing random acts of violence.', '2019-01-01', 'Horror', 9780985732721, 400, 28.5, 'Beck', 'Sherman', 'beck.sh@gmail.com', 25, '1992-02-04', 'National Book Award'),
    ('Lullabies for Suffering', 'Addiction starts like a sweet lullaby sung by a trusted loved one. It washes away the pains of the day and wraps you in the warmness of the womb where nothing hurts and every dream is possible. Yet soon enough, this warm state of bliss becomes a cold shiver, the ecstasy and dreams become nightmares, yet we can\'t stop listening to the lullaby.', '2018-11-22', 'Horror', 9780578588841, 251, 17, 'Caroline', 'Kepnes', 'caroline.k@gmail.com', 26, '1994-03-18', 'Bram Stoker Award'),
    ('How Quickly She Disappears', 'The Dry meets Silence of the Lambs in this intoxicating tale of literary suspense set in the relentless Alaskan landscape about madness and obsession, loneliness and grief, and the ferocious bonds of family …', DEFAULT, 'Mystery', 9781984805171, 320, 18.27, 'Raymond', 'Fleischmann', 'raymond.fl@gmail.com', 48, '1971-08-11', NULL),
    ('Friendship', 'An engaging and deeply reported investigation of friendship: its evolution, purpose, and centrality in human and nonhuman lives alike.', '2019-06-28', 'Psychology', 9780393651546, 312, 16.1298, 'Lydia', 'Denworth', 'lydia.denw@gmail.com', 32, '1988-01-28', 'Caldecott Medal'),
    ('Haven\'t They Grown', 'All Beth has to do is drive her son to his Under-14s away match, watch him play, and bring him home.', DEFAULT, 'Suspense', 9781968619173, 336, 22.5, 'Sophie', 'Hannah', 'sophie.han@gmail.com', 34, '1987-09-21', NULL),
    ('The Gray Chamber', 'Step into True Colors -- a new series of Historical Stories of Romance and American Crime', '2019-09-22', 'Suspense', 9781643522357, 256, 24.64, 'Grace', 'Hitchcock', 'grace.h@gmail.com', 26, '1993-12-18', 'National Book Award'),
    ('Grace is Gone', 'Meg and her daughter Grace are the most beloved family in Ashford, the lynchpin that holds the town together. So when Meg is found brutally murdered and her daughter missing, the community is rocked by the tragedy.', DEFAULT, 'Suspense', 9781778472193, 352, 19.54, 'Emily', 'Elgar', 'emily.el@gmail.com', 22, '1997-04-13', NULL),
    ('Prosper\'s Demon', 'In the pitch dark, witty fantasy novella Prosper\'s Demon, K. J. Parker deftly creates a world with vivid, unbending rules, seething with demons, broken faith, and worse men.', '2019-01-28', 'Horror', 9781250260505, 58, 9.76, 'Kadir', 'Parker', 'kadir.par@gmail.com', 41, '1979-01-16', NULL),
    ('Long Bright River', 'Two sisters travel the same streets, though their lives couldn\'t be more different. Then one of them goes missing.', DEFAULT, 'Thriller', 9780525540670, 496, 42.43, 'Liz', 'Moore', 'liz.m@gmail.com', 20, '1999-04-12', 'Hammett Award'),
    ('Tweet Cute', 'A fresh, irresistible rom-com from debut author Emma Lord about the chances we take, the paths life can lead us on, and how love can be found in the opposite place you expected.', '2019-02-17', 'Romance', 9781450962505, 368, 21.45, 'Emma', 'Lord', 'emma.lord@gmail.com', 27, '1992-04-19', 'Rita Award'),
    ('Don\'t Read the Comments', 'Divya Sharma is a queen. Or she is when she’s playing Reclaim the Sun, the year’s hottest online game. Divya—better known as popular streaming gamer D1V—regularly leads her #AngstArmada on quests through the game’s vast and gorgeous virtual universe. But for Divya, this is more than just a game.', DEFAULT, 'Romance', 9781335016027, 368, 27.82, 'Eric', 'Smith', 'eric.sm@gmail.com', 29, '1990-11-23', NULL),
    ('We Used To Be Friends', 'Two best friends grow up—and grow apart—in this innovative contemporary YA novel', '2020-01-07', 'Romance', 9781967619543, 368, 26.16, 'Amy', 'Spalding', 'amy.spal@gmail.com', 36, '1984-02-16', NULL),
    ('When You See Me', 'Bestselling author Lisa Gardner unites three of her most loved characters -Detective D.D. Warren, Flora Dane, and Kimberly Quincy - in a twisty new thriller, as they investigate a mysterious murder from the past that points to a dangerous and chilling present-day crime.', '2019-04-28', 'Thriller', 9781524745004, 400, 36.55, 'Lisa', 'Gardner', 'lisa.gard@gmail.com', 35, '1984-05-27', 'EMMA Awards'),
    ('Nessie Quest', 'Two friends head off on an adventure to find the Loch Ness Monster.', DEFAULT, 'Travel', 9780525645689, 352, 27.91, 'Melissa', 'Savage', 'melissa.sav@gmail.com', 22, '1998-01-06', NULL);
	
SELECT * FROM book_catalog;
SET sql_safe_updates = 1;

#Updating author surname in two books
UPDATE book_catalog SET author_surname = 'New_surname' WHERE id IN(4, 5);
SELECT id, author_surname FROM book_catalog WHERE id IN(4, 5);

#Counting number of books where author have awards
SELECT COUNT(*) AS number_of_books_with_awards FROM book_catalog WHERE author_awards IS NOT NULL;

#Book information with the fewest pages
SELECT * FROM book_catalog WHERE number_of_pages = (
	SELECT MIN(number_of_pages) FROM book_catalog
);

#Output max number of pages
SELECT MAX(number_of_pages) AS max_number_of_pages FROM book_catalog;

#Average books price
SELECT AVG(price) AS average_price FROM book_catalog;

#Counting books by category
SELECT category, COUNT(*) AS number_of_books FROM book_catalog GROUP BY category;

#Output min price
SELECT MIN(price) AS min_price FROM book_catalog;

#Book information with the fewest price
SELECT * FROM book_catalog WHERE price = (
	SELECT MIN(price) FROM book_catalog
);

#Books where the price is 4 decimal places
SELECT * FROM book_catalog WHERE price LIKE '%.____' ORDER BY title ASC;

#Output sorted books by date of publication at a specified limit
(SELECT * FROM book_catalog LIMIT 5, 5)
UNION
(SELECT * FROM book_catalog LIMIT 10, 6)
ORDER BY date_of_publication ASC; 

#Three queries with using LIKE
SELECT * FROM book_catalog WHERE date_of_publication LIKE '2018%';
SELECT * FROM book_catalog WHERE category LIKE '%lo%';
SELECT * FROM book_catalog WHERE number_of_pages LIKE '2__';

#Books where price is in interval [20, 40]
SELECT * FROM book_catalog WHERE price BETWEEN 20 AND 40;
#Books where price isn`t in interval [10, 30]
SELECT * FROM book_catalog WHERE price NOT BETWEEN 10 AND 30;

#Deleting books by some criteria
DELETE FROM book_catalog WHERE id = 5;
SET sql_safe_updates = 0;
DELETE FROM book_catalog WHERE title = 'Little Boy Lost';
DELETE FROM book_catalog WHERE isbn = 9781967619543;
SET sql_safe_updates = 1;
