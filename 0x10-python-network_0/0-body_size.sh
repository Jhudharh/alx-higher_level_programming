#!/bin/bash
# Send a GET request to the URL and save the response to a variable
response=$(curl -s $1)

# Get the length of the response body in bytes
size=$(echo -n "$response" | wc -c)

# Display the size of the body of the response in bytes
echo "Size of the response body: $size bytes"
