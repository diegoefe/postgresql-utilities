@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=%YYYY%%MM%%DD%" & set "timestamp=%HH%%Min%%Sec%"
set "fullstamp=%YYYY%-%MM%-%DD%_%HH%%Min%%Sec%"
set "commitstamp=%YYYY%/%MM%/%DD% %HH%:%Min%"
rem echo datestamp: "%datestamp%"
rem echo timestamp: "%timestamp%"
rem echo fullstamp: "%fullstamp%"

rem UPDATE this variable!
set BIN=d:\insti\soft\pgsql12.4\bin

set PGDUMP=%BIN%\pg_dump.exe
set PGREST=%BIN%\pg_restore.exe
set PSQL=%BIN%\psql.exe

rem pause