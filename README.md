# Books Database Example

This project demonstrates basic SQL operations on a simple `books` table. The operations include creating and managing the table, inserting data, and performing various queries and updates.

## Table Structure

```sql
CREATE TABLE books (
    bookId INT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    author VARCHAR(50),
    publishedYear INT,
    isAvailable BOOLEAN
);
```

- bookId: Unique identifier for each book (Primary Key)

- title: Title of the book (required)

- author: Name of the book's author

- publishedYear: Year the book was published

- isAvailable: Indicates availability (1 for available, 0 for not)

## Sample Data

The table is populated with three example books:

```sql
INSERT INTO books (bookId, title, author, publishedYear, isAvailable)
VALUES
    (1, "The Great Gatsby", "F. Scott Fitzgerald", 1925, 1),
    (2, "To Kill a Mockingbird", "Harper Lee", 1960, 1),
    (3, "1984", "George Orwell", 1949, 0);
```

## SQL Operations

### Retrieve All Books

```sql
SELECT * FROM books;
```

### List Only Available Books

```sql
SELECT * FROM books
WHERE isAvailable = 1;
```

### Count Books Published Before 1950

```sql
SELECT COUNT(*) FROM books
WHERE publishedYear < 1950;
```

### Mark a Book as Available

```sql
UPDATE books
SET isAvailable = 1
WHERE bookId = 3; -- "1984"
```

### Update Author Name

```sql
UPDATE books
SET author = "Francis Scott Fitzgerald."
WHERE bookId = 1;
```

### Delete a Book

```sql
DELETE FROM books
WHERE bookId = 2; -- "To Kill a Mockingbird"
```

## Purpose

This example is useful for practicing:

- SQL table creation and deletion
- Data insertion and querying
- Updating and deleting records
- Using conditional filters

## Notes

- The table is initially dropped and recreated to ensure a clean start.

- The boolean values for isAvailable use 1 (true) and 0 (false), which is common in SQL dialects like MySQL.
