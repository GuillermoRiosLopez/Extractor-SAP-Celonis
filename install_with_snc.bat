@setlocal enableextensions
@cd /d "%~dp0"

echo Installing Celonis IBC SAP (SNC) Extractor

@echo off

mkdir temp

CelonisSapExtractorSnc.exe install
CelonisSapExtractorSnc.exe start

