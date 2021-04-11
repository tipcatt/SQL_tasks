/*
 tasks from 
 			https://sqlzoo.net
*/

----------------------------------------------------------------------------------------------------
/*
 Show the team1, team2 and player for every goal scored by a player called Mario
*/

SELECT team1, team2, player
FROM game
JOIN goal ON (game.id = goal.matchid)
WHERE player LIKE 'Mario%';
----------------------------------------------------------------------------------------------------

/*
 Show player, teamid, coach, gtime for all goals scored in the first 10 minutes
*/

SELECT player, teamid, coach, gtime
FROM goal 
JOIN eteam ON (goal.teamid = eteam.id)
WHERE gtime <= 10;
----------------------------------------------------------------------------------------------------

/*
 List the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach.
*/

SELECT mdate, teamname
FROM game
JOIN eteam ON (team1 = eteam.id)
WHERE coach = 'Fernando Santos';
----------------------------------------------------------------------------------------------------

/*
 List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw'
*/

SELECT player
FROM goal
JOIN game ON (goal.matchid = game.id)
WHERE stadium = 'National Stadium, Warsaw';
----------------------------------------------------------------------------------------------------

/*
 Show the name of all players who scored a goal against Germany.
 Select goals scored only by non-German players in matches where GER was the id of either team1 or team2.
*/

SELECT DISTINCT player 
FROM goal
JOIN game ON (goal.matchid = game.id)
WHERE (teamid != 'GER' AND (team1 = 'GER' OR team2 = 'GER'));
----------------------------------------------------------------------------------------------------

/*

*/


