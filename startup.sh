#!/bin/bash

# This script starts a simple Python HTTP server to serve static files.
# It's intended for local development and testing.

# Check if Python 3 is available
if ! command -v python3 &> /dev/null
then
    echo "Python 3 could not be found. Please install Python 3 to run this server."
    exit 1
fi

PORT=9000

echo "Starting static file server on http://localhost:$PORT"
echo "Press Ctrl+C to stop the server."

# Start the Python HTTP server in the background
python3 -m http.server $PORT
