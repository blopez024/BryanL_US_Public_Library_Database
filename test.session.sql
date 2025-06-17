CREATE TABLE books (
    bookId INT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    author VARCHAR(50),
    publishedYear INT,
    isAvailable BOOLEAN
);

DROP TABLE books;

CREATE TABLE books (
    bookId INT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    author VARCHAR(50),
    publishedYear INT,
    isAvailable BOOLEAN
);

INSERT INTO books (bookId, title, author, publishedYear, isAvailable)
VALUES
    (1, "The Great Gatsby","F. Scott Fitzgerald", 1925, 1),
    (2, "To Kill a Mockingbird", "Harper Lee", 1960, 1),
    (3, "1984", "George Orwell", 1949, 0);

-- Retrieve all books in database
SELECT * FROM books;

-- List only books that are available
SELECT * FROM books
WHERE isAvailable = 1;

-- Count how many books were published before 1950
SELECT COUNT(*) FROM books
WHERE publishedYear < 1950;

-- Mark the book "1984" as available
UPDATE books
SET isAvailable = 1
WHERE bookId = 3;

-- Change "F. Scott Fitzgerald" to "Francis Scott Fitzgerald."
UPDATE books
SET author = "Francis Scott Fitzgerald." 
WHERE bookId = 1;

-- Verify the changes by retrieving all books again
SELECT * FROM books;

-- Delete "To Kill a Mockingbird" from the books table.
DELETE FROM books
WHERE bookId = 2;

-- Confirm the deletion by listing all remaining books.
SELECT * FROM books;