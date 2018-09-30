A reproducible development environment using [Scoop](https://scoop.sh/), a command-line installer for Windows.

## Requirements

* Windows 7 SP1+ / Windows Server 2008+
* [PowerShell 3](https://www.microsoft.com/en-us/download/details.aspx?id=34595) (or later) and [.NET Framework 4.5+](https://www.microsoft.com/net/download)
* PowerShell must be enabled for your user account e.g. `set-executionpolicy remotesigned -s currentuser`

## Installation

Installation is done largely from an elevated command line terminal.

1. Add an environment variable named `SCOOP`, pointing to your preferred folder to contain the apps.
2. Run this command from a PowerShell instance:

```powershell
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
```

3. Run `config.bat` from a command line terminal to copy persist folder from current installation.
4. Run `install.bat` to install apps from /bucket.
5. Run `vscode-ext.cmd` to install extensions for VSCode.

## Usage

From command line:

1. Run `manifests.bat` to update the manifests from current installation.
2. Run `bucket.bat` to update the bucket from manifests.
3. Run `vscode-export.bat` to backup extensions-list to `vscode-ext.cmd`.
4. Run `ninite.bat` to download Classic Start, Chrome, Firefox, Everything, Greenshot, VLC, CCCP, KLiteCodecs

## [Scoop Documentation](https://github.com/lukesampson/scoop/wiki)