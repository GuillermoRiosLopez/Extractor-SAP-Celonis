@setlocal enableextensions
@cd /d "%~dp0"

echo Stopping Celonis IBC SAP Extractor

@echo off

CelonisSapExtractor.exe stop
