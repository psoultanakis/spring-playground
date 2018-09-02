
@echo off
REM Oracle Database specific Variables
REM set NCES_DEV_DB_USER=sys
REM set NCES_DEV_DB_PASSWORD=picassopan9
REM set NCES_DEV_DB_URL=jdbc:oracle:thin:@localhost:1523:ora11g691

REM Ensure proper JVM memory
set JAVA_OPTS=%JAVA_OPTS% -XX:PermSize=512m -XX:MaxPermSize=1024m -Dfile.encoding=UTF8
REM set MAVEN_OPTS= -Duser.language=en

REM ***** For starting Tomcat7 in debug mode *****
set MAVEN_OPTS=-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n

set GIT_BIN=C:\Users\Public\Documents\Programs\Git\tools\portableGit\bin\

REM Generic Environment Variables
REM set JAVA_TOOL_OPTIONS=%JAVA_TOOL_OPTIONS% -Dfile.encoding=UTF8
REM set OLD_PATH=%PATH%
set M2_HOME=C:\Users\Public\Documents\Programs\Git\tools\apache-maven-3.5.0_playground
set JAVA_HOME=C:\Users\Public\Documents\Programs\Git\tools\java\JDK8
REM set JAVA_HOME=C:\Program Files\Java\jdk1.7.0_80
set PATH=%GIT_BIN%;%M2_HOME%\bin;%JAVA_HOME%\bin;
echo . 
echo ----JAVA version-----
call java -version
echo .
echo ----Maven version-----
call mvn -v
echo .
echo ----GIT version-----
call git --version


