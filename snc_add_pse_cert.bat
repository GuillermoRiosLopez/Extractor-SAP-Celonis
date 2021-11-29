@setlocal enableextensions


set SAP_CRT=%1
set PSE_PASSWD=%2

set SAPGENPSE=.\snc\windows\sapgenpse.exe
set PSE_FILE=RFC.pse

set SECUDIR=.\sec

%SAPGENPSE% maintain_pk -v -p "%PSE_FILE%" -x "%PSE_PASSWD%" -a "%SAP_CRT%"
%SAPGENPSE% seclogin -v -p "%PSE_FILE%" -x "%PSE_PASSWD%"

