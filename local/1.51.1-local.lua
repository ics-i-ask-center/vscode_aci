help([[Visual Studio Code is a lightweight but powerful 
source code editor which runs on your desktop and is available 
for Linux, macOS and Windows. It comes with built-in support 
for JavaScript, TypeScript and Node.js and has a rich ecosystem 
of extensions for other languages (such as C++, C#, Java, Python, PHP, Go) 
and runtimes (such as .NET and Unity).

To launch vscode, use the following command in your terminal:
$ code

To run a executable from inside the vscode container, use
the following command:
$ code-exec ARGUMENTS

Legacy:
To launch vscode, use the follow command in your terminal:
$ vscode

If you run into any issues while using this container
then please contact the i-ASK center by emailing
iask@ics.psu.edu]])

whatis("Description: Visual Studio Code is a source code editor developed by Microsoft for Windows, Linux and macOS. It includes support for debugging, embedded Git control, syntax highlighting, intelligent code completion, snippets, and code refactoring. (from wikipedia)")
whatis("Version: 1.51.1")
whatis("URL: https://code.visualstudio.com/")
whatis("Pull Command: singularity pull library://nucci/default/vscode:latest")

local vscodeLaunch = "$(command -v singularity) -s run --bind ${HOME}:/run ${HOME}/work/sw/vscode/vscode_latest.sif $@"
local execLaunch = "$(command -v singularity) -s exec --bind ${HOME}:/run ${HOME}/work/sw/vscode/vscode_latest.sif $@"

set_shell_function("code", vscodeLaunch)
set_shell_function("code-exec", execLaunch)

-- Legacy
set_shell_function("vscode", vscodeLaunch)
