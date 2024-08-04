cmake_minimum_required(VERSION 3.20)
project(sqlite)
add_executable(sqlite shell.c sqlite3.c)