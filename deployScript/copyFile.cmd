@echo off
@setlocal

set RUNTIME_DIR=runtime

rem ���ǰ汾�ţ��뱣�ֺ�pom.xml�е�һ��
set /p VERSION=<VERSION.TXT

set FILE=..\target\CFidoMail-%VERSION%.jar

echo =============================================
echo �����ļ� %FILE%
echo =============================================

IF NOT EXIST %FILE% (
	echo �Ҳ���Ҫ�������ļ�, ���飺
	echo 1.�Ƿ�buildʧ���ˡ�
	echo 2.VERSION.TXT�ж���İ汾����pom.xml�ж���İ汾���Ƿ�һ��
	goto exit
)

copy %FILE% %RUNTIME_DIR%\

IF NOT EXIST %RUNTIME_DIR%\application.properties (
	copy ..\src\main\resources\application.properties %RUNTIME_DIR%\
	echo ����Ĭ�ϵ������ļ�	application.properties, ���޸��������ݿ�Ȳ���
)

IF NOT EXIST %RUNTIME_DIR%\start.cmd (
	copy start.cmd.template %RUNTIME_DIR%\start.cmd
)


:exit
