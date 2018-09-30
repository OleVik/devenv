@ECHO OFF
ECHO.
ECHO Emptying bucket folder
ECHO.
rd /s /q "./bucket"
mkdir bucket
ECHO.
ECHO Renaming and copying files
ECHO.
cd ./manifests
for /r %%F in (*.json) do @for %%A in ("%%F\..\..") do copy "%%F" "./../bucket/%%~nxA.json" & echo %%~nxA
cd ../
PAUSE