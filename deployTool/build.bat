@echo off
@setlocal

set RUNTIME_DIR=runtime

if not exist "%RUNTIME_DIR%" (
	echo ��������Ŀ¼ %RUNTIME_DIR%
	md "%RUNTIME_DIR%"
)