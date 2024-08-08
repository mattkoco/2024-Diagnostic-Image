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

echo " "
echo "Kocorowski Diagnostic Image"
echo " "

# Usage:
check_text_exists "/home/koco/Desktop/Forensics1.txt" "diag{ThisIsTheAnswerToForensicsQuestion1}" "Forensics 1 Correct"
check_text_exists "/home/koco/Desktop/Forensics2.txt" "deftones" "Forensics 2 correct"

check_text_exists "/home/koco/Desktop/Forensics4.txt" "sky bar" "Forensics 4 correct"

check_text_not_exists "/etc/ftpusers" "kai" "Removed user 'kai' from FTP users file"

check_text_exists "/etc/ssh/sshd_config" "LoginGraceTime" "SSH login grace time set"
check_text_exists "/etc/ssh/sshd_config" "LogLevel Info" "SSH LogLevel set to Info"
check_text_exists "/etc/ssh/sshd_config" "PermitRootLogin no" "SSH root login disabled"

check_text_exists "/etc/sysctl.conf" "net.ipv4.conf.all.log_martians = 1" "Enabled logging of Martian packets"

check_text_not_exists "/etc/group" "Cole" "Removed unauthorized user Cole"
check_text_not_exists "/etc/shadow" "Connor" "Removed unauthorized user Connor"
