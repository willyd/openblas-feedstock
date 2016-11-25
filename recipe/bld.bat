copy %SRC_DIR%\bin\* %LIBRARY_BIN%
copy %SRC_DIR%\include\* %LIBRARY_INC%
xcopy %SRC_DIR%\lib\* /S %LIBRARY_LIB%

del %LIBRARY_LIB%\libopenblas.a
move %LIBRARY_LIB%\libopenblas.dll.a %LIBRARY_LIB%\libopenblas.lib

if errorlevel 1 exit 1
