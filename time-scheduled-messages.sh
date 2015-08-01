#!/bin/bash

# Make a list of all your messages/quotes
declare -a arr=("message1/quote1" "message2/quote2")

# Find length of array formed above
len=${#arr[@]}

# Specify the index of message from where you'd like to start
index=len-1

# Specify the time delay between the two consecutive reminders
sleep_time=10

while true
do
    # Display the message/quote as a system notification
    notify-send "${arr[$index]}"
    # Increment the counter in a cyclic way
    (( index=(index+1)%len ))
    # Sleep for 15 minutes
    sleep "$sleep_time"
done