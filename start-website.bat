@echo off
echo Opening Ecospatial Website...
if exist "%~dp0ecospatial-compact.html" (
    start "" "%~dp0ecospatial-compact.html"
    echo Website opened successfully!
) else (
    echo ERROR: Cannot find ecospatial-compact.html
    echo Current directory: %~dp0
    dir "%~dp0*.html"
)
pause