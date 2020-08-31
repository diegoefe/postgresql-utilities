call local-conf.bat

set BASE=engho20200831
set ENTRADA=down\mydb_2020-08-31_112518.backup

%PGREST% ^
   --host localhost ^
   --port 5440 ^
   --username "postgres" ^
   --dbname "%BASE%" ^
   --no-password ^
   --verbose "%ENTRADA%"

pause
