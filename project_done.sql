SHOW DATABASES;
USE cl_project;

SHOW TABLES;

SELECT * FROM attempts_goals;
SELECT * FROM players;
SELECT * FROM teams;

SELECT 
    pt.Player_name,
    pt.Position,
    pt.Team,
    pt.Country,
    SUM(ag.total_attempts) AS total_attempts,
    SUM(ag.goals) AS total_goals,
	ROUND(SUM(ag.total_attempts) / SUM(ag.goals), 2) AS shots_to_goal
FROM attempts_goals ag
INNER JOIN (
    SELECT 
        t.team_id AS TEAM_ID,
        t.team AS Team,
        t.country AS Country,
        p.id_player AS PLAYER_ID,  
        p.player_name AS Player_name,
        p.field_position AS Position
    FROM teams t
    INNER JOIN players p
    ON t.team_id = p.id_team
) AS pt
ON ag.id_player = pt.PLAYER_ID
GROUP BY pt.Player_name, pt.Position, pt.Team, pt.Country, pt.PLAYER_ID -- IN GENERAL PLAYERS WHO SCORED MORE THAN 2 GOALS
HAVING total_goals > 2
ORDER BY shots_to_goal;

SELECT 
    pt.Team,
    pt.Country,
    SUM(ag.total_attempts) AS total_attempts,
    SUM(ag.goals) AS total_goals,
	ROUND(SUM(ag.total_attempts) / SUM(ag.goals), 2) AS shots_to_goal
FROM attempts_goals ag
INNER JOIN (
    SELECT 
        t.team_id AS TEAM_ID,
        t.team AS Team,
        t.country AS Country,
        p.id_player AS PLAYER_ID,  
        p.player_name AS Player_name,
        p.field_position AS Position
    FROM teams t
    INNER JOIN players p
    ON t.team_id = p.id_team
) AS pt
ON ag.id_player = pt.PLAYER_ID
GROUP BY pt.TEAM_ID, pt.Team, pt.Country
HAVING total_goals > 0
ORDER BY shots_to_goal ASC -- TOP 10 CLUBS IN TERMS OF ATTEMPTS / GOALS 
LIMIT 10;