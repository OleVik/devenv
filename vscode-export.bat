@ECHO OFF
ECHO.
ECHO Removing old VSCode-export
ECHO.
del ./vscode-ext.cmd
ECHO.
ECHO Creating VSCode extensions-list
ECHO.
for /F "tokens=*" %%i in ('code --list-extensions') do @echo call code --install-extension %%i >> vscode-ext.cmd
ECHO.
ECHO Copying VSCode user-data
ECHO.
robocopy "%SCOOP%"/persist/vscode-portable/data/user-data ./persist/vscode-portable/data/user-data Preferences storage.json
robocopy "%SCOOP%"/persist/vscode-portable/data/user-data/User ./persist/vscode-portable/data/user-data/User keybindings.json settings.json vsicons.settings.json
PAUSE