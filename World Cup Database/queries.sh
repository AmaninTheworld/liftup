#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.


echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "SELECT SUM(winner_goals + opponent_goals) FROM games")"

echo -e "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL "SELECT avg(winner_goals) FROM games")"

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "SELECT round(avg(winner_goals), 2) FROM games")"

echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "SELECT avg(winner_goals + opponent_goals) FROM games")"

echo -e "\nMost goals scored in a single game by one team:"
echo  "$($PSQL "SELECT max(winner_goals) FROM games")"

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo "$($PSQL "SELECT count(*) FROM games where winner_goals > 2")"

echo -e "\nWinner of the 2018 tournament team name:"
echo "$($PSQL "SELECT name FROM teams full join games on games.winner_id = teams.team_id where year = 2018 and round ilike 'final' ")"

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL "SELECT distinct(name) FROM teams 
left join games as games1 on games1.winner_id = teams.team_id 
left join games as games2 on games2.opponent_id = teams.team_id 
where (games1.year = 2014 and games1.round ilike 'Eighth-Final' ) or (games2.year = 2014 and games2.round ilike 'Eighth-Final' )
order by name")"

echo -e "\nList of unique winning team names in the whole data set:"
echo "$($PSQL "SELECT distinct(name) FROM teams inner join games on games.winner_id = teams.team_id order by name")"

echo -e "\nYear and team name of all the champions:"
echo  "$($PSQL "SELECT year,name FROM teams inner join games on games.winner_id = teams.team_id where round ilike 'final' order by year")"

echo -e "\nList of teams that start with 'Co':"
echo "$($PSQL "SELECT name FROM teams where name like 'Co%'")"
