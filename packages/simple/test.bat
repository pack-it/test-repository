%PACKIT_PACKAGE_PATH%\bin\simple.exe 2 > .\output_file
if ERRORLEVEL 1 exit /b %ERRORLEVEL%

set /p "RESULT="<".\output_file%"

if not "%RESULT%"=="4" (
    echo Test failed: test output '%RESULT%' does not match the expected output
    exit /b 1
)
