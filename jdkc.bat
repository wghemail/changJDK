@echo off
@echo ------------------------------------------------
@echo SCOOP JAVA �汾�л��ű�
@echo ------------------------------------------------
@echo ��ǰJava�汾Ϊ:
call jdkv.bat
@echo ------------------------------------------------
@echo ����Ҫʹ�õ�java�汾��Ӧ��ѡ��:
@echo ѡ��   ����
@echo 8      �л�����ΪJDK8
@echo 11     �л�����ΪJDK11
@echo 17     �л�����ΪJDK17
@echo 18     �л�����ΪJDK18
@echo ------------------------------------------------
set java8=C:\Users\wgh-e\scoop\apps\openjdk8-redhat\current
set java11=C:\Users\wgh-e\scoop\apps\openjdk11\current
set java17=C:\Users\wgh-e\scoop\apps\openjdk\current
set java18=C:\Users\wgh-e\scoop\apps\openjdk18\current
set /P choose=������ѡ��:
	@REM sudo setx "JAVA_HOME" "%java8%" /m
	@REM sudo Ϊ��ȡ����ԱȨ�ޣ�scoop��װ
	@REM /mΪϵͳ������������sudo
	@REM ��/m, ����Ϊ��ǰ�û���������
IF "%choose%" EQU "8" (
	REM �޸�JAVA_HOME��������Ϊ%java8%
	setx "JAVA_HOME" "%java8%"
	echo �Ѿ��޸� "JAVA_HOME" Ϊ %java8%
) ELSE IF "%choose%" EQU "11" (
	setx "JAVA_HOME" "%java11%"
	echo �Ѿ��޸� "JAVA_HOME" Ϊ %java1%
) ELSE IF "%choose%" EQU "17" (
	setx "JAVA_HOME" "%java17%"
	echo �Ѿ��޸� "JAVA_HOME" Ϊ %java17%
) ELSE IF "%choose%" EQU "18" (
	setx "JAVA_HOME" "%java18%"
	echo �Ѿ��޸� "JAVA_HOME" Ϊ %java18%
) ELSE (
	echo ѡ��������޸ģ�
)
pause