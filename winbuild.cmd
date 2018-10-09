@echo off
copy CMakeLists_Windows.txt CMakeLists.txt
del /s /q 4xbitcoin
echo d | xcopy /y /e \opt\4xbitcoin 4xbitcoin
mkdir build
del /s /q build
cd build

cmake.exe -G  "Visual Studio 14 2015 Win64"  ..

msbuild 4xbitcoinWallet.sln /p:Configuration=Release


