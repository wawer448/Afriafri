#!/bin/bash
echo "Opening Ecospatial CMS..."
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if command -v open &> /dev/null; then
    open "$DIR/cms.html"
elif command -v xdg-open &> /dev/null; then
    xdg-open "$DIR/cms.html"
elif command -v start &> /dev/null; then
    start "$DIR/cms.html"
else
    echo "Please open cms.html in your browser manually"
fi

echo "CMS should now be open in your browser!"