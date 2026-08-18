REM Call vcvarsall.bat to initialize MSVC build environment
call "%PACKIT_VCVARSALL%" %PACKIT_VCVARSALL_ARCH%

REM Compile
cl simple.c /Fe:simple.exe %PACKIT_OUTPUTS% >&3 2>&3
if ERRORLEVEL 1 exit /b %ERRORLEVEL%

REM Move to prefix
mkdir "%PACKIT_PACKAGE_PATH%\bin\"
copy ".\simple.exe" "%PACKIT_PACKAGE_PATH%\bin\simple.exe"
