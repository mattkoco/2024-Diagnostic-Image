#!/bin/bash
# Please give around ~5 minutes for the raw to update
# Scorebot for 2024 Diag
echo "NOTE: Please allow up to 5 minutes for scorebot updates & injects."
echo "Scorebot version: v1"
echo "Injects: NO"

# Function to check if text exists in a file
check_text_exists() {
    local file="$1"
    local text="$2"
    local vuln_name="$3"
    
    if grep -q "$text" "$file"; then
        echo "Vulnerability fixed: '$vuln_name'"
    else
        echo "Unsolved Vuln"
    fi
}

# Function to check if text does not exist in a file
check_text_not_exists() {
    local file="$1"
    local text="$2"
    local vuln_name="$3"
    
    if ! grep -q "$text" "$file"; then
        echo "Vulnerability fixed: '$vuln_name'"
    else
        echo "Unsolved Vuln"
    fi
}

# Example usage:
check_text_exists "/home/koco/Scoring/getscore.sh" "./scorebot.sh" "Control Vuln - Scorebot is working."
check_text_not_exists "/home/koco/Scoring/getscore.sh" "gabagababgabagba" "Control Vuln 2 - Scorebot is working x2"




