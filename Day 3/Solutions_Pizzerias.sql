/* UPDATES */

/* 1 */ 
UPDATE Pizzeria
SET city = 'Torino'
WHERE city = 'Milano';

/* 2 */
UPDATE Serves
SET price = price * 1395.32;

/* 4 */ 
UPDATE Person
SET gender = 'M'
WHERE gender = 'male';

UPDATE Person
SET gender = 'F'
WHERE gender = 'female';

/* SELECTIONS */

/* 1 */

SELECT * 
FROM Pizzeria
WHERE neighborhood = 'San Marco';

/* 2 */

SELECT * 
FROM Person
WHERE age IN (
    SELECT MIN(age)
    FROM Person
);

/* 3 */

SELECT AVG(price), pizzeria 
FROM Serves
GROUP BY pizzeria
ORDER BY AVG(price) ASC
LIMIT 1;

/* 4 */

SELECT name
FROM Pizzeria
1WHERE name in (
    SELECT pizzeria
    FROM Serves
    WHERE pizza = 'Marinara'
) AND City = 'Milano';

