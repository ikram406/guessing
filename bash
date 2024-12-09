#!/bin/bash

# Function to get the correct number of files
get_file_count() {
  echo $(ls -1 | wc -l)
}

# Main script
file_count=$(get_file_count)
user_guess=-1

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

while [[ $user_guess -ne $file_count ]]; do
  read -p "Enter your guess: " user_guess
  if [[ $user_guess -lt $file_count ]]; then
    echo "Your guess is too low. Try again."
  elif [[ $user_guess -gt $file_count ]]; then
    echo "Your guess is too high. Try again."
  else
    echo "Congratulations! You guessed correctly!"
  fi
done
