#!/bin/bash

# different choices
choices=("rock" "paper" "scissors")

# Function to get computer's choice
computer_choice() {
    choice=${choices[$(( RANDOM % 3 ))]}
    echo "$choice"
}

# Function to determine the winner
determine_winner() {
    if [ "$player" == "$computer" ]; then
        echo "It's a tie!"
    elif [ "$player" == "rock" ] && [ "$computer" == "scissors" ]; then
        echo "You win! Rock beats scissors."
    elif [ "$player" == "paper" ] && [ "$computer" == "rock" ]; then
        echo "You win! Paper beats rock."
    elif [ "$player" == "scissors" ] && [ "$computer" == "paper" ]; then
        echo "You win! Scissors beats paper."
    else
        echo "You lose! $computer beats $player."
    fi
}

# Game loop
while true; do
    # Get player choice
    echo "Rock, Paper, Scissors Game"
    echo "Choose rock, paper, or scissors (or type 'quit' to exit):"
    read -p "Your choice: " player

 # Check if the player wants to quit
    if [ "$player" == "quit" ]; then
        echo "Thanks for playing!"
        break
    fi

# Validate player choice
    if [[ ! " ${choices[*]} " =~ " $player " ]]; then
        echo "Invalid choice. Please try again."
        continue
    fi

# Get computer's choice
    computer=$(computer_choice)
    echo "Computer chose: $computer"

    # Determine the winner
    determine_winner
    echo
done
