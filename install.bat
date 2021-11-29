@setlocal enableextensions
@cd /d "%~dp0"

echo Installing Celonis IBC SAP Extractor

@echo off

mkdir temp

CelonisSapExtractor.exe install
CelonisSapExtractor.exe start

