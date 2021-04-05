/*
 tasks from 
 			https://sqlzoo.net
*/

----------------------------------------------------------------------------------------------------
-- Find all details of the prize won by EUGENE O'NEILL

SELECT * 
FROM nobel
WHERE winner LIKE 'EUGENE O_NEILL';
----------------------------------------------------------------------------------------------------

/*
 List the winners, year and subject where the winner starts with Sir. 
 Show the the most recent first, then by name order.
*/

SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir %'
ORDER BY yr DESC, winner;
----------------------------------------------------------------------------------------------------

/*
 Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
 The per capita GDP is the gdp/population
*/

SELECT country
FROM world
WHERE continent = 'Europe'
AND gdp/population > 
	(SELECT gdp/population
	 FROM world
	 WHERE country = 'United Kingdom');
----------------------------------------------------------------------------------------------------

/*
 Germany (population 80 million) has the largest population of the countries in Europe. 
 Austria (population 8.5 million) has 11% of the population of Germany.
 Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.
 The format should be Name, Percentage 
*/

SELECT name, CONCAT (ROUND (population * 100 / (SELECT population FROM world WHERE name = 'Germany'), 0), '%')
FROM world
WHERE continent = 'Europe'
----------------------------------------------------------------------------------------------------

