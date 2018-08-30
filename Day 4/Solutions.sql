/* 1 */

SELECT Books.book_title, Authors.first_name,Authors.last_name
FROM  Authors JOIN Books
WHERE Authors.author_id = Books.Editor;

/* 2 */

SELECT B.book_title, A.first_name,A.last_name
FROM  Authors as A 
	JOIN (
		SELECT Books.book_title, Authorship.Author_id
		FROM Books JOIN Authorship
        WHERE Books.book_id = Authorship.book_id ) AS B
WHERE A.author_id = B.author_id;
    
/* 3 */

SELECT Pizzeria.name, Person.name
FROM Pizzeria JOIN Person
ON Pizzeria.city = Person.City;

/* 4 */

SELECT Person.Name 
FROM Person JOIN (
  SELECT MIN(age) as 'min'
  FROM Person
) AS MINAGE
WHERE Person.Age = MINAGE.min;

/* 5 */

SELECT Name
From Pizzeria JOIN
	(SELECT Pizzeria
    FROM Frequents JOIN Person
    ON Frequents.Name = Person.Name
    WHERE Person.Age < 18) AS F
    Where Pizzeria.Name = F.Pizzeria;
    
    
/* 6 */
SELECT country.Name, SUM(city.Population)
FROM country JOIN city
ON country.Code = city.CountryCode
GROUP BY country.code
ORDER BY SUM(city.population) DESC;


/* 7 */
SELECT country.name, countrylanguage.Language
FROM country join countrylanguage
ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.IsOfficial = TRUE;

/* 8 */

SELECT country.Name, city.name, city.district
FROM city JOIN country
ON city.CountryCode = country.Code AND
   city.ID = country.Capital;


/* 9 */

SELECT A.district, B.language
FROM (
  SELECT city.district, country.Code
  FROM city JOIN country
  ON city.CountryCode = country.Code AND
     city.ID = country.Capital
  ) AS A
  JOIN (
	SELECT country.Code, countrylanguage.Language
	FROM country join countrylanguage
	ON country.Code = countrylanguage.CountryCode
	WHERE countrylanguage.IsOfficial = TRUE
    ) AS B
where A.Code = B.Code;
 
