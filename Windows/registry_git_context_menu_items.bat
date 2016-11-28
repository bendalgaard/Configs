::Run as Administrator

@ECHO OFF &SETLOCAL disableDelayedExpansion
reg add "HKEY_CLASSES_ROOT\Directory\shell\git_shell2" /v "NAME" /d "Process Integration Development" /d "Git Console Here"
reg add "HKEY_CLASSES_ROOT\Directory\shell\git_shell2" /v "Icon" /d "C:\PROGRA~1\Git\mingw64\share\git\git-for-windows.ico"
reg add "HKEY_CLASSES_ROOT\Directory\shell\git_shell2\command" /d "\"C:\\ConsoleZ.x64.1.14.0.15129\\Console.exe\" -t \"Git Bash\" -d \"%1\""

reg add "HKEY_CLASSES_ROOT\Directory\background\shell\git_shell2" /d "Bash Here"
reg add "HKEY_CLASSES_ROOT\Directory\background\shell\git_shell2\command" /d ""\"C:\PROGRA~1\Git\bin\sh.exe\" --login -i""

reg add "HKEY_CLASSES_ROOT\Directory\background\shell\command_prompt" /d "Command Prompt Here"
reg add "HKEY_CLASSES_ROOT\Directory\background\shell\command_prompt\command" /d ""\"C:\\Windows\\System32\\cmd.exe\" --login -i""