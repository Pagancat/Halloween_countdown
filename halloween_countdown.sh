#!/bin/bash

# Get today's date
today=$(date +%Y-%m-%d)

# Set Halloween date (October 31 of the current year)
halloween=$(date +%Y)-10-31

# If today's date is after Halloween, set Halloween to next year
if [[ "$today" > "$halloween" ]]; then
    halloween=$(($(date +%Y)+1))-10-31
fi

# Calculate the number of days until Halloween
days_until_halloween=$(( ( $(date -d "$halloween" +%s) - $(date -d "$today" +%s) ) / 86400 ))

# Display the result
echo "$days_until_halloween days until Halloween!" | toilet -w 100 --rainbow
