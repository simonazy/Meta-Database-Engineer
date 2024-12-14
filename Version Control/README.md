Streams in Unix/Linux Shell
- stdout: This is the standard output stream, typically used for normal program output.
   File descriptor: 1
- stderr: This is the standard error stream, typically used for error messages.
   File descriptor: 2

  ">" redirects stdout to a file:
```bash
command > file.txt
```
"2>" redirects stderr to a file:
```bash
command 2> errors.txt
```
"2>&1" tells the shell: redirect stderr (2) to wherever stdout (1) is going. For example:
```bash
command > file.txt 2>&1
```
Both normal output and errors are saved in file.txt. If you omit 2>&1, only stdout will go to output.txt, while error messages will still appear on the terminal.

- [Git cheatsheet](https://education.github.com/git-cheat-sheet-education.pdf)

- [Bash cheatsheet](https://devhints.io/bash) : [grep](https://devhints.io/grep) 
