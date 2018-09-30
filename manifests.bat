@ECHO OFF
ECHO.
ECHO Emptying manifests folder
ECHO.
rd /s /q "./manifests"
mkdir manifests
ECHO.
ECHO Copying current app manifests
ECHO.
robocopy "%SCOOP%"/apps ./manifests manifest.json /s /lev:3 /xjd
PAUSE