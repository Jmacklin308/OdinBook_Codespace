@echo off

REM Delete the "build directory" if it exisst
if exist build (
	rmdir /s /q build
)

REM Create a new build directory

mkdir build

REM Run the odin command
rm -rf build
mkdir build

odin run src -out:build/odinBook.exe -debug
