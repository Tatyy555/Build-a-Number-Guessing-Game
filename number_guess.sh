#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

GENERATE_RONDOM_NUM(){
  RONDOM_NUM=$((1 + $RANDOM % 1000))
}

CHECK_USER(){
  echo -e "Enter your username:"
  read USERNAME
  USER_ID_RESULT=$($PSQL "SELECT user_id FROM user_info WHERE username='$USERNAME';")
  if [[ -z $USER_ID_RESULT ]]
    then
     echo -e "\nWelcome, $USERNAME! It looks like this is your first time here." 
     GUESSING_GAME
    else
      USER_DETAIL=$($PSQL "SELECT * FROM user_info WHERE user_id=$USER_ID_RESULT;")
      echo $USER_DETAIL
      echo "$USER_DETAIL" | while read USER_ID BAR USERNAME BAR GAMES_PLAYED BAR BEST_GAME 
        do
          echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
      done
      GUESSING_GAME
  fi
}

GUESSING_GAME(){
  echo -e "\nGuess the secret number between 1 and 1000:"
  read ATTEMPT
  NUMBER_OF_GUESSES=1
  while [[ $RONDOM_NUM != $ATTEMPT ]]
    do
      RE='^[0-9]+$'
      if [[ $ATTEMPT =~ $RE ]];
        then
          if [[ $RONDOM_NUM < $ATTEMPT ]]
            then
              echo -e "\nIt's lower than that, guess again:"
            else
              echo -e "\nIt's higher than that, guess again:"
          fi 
        else
          echo -e "\nThat is not an integer, guess again:"
      fi
      read ATTEMPT
      NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES+1))
    done
  echo -e "\nYou guessed it in $NUMBER_OF_GUESSES tries. The secret number was $RONDOM_NUM. Nice job!"
  UPDATE_RESULT
}

UPDATE_RESULT(){
  if [[ -z $USER_ID_RESULT ]]
    then
     INSERT_NEW_RESULT=$($PSQL "INSERT INTO user_info(username, games_played, best_game) VALUES('$USERNAME', 1, $NUMBER_OF_GUESSES)")
    else
      echo "$USER_DETAIL" | while read USER_ID BAR USERNAME BAR GAMES_PLAYED BAR BEST_GAME 
        do
          GAMES_PLAYED=$(($GAMES_PLAYED + 1))
          if [[ $NUMBER_OF_GUESSES > $BEST_GAME ]]
            then
              UPDATE_NEW_RESULT=$($PSQL "UPDATE user_info SET games_played=$GAMES_PLAYED, best_game=$BEST_GAME WHERE user_id=$USER_ID")
            else
              UPDATE_NEW_RESULT=$($PSQL "UPDATE user_info SET games_played=$GAMES_PLAYED, best_game=$NUMBER_OF_GUESSES WHERE user_id=$USER_ID")  
          fi 
      done
      
  fi
}

GENERATE_RONDOM_NUM
CHECK_USER