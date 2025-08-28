log_message() { 
local LOG_LEVEL=$1 
local MESSAGE=$2 
local LOG_FILE=$3 

local TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S') 
echo "$TIMESTAMP - $LOG_LEVEL - $MESSAGE" >> "$LOG_FILE" 
} 
This block displays the available options for logging messages, viewing logs, or exiting: 
display_menu() { 
echo "====================" 
echo " School Logger Menu " 
echo "====================" 
echo "1. Log an INFO message" 
echo "2. Log a DEBUG message" 
echo "3. Log a WARNING message" 
echo "4. Log an ERROR message" 
echo "5. Log a CRITICAL message" 
echo "6. View the log file" 
echo "7. Exit" 
echo "====================" 
}
This block initializes the log file, displays the menu, and handles user input: 
echo "Enter the log file name (default is app.log):" 
read LOG_FILE 
LOG_FILE=${LOG_FILE:-"app.log"}  # Default log file if none provided 
while true; do 
display_menu 
echo "Please select an option (1-7):" 
read CHOICE 
case $CHOICE 
echo "Enter your INFO message:" 
read MESSAGE 
log_message "INFO" "$MESSAGE" "$LOG_FILE" 
echo "INFO message logged!" 
;; 

echo "Enter your DEBUG message:" 
read MESSAGE 
log_message "DEBUG" "$MESSAGE" "$LOG_FILE" 
echo "DEBUG message logged!" 
;; 

echo "Enter your WARNING message:" 
read MESSAGE 
log_message "WARNING" "$MESSAGE" "$LOG_FILE" 
echo "WARNING message logged!" 
;; 
 
echo "Enter your ERROR message:" 
read MESSAGE 
log_message "ERROR" "$MESSAGE" "$LOG_FILE" 
echo "ERROR message logged!" 
;; 

echo "Enter your CRITICAL message:" 
read MESSAGE 
log_message "CRITICAL" "$MESSAGE" "$LOG_FILE" 
echo "CRITICAL message logged!" 
;; 
esac 
done 
echo "Viewing the contents of the log file '$LOG_FILE':" 
cat "$LOG_FILE" 
;; 
echo "Exiting the program. Goodbye!" 
exit 0 
;; 
*) 
echo "Invalid option, please try again." 
;; 
 
