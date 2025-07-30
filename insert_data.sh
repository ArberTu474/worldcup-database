#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo "$($PSQL "TRUNCATE TABLE games, teams;")"

echo "Query result: $RESULT"

# Skip the header
tail -n +2 games.csv |  while IFS="," read year round winner opponent winner_goals opponent_goals
do

  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$winner';")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$opponent';")

  # Insert winner if not found
  if [[ -z "$WINNER_ID" ]]
  then
    INSERT_RESULT_1=$($PSQL "INSERT INTO teams(name) VALUES('$winner');")
    echo $INSERT_RESULT_1

    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$winner';")
  fi

  # Insert opponent if not found
  if [[ -z "$OPPONENT_ID" ]]
  then
    INSERT_RESULT_2=$($PSQL "INSERT INTO teams(name) VALUES('$opponent');")
    echo $INSERT_RESULT_2

    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$opponent';")
  fi
  
  echo $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($year, '$round', $WINNER_ID, $OPPONENT_ID, $winner_goals, $opponent_goals)")

done
