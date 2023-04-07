#!/bin/bash
# Send a GET request to the URL and save the response to a variable
response=$(curl -s $1)

# Get the length of the response body in bytes
curl -s $1 | wc -c
