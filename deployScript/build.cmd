@echo off
@setlocal

set RUNTIME_DIR=runtime

echo ���Ŀ¼"%RUNTIME_DIR%"�Ƿ����
echo ====================================
if not exist "%RUNTIME_DIR%" (
	echo ��������Ŀ¼ %RUNTIME_DIR%
	md "%RUNTIME_DIR%"
) else (
	echo Ŀ¼ "%RUNTIME_DIR%" �Ѿ����� 
)
echo.

cd .. 
echo �ʹ��������ͬ��Դ��
echo ====================================
echo �ڷ������ϣ���Ҫ���� git.exe pull "origin" dev ͬ��һ���ļ�
echo.

echo ��ʼִ��maven build��������test case
echo ====================================

mvn clean package -Dmaven.test.skip=true