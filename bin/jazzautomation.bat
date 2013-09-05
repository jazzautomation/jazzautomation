@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  jazzautomation startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and JAZZAUTOMATION_SOURCE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\jazzautomation.jar;%APP_HOME%\lib\selenium-java-2.34.0.jar;%APP_HOME%\lib\selenium-client-factory-1.2.jar;%APP_HOME%\lib\jackson-mapper-asl-1.9.3.jar;%APP_HOME%\lib\commons-exec-1.1.jar;%APP_HOME%\lib\jna-3.4.0.jar;%APP_HOME%\lib\platform-3.4.0.jar;%APP_HOME%\lib\json-20080701.jar;%APP_HOME%\lib\guava-14.0.jar;%APP_HOME%\lib\selenium-api-2.34.0.jar;%APP_HOME%\lib\cglib-nodep-2.1_3.jar;%APP_HOME%\lib\commons-codec-1.7.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar;%APP_HOME%\lib\httpcore-4.2.2.jar;%APP_HOME%\lib\httpclient-4.2.3.jar;%APP_HOME%\lib\selenium-remote-driver-2.34.0.jar;%APP_HOME%\lib\selenium-android-driver-2.34.0.jar;%APP_HOME%\lib\selenium-chrome-driver-2.34.0.jar;%APP_HOME%\lib\xml-apis-1.4.01.jar;%APP_HOME%\lib\serializer-2.7.1.jar;%APP_HOME%\lib\xalan-2.7.1.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar;%APP_HOME%\lib\commons-lang3-3.1.jar;%APP_HOME%\lib\httpmime-4.2.3.jar;%APP_HOME%\lib\htmlunit-core-js-2.12.jar;%APP_HOME%\lib\xercesImpl-2.10.0.jar;%APP_HOME%\lib\nekohtml-1.9.18.jar;%APP_HOME%\lib\sac-1.3.jar;%APP_HOME%\lib\cssparser-0.9.9.jar;%APP_HOME%\lib\jetty-util-8.1.9.v20130131.jar;%APP_HOME%\lib\jetty-io-8.1.9.v20130131.jar;%APP_HOME%\lib\jetty-http-8.1.9.v20130131.jar;%APP_HOME%\lib\jetty-websocket-8.1.9.v20130131.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\htmlunit-2.12.jar;%APP_HOME%\lib\selenium-htmlunit-driver-2.34.0.jar;%APP_HOME%\lib\selenium-firefox-driver-2.34.0.jar;%APP_HOME%\lib\selenium-ie-driver-2.34.0.jar;%APP_HOME%\lib\selenium-iphone-driver-2.34.0.jar;%APP_HOME%\lib\netty-3.5.2.Final.jar;%APP_HOME%\lib\webbit-0.4.14.jar;%APP_HOME%\lib\selenium-safari-driver-2.34.0.jar;%APP_HOME%\lib\selenium-support-2.34.0.jar;%APP_HOME%\lib\selenium-java-client-driver-1.0.2.jar;%APP_HOME%\lib\jackson-core-asl-1.9.3.jar

@rem Execute jazzautomation
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %JAZZAUTOMATION_SOURCE_OPTS%  -classpath "%CLASSPATH%" com.jazzautomation.AutomationDriver %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable JAZZAUTOMATION_SOURCE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%JAZZAUTOMATION_SOURCE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega