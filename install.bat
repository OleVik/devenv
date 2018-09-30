@ECHO OFF
ECHO.
ECHO Installing apps
ECHO.
for %%a in ("./bucket/*") do scoop install ./bucket/%%~na.json
PAUSE