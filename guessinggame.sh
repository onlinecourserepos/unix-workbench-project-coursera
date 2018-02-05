#!/usr/bin/env bash
# File: guessinggame.sh

function guessing_game {


  local guess=-1

  local numFiles=$(ls -l | grep ^- | wc -l)
  
  while [[ guess -ne numFiles ]]
  do
    echo 'How many files are in the current directory?'
    read new_guess
    if [[ new_guess -eq numFiles ]]; then
      echo "Congratulations!  You guessed correctly."
      exit 1
    elif [[ new_guess -lt numFiles ]]; then
      echo "Too low!"
      guess=$new_guess
    else
      echo "Too high!"
      guess=$new_guess
    fi
  done

}

guessing_game
