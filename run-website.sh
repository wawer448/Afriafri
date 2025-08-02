#!/bin/bash
echo "Starting Ecospatial Limited Solutions Website..."
echo
echo "Opening website in your default browser..."

# Get the directory where this script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Open the HTML file
if command -v open &> /dev/null; then
    # macOS
    open "$DIR/ecospatial-compact.html"
elif command -v xdg-open &> /dev/null; then
    # Linux
    xdg-open "$DIR/ecospatial-compact.html"
elif command -v start &> /dev/null; then
    # Windows (Git Bash)
    start "$DIR/ecospatial-compact.html"
else
    echo "Please open ecospatial-compact.html in your browser manually"
fi

echo
echo "Website should now be open in your browser!"