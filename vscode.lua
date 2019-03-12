help([[
Visual Studio code is a source code editor
]])

-- Whatis description
whatis('Description: Visual Studio Code is a source code editor developed by Microsoft for Windows, Linux and macOS. It includes support for debugging, embedded Git control, syntax highlighting, intelligent code completion, snippets, and code refactoring. (from wikipedia)')
whatis('URL: https://code.visualstudio.com/')
whatis('singularity pull ')
unsetenv("LD_PRELOAD")
local vscode = [==[
/usr/bin/singularity run /path/to/singularity/image "$@";
]==]

set_shell_function("vscode",vscode,vscode)