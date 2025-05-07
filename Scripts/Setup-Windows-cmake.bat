@echo off

pushd ..
Vendor\Premake\Windows\premake5.exe --file=premake5.lua cmake
popd
pause