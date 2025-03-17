#!/bin/bash

# Enable color output
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
BLUE="\e[34m"
RESET="\e[0m"

# Fake loading with progress bar
fake_loading() {
    local duration=$1  
    local total=50  # Fixed length for the bar

    echo -n "Initializing system check: ["
    for ((i=0; i<total; i++)); do
        sleep $(awk -v min=0.02 -v max=0.1 'BEGIN{srand(); print min+rand()*(max-min)}')
        echo -n "#"
    done
    echo -e "]\n ${GREEN}✔ System initialized!${RESET}"
}

# Fake system logs with subtle references to administrative struggles
fake_logs() {
    local logs=(
        "[INFO] Checking system integrity..."
        "[INFO] Validating permissions...\n ERROR: Insufficient privileges. Requesting manual override."
        "[INFO] Sending approval request...\n No response received. Retrying..."
        "[INFO] Slow process detected.\n Optimizing for delays..."
        "[INFO] Fetching required signatures...\n ERROR: One signature missing. Restarting process."
        "[INFO] Processing paperwork...\n ERROR: Resubmitting request."
        "[INFO] Verifying budget allocation...\n ERROR: Funds redirected elsewhere. Request denied."
        "[INFO] Attempting direct communication...\n No response. Escalating to higher authority..."
        "[INFO] Waiting for final validation...\n Approximate wait time: Unknown."
        "[INFO] Rebooting patience module..."
    )

    for log in "${logs[@]}"; do
        echo -e "$YELLOW$log$RESET"
        sleep $(awk -v min=0.3 -v max=1.2 'BEGIN{srand(); print min+rand()*(max-min)}')
    done

    echo -e "${RED}[WARNING] Minor undefined behavior detected. \nBut we're ready for all. Loading solution...${RESET}"
    sleep 1

    local retries=3  # Fixed 5 retries
    for ((i=1; i<=retries; i++)); do
        echo -e "${YELLOW}[WARNING] Retrying bureaucratic process... attempt $i/${retries}.${RESET}"
        sleep $(awk -v min=0.5 -v max=1.2 'BEGIN{srand(); print min+rand()*(max-min)}')
    done

    # Prompt the user
    echo -ne "${RED}[ERROR] Still not resolved. Retry the process? (Type anything to continue): ${RESET}"
    read -r user_input
    echo -e "\nClearing the screen and retrying the process..."
    sleep 2
    clear

    echo -e "${GREEN}[INFO] Giving up was never a choice.${RESET}"
    sleep 1

    echo -e "${GREEN}[INFO] Issue resolved. Administrative bottleneck bypassed.${RESET}"
    echo -e "${GREEN}[INFO] Continuing scan...${RESET}"
    sleep 1
}

# Fake validation process with user input
validation_process() {
    echo -ne "${YELLOW}[SYSTEM] Settling for d'ici juin, agree on it? (yes/no): ${RESET}"
    read -r response
    if [[ "$response" == "no" ]]; then
        # Realistic validation messages with an administrative theme
        local validations=(
            "[VALIDATION] ✔ Verifying administrative signature clearance... Success."
            "[VALIDATION] ✔ Ensuring approval of all regulatory measures... Success."
            "[VALIDATION] ✔ Confirming budget allocations with finance department... Success."
            "[VALIDATION] ✔ Checking compliance with project timelines... Success."
            "[VALIDATION] ✔ Validating the submission of paperwork... Success."
            "[VALIDATION] ✔ Checking approval chain for execution... Success."
            "[VALIDATION] ✔ Confirming internal audit completion... Success."
            "[VALIDATION] ✔ Verifying all signatures have been processed... Success."
            "[VALIDATION] ✔ Confirming clearance of funding release... Success."
            "[VALIDATION] ✔ Finalizing internal bureaucracy verification... Success."
            "[VALIDATION] ✔ Executing delay bypass procedure... Success."
            "[VALIDATION] ✔ Confirming project readiness for implementation... Success."
            "[VALIDATION] ✔ Final validation from executive board... Success."
            "[VALIDATION] ✔ Overcoming interdepartmental approval bottleneck... Success."
            "[VALIDATION] ✔ Confirming process completion... Success."
        )

        for validation in "${validations[@]}"; do
            echo -e "$GREEN$validation$RESET"
            sleep 0.2
        done
    else
        echo -e "${RED}[ERROR] System compromised. Defaulting to administrative decision.${RESET}"
        sleep 2
    fi
}

# Fake final loading bar with 99% delay
final_loading_bar() {
    local total=50  # Fixed to 50 total steps
    local stop_at=49  # Stop at 49th step to show 99% completion
    echo -n "${BLUE}Finalizing system diagnostics: ["

    for ((i=0; i<total; i++)); do
        if [ "$i" -eq "$stop_at" ]; then
            # Print the forced reality check on the same line
            echo -n "#"
            echo -ne "\n${RED}Forced Pause at 99%. Ready for the journey? ${RESET}"
            read -r user_input
            echo -e "${GREEN}I knew you can do it. Finalizing last step...${RESET}"
            
            # Adding delay for the dots on the same line
            for i in {1..3}; do
                echo -n "."
                sleep 0.5
            done
            
            # Continue progress bar to 100%
            for ((i=stop_at+1; i<total; i++)); do
                sleep 0.03
                echo -n "#"
            done
            echo -n " "  # Ensure the dots are on the same line
            
        else
            sleep 0.03
            echo -n "#"
        fi
    done

    echo -ne " ${GREEN}✔ 100% - Process Completed.${RESET}"
    echo -e "\n${GREEN}Welcome to the family!${RESET}"
}

# Run the functions
fake_loading 3
fake_logs
validation_process
final_loading_bar
