/* 1 */
SELECT *
FROM Books;

SELECT *
FROM Authors;

SELECT *
FROM Authorship;

/* 2 */
SELECT *
FROM Books
WHERE pub_year = 1956;

/* 3 */

SELECT author_id 
FROM Authors
WHERE first_name = 'Dimitri' AND last_name = 'kent';

SELECT book_title
FROM Books
WHERE editor = 1;

/* 4 */
SELECT *
FROM Books
ORDER BY pub_year;

/* 5 */
SELECT last_name
FROM Authors
WHERE author_id IN (
	SELECT author_id
    FROM Authorship
);

/* 6 */
SELECT author_id, COUNT(author_id)
FROM Authorship
GROUP BY author_id 
ORDER BY COUNT(author_id) DESC;

SELECT editor, COUNT(editor)
FROM Books
GROUP BY editor 
ORDER BY COUNT(editor) DESC;

/* 7 */
SELECT *
FROM Authors
WHERE author_id NOT IN (
	SELECT author_id
    FROM Authorship
	) 
    AND
    author_id NOT IN (
	SELECT editor
    FROM Books
	) ;

/* 8 */
SELECT *
FROM Authors
WHERE author_id IN (
	SELECT author_id
    FROM Authorship
	) 
    AND
    author_id IN (
	SELECT editor
    FROM Books
	) ;
    
