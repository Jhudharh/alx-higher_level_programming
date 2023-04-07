#!/bin/bash

# Check if a URL argument is provided
if [ $# -eq 0 ]; then
    echo "Error: URL argument is missing"
    exit 1
fi

# Send a GET request to the URL and save the response to a file
curl -s -o /tmp/response.txt -w '%{size_download}' $1 > /dev/null

# Display the size of the body of the response in bytes
size=$(cat /tmp/response.txt)
echo "Size of the response body: $size bytes"

# Remove the temporary file
rm /tmp/response.txt

