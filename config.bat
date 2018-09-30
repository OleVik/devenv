@ECHO OFF
ECHO.
ECHO Copying persist-folder
ECHO.
robocopy ./persist "%SCOOP%"/persist /e /xd vscode-portable cache
PAUSE