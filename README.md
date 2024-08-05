So first of all, I am using macOS fot that task.
We need to to download the needed file from first paragraph(https://www.sqlite.org/2018/sqlite-amalgamation-3260000.zip ).

I'm using homebrew to install cmake.
homebrew - https://brew.sh/
To install cmake - brew install cmake


CMAKE
To make source folder(sqlite) we need to create sqlite_build folder where is going to be maked files 
and logs folder for logs.
COMMAND: cmake --log-context -S . -B ../sqlite_build > ../logs/cmake_output.log 2>&1
> cmake - tool
> --log-context - Prepend log messages with context, if given.(You can check more key by executing (cmake --help))
> -S - means source folder, in our case that's sqlite
> -B - means destination folder, in our case that's sqlite_build
> (>) - shell operator to write all output from terminal to specified folder in out case is (../logs/cmake_output.log)
> 2>&1 - shell operator write both output from terminal, so standart output and error output to our cmake_output.log


MAKE
After we did cmake thing and have the sqlite folder we will have the Makefile that we can actually make and finally get the executable sqlite.exe binary.
COMMAND: make > ../logs/make_output.log 2>&1
> make - tool
> (>) - shell operator to write all output from terminal to specified folder in out case is (../logs/make_output.log)
> 2>&1 - shell operator write both output from terminal, so standart output and error output to our make_output.log
