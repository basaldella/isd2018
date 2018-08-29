/* 1 */

SELECT * 
FROM country
WHERE Population = 0
ORDER BY SurfaceArea DESC;

/* 2 */

SELECT CountryCode
FROM countrylanguage
WHERE Language = 'Arabic';

/* 3 */

SELECT Name
FROM country
WHERE Code IN (
	SELECT CountryCode
	FROM countrylanguage
	WHERE Language = 'Arabic')
ORDER BY Population DESC
LIMIT 1;

/* 4 */
SELECT GovernmentForm
FROM country
WHERE Code IN (
	SELECT CountryCode
	FROM countrylanguage
	WHERE Language = 'French')
ORDER BY Population ASC
LIMIT 1;

/* 5 */
SELECT Count(*)
FROM city
WHERE ID IN (
  SELECT Capital
  FROM country
) AND Population > 1000000;


