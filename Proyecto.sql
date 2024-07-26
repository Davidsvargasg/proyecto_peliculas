-- Active: 1721290975934@@127.0.0.1@3306@proyecto
USE proyecto

SELECT `Movie Name`, `Director`,`IMDB Rating`
FROM Movies AS m
JOIN Director_Cast AS d
ON m.`Movie ID` = d.`Movie ID`
ORDER BY `IMDB Rating` DESC

SELECT d.Director, COUNT (Director) AS number_of_movies
FROM `Director_Cast` AS d
GROUP BY `Director`
ORDER BY COUNT (Director) DESC;

SELECT d.director, m.`Movie Name`
FROM `Director_Cast` AS d
JOIN `Movies` AS m
ON d.`Movie ID`= m.`Movie ID`
WHERE d.`Director` = "Christopher Nolan";

SELECT d.director, m.`Movie Name`
FROM `Director_Cast` AS d
JOIN `Movies` AS m
ON d.`Movie ID`= m.`Movie ID`
WHERE d.`Director` = "Alfred Hitchcock";

SELECT MAX (`Release Year`)
FROM `Movies`

SELECT MIN (`Release Year`)
FROM `Movies`

SELECT MIN (`Duration`)
FROM `Movies`

SELECT MAX (`Duration`)
FROM `Movies`

SELECT `Movie ID`, `Movie Name`, `Duration`
FROM `Movies`
GROUP BY `Movie ID`,`Movie Name`, `Duration`
ORDER BY `Duration` DESC LIMIT 5

SELECT `Movie Name`, MAX (`Gross`), `IMDB Rating`
FROM `Movies`
GROUP BY `Movie Name`, `IMDB Rating`
ORDER BY MAX (`Gross`) DESC

SELECT Genre, COUNT (Genre) AS number_of_genres
FROM `Movies`
GROUP BY `Genre`
HAVING `Genre` LIKE "%Comedy%"
ORDER BY COUNT (Genre) DESC;

SELECT Genre, COUNT (Genre) AS number_of_genres
FROM `Movies`
GROUP BY `Genre`
HAVING `Genre` = "Comedy"
ORDER BY COUNT (Genre) DESC;

SELECT Genre, COUNT (Genre) AS number_of_genres
FROM `Movies`
GROUP BY `Genre`
HAVING `Genre` = "Drama"
ORDER BY COUNT (Genre) DESC;

SELECT Genre, COUNT (Genre) AS number_of_genres
FROM `Movies`
GROUP BY `Genre`
HAVING `Genre` = "Horror"
ORDER BY COUNT (Genre) DESC;

SELECT `Movie Name`, `Director`,`Metascore`
FROM Movies AS m
JOIN Director_Cast AS d
ON m.`Movie ID` = d.`Movie ID`
WHERE `Metascore` = 100
ORDER BY `Metascore` DESC;

SELECT `Movie Name`, `Director`,`Metascore`
FROM Movies AS m
JOIN Director_Cast AS d
ON m.`Movie ID` = d.`Movie ID`
ORDER BY `Metascore` DESC;

SELECT `Release Year`, `Movie Name`
FROM `Movies`
WHERE `Release Year` BETWEEN 1960 AND 1980

SELECT COUNT (`Movie Name`)
FROM `Movies`
WHERE `Release Year` BETWEEN 1960 AND 1980

SELECT COUNT (`Movie Name`)
FROM `Movies`
WHERE `Release Year` BETWEEN 1980 AND 2000

SELECT COUNT (`Movie Name`)
FROM `Movies`
WHERE `Release Year` BETWEEN 2000 AND 2020

SELECT d.`Cast`, COUNT (`Cast`) AS number_of_actors
FROM `Director_Cast` AS d
GROUP BY `Cast`
ORDER BY COUNT (`Cast`) DESC;

SELECT `Cast`, `Movie Name`
FROM `Director_Cast` as d
JOIN `Movies` AS m 
ON d.`Movie ID`= m.`Movie ID`
WHERE `Cast` = "Tom Cruise"

SELECT `Cast`, `Movie Name`
FROM `Director_Cast` as d
JOIN `Movies` AS m 
ON d.`Movie ID`= m.`Movie ID`
WHERE `Cast` = "Nicole Kidman"

SELECT `Movie Name`, `Votes`
FROM `Movies`
ORDER BY `Votes` DESC

