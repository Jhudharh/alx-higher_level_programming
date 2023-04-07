#!/bin/bash
# Send a GET request to the URL and save the response to a variable
response=$(curl -s -I -w "%{http_code}" $1)

# Check if the response status code is 200
if [[ $response == *" 200"* ]]; then
# Display the body of the response
curl -s $1
