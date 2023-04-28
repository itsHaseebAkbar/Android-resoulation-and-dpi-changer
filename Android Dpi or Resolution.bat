@echo off

:menu
echo Current Values:
adb shell wm density
adb shell wm size
echo.
echo Select an option:
echo 1. Change DPI
echo 2. Change Resolution
echo 3. Exit

set /p option=Enter your choice (1/2/3): 

if "%option%"=="1" (
    set /p dpi=Enter the default DPI value for your device: 
    adb shell wm density %dpi%
    echo DPI value reset to %dpi%.
    goto menu
) else if "%option%"=="2" (
    set /p width=Enter the width in pixels: 
    set /p height=Enter the height in pixels: 
    adb shell wm size %width%x%height%
    echo Resolution set to %width%x%height%.
    goto menu
) else if "%option%"=="3" (
    echo Exiting...
    exit /b
) else (
    echo Invalid option. Please try again.
    goto menu
)
