call backup-conf.bat

set BASE=mydb
set SALIDA=down\%BASE%_%fullstamp%.backup

%PGDUMP% ^
   --format custom --blobs --verbose ^
   --file %SALIDA% ^
   %BASE%

pause
