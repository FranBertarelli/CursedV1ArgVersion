@echo off
echo Building Helbreath Cursed for Visual Studio 2022...
echo.

echo Cleaning previous builds...
if exist "Debug" rmdir /s /q "Debug"
if exist "Release" rmdir /s /q "Release"
if exist "x64" rmdir /s /q "x64"

echo.
echo Building solution...
msbuild "Helbreath Cursed.sln" /p:Configuration=Debug /p:Platform=Win32 /p:PlatformToolset=v143

if %ERRORLEVEL% EQU 0 (
    echo.
    echo Build completed successfully!
    echo Executable should be in: [SRC]Client Version 13\Archive\Helbreath Cursed.exe
) else (
    echo.
    echo Build failed with error code: %ERRORLEVEL%
)

pause