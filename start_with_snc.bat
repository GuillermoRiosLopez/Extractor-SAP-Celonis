@setlocal enableextensions

echo Starting with Snc

set CONNECTOR_DIR=%1
if not defined CONNECTOR_DIR set CONNECTOR_DIR=%cd%

set SECUDIR=%CONNECTOR_DIR%\sec
set SNC_LIB=%CONNECTOR_DIR%\snc\windows\sapcrypto.dll

java -Xmx8g -Djava.io.tmpdir="%CONNECTOR_DIR%\temp" -jar %CONNECTOR_DIR%\connector-sap.jar 