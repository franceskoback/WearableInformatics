#!/bin/bash

# Specify the folder to search
folder="/Users/franceskoback/Downloads/RK.E0CC9B64.Wearable Wellness_20230330-20230331"

# Search for CSV files starting with "FitbitSleepLogs"
file=$(find "$folder" -type f -name "FitbitSleepLogs*.csv" -print -quit)

# Check if a file was found
if [[ -n "$file" ]]; then
    echo "CSV file found: $file"
else
    echo "CSV file not found."
fi
