#!/bin/bash
# Send a GET request to the URL and save the response to a variable
response=$(curl -s $1)

# Get the length of the response body in bytes
$(echo -n "$response" | wc -c)
