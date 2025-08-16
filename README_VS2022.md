# Helbreath Cursed - Visual Studio 2022 Compatibility Fix

## Changes Made

This repository has been updated to fix compilation issues for Visual Studio 2022.

### 1. Solution File Fixes (`Helbreath Cursed.sln`)
- ✅ Fixed typo: "Desbug" → "Debug"
- ✅ Updated Visual Studio version from 2013 to 2022
- ✅ Corrected configuration mappings for all projects
- ✅ Fixed platform configuration inconsistencies

### 2. Client Project Fixes (`[SRC]Client Version 13/Client.vcxproj`)
- ✅ Fixed "Desbug" typo to "Debug"
- ✅ Updated platform toolsets from `v120_xp` to `v143` (VS2022)
- ✅ Updated Windows target platform from 8.1 to 10.0
- ✅ Updated ToolsVersion from 14.0 to 15.0
- ✅ Fixed hardcoded file paths
- ✅ Added complete Debug configuration settings
- ✅ Fixed preprocessor definitions for Debug builds

### 3. Other Project Updates
- ✅ Updated `MapServer.vcxproj` ToolsVersion to 15.0
- ✅ Updated `Nucleo.vcxproj` ToolsVersion to 15.0
- ✅ All projects now use platform toolset `v143` (VS2022)

## Building the Project

### Prerequisites
- Visual Studio 2022 (Community, Professional, or Enterprise)
- C++ Desktop Development workload installed
- Windows 10/11 SDK

### Build Steps

#### Option 1: Using Visual Studio 2022
1. Open `Helbreath Cursed.sln` in Visual Studio 2022
2. Select configuration: `Debug` or `Release`
3. Select platform: `Win32` or `x64`
4. Build → Build Solution (F7)

#### Option 2: Using Command Line
```batch
# Build Debug configuration
msbuild "Helbreath Cursed.sln" /p:Configuration=Debug /p:Platform=Win32

# Build Release configuration
msbuild "Helbreath Cursed.sln" /p:Configuration=Release /p:Platform=Win32
```

#### Option 3: Using the provided batch file
```batch
build.bat
```

## Project Structure

```
Helbreath Cursed/
├── [SRC]Client Version 13/     # Main game client
├── [SRC]MapServer/             # Map server component
├── [SRC]Nucleo/                # Core server component
├── Shared/                      # Shared header files
├── Helbreath Cursed.sln        # Main solution file
└── build.bat                   # Build script
```

## Output Files

After successful build:
- **Client**: `[SRC]Client Version 13\Archive\Helbreath Cursed.exe`
- **MapServer**: `[SRC]MapServer\MapServer.exe`
- **Nucleo**: `[SRC]Nucleo\Nucleo.exe`

## Troubleshooting

### Common Issues

1. **Platform Toolset Error**
   - Ensure VS2022 C++ Desktop Development workload is installed
   - Verify platform toolset `v143` is available

2. **Windows SDK Error**
   - Install Windows 10/11 SDK from Visual Studio Installer
   - Ensure `WindowsTargetPlatformVersion` is set to `10.0`

3. **Library Dependencies**
   - All required libraries are included in the project
   - Check that library files exist in the `Libs/` directory

4. **Include Path Issues**
   - Verify `Shared/` directory contains `shared.h` and `netmsg.h`
   - Check that all header files referenced in the project exist

### If Build Still Fails

1. Clean solution: Build → Clean Solution
2. Delete `Debug/`, `Release/`, and `x64/` directories
3. Rebuild: Build → Rebuild Solution
4. Check Output window for specific error messages

## Notes

- This project uses DirectX libraries (DDRAW, DINPUT, DSOUND)
- Some libraries may need to be rebuilt for VS2022 if compatibility issues arise
- The project is configured for Win32/x64 platforms
- Debug configurations include full debugging information and symbols

## Support

If you encounter issues not covered in this README:
1. Check the build output for specific error messages
2. Verify all prerequisites are installed
3. Ensure you're using Visual Studio 2022 with C++ Desktop Development workload