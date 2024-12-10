rm -rf build
mkdir build

odin run src -out:build/odinBook.exe -debug -- $1