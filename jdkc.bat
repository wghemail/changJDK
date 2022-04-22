@echo off
@echo ------------------------------------------------
@echo SCOOP JAVA 版本切换脚本
@echo ------------------------------------------------
@echo 当前Java版本为:
call jdkv.bat
@echo ------------------------------------------------
@echo 输入要使用的java版本对应的选项:
@echo 选项   含义
@echo 8      切换环境为JDK8
@echo 11     切换环境为JDK11
@echo 17     切换环境为JDK17
@REM echo 18     切换环境为JDK18
@echo ------------------------------------------------
set user=%USERNAME%
set java8=C:\Users\%user%\scoop\apps\openjdk8-redhat\current
set java11=C:\Users\%user%\scoop\apps\openjdk11\current
set java17=C:\Users\%user%\scoop\apps\openjdk17\current
@REM set java18=C:\Users\%USERNAME%\scoop\apps\openjdk18\current
set /P choose=请输入选择:
	@REM sudo setx "JAVA_HOME" "%java8%" /m
	@REM sudo 为获取管理员权限，scoop安装
	@REM /m为系统环境变量，须sudo
	@REM 无/m, 否则为当前用户环境变量
IF "%choose%" EQU "8" (
	REM 修改JAVA_HOME环境变量为%java8%
	setx "JAVA_HOME" "%java8%"
	echo 已经修改 "JAVA_HOME" 为 %java8%
) ELSE IF "%choose%" EQU "11" (
	setx "JAVA_HOME" "%java11%"
	echo 已经修改 "JAVA_HOME" 为 %java11%
) ELSE IF "%choose%" EQU "17" (
	setx "JAVA_HOME" "%java17%"
	echo 已经修改 "JAVA_HOME" 为 %java17%
@REM ) ELSE IF "%choose%" EQU "18" (
@REM 	setx "JAVA_HOME" "%java18%"
@REM 	echo 已经修改 "JAVA_HOME" 为 %java18%
) ELSE (
	echo 选择错误，无修改！
)
pause
