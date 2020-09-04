call backup-conf.bat

set BASE=mydatabase
set TABLA=myschema.mytable
set SALIDA=down\%TABLA%.csv

%PSQL% ^
   -d %BASE% ^
   -c "COPY (Select * From %TABLA%) To STDOUT With CSV HEADER DELIMITER ';';" > "%SALIDA%"

pause
