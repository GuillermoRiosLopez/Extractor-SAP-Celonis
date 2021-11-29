@setlocal enableextensions


set PSE_DN=%1
set PSE_PASSWD=%2

set SAPGENPSE=.\snc\windows\sapgenpse.exe
set PSE_FILE=RFC.pse
set CRT_FILE=RFC.crt

set SECUDIR=.\sec

%SAPGENPSE% gen_pse -v -p "%PSE_FILE%" -x "%PSE_PASSWD%" %PSE_DN%
%SAPGENPSE% export_own_cert -v -p "%PSE_FILE%" -x "%PSE_PASSWD%" -o "%SECUDIR%\%CRT_FILE%"