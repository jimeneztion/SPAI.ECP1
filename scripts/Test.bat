@echo off

echo LANZANDO TEST
echo Autor:Sergio Gil Jiménez

echo -----------------------------------------
echo .  Configurando variables del sistema
echo -----------------------------------------
set workspace=C:\Users\bm0825\Desktop\SW\workspace\SPAI\maven
set PATH=%PATH%C:\Program Files\Java\jdk1.8.0_51\bin;C:\Users\bm0825\Desktop\SW\Maven\apache-maven-3.3.3-bin\apache-maven-3.3.3\bin
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_51
set M2_HOME=C:\Users\bm0825\Desktop\SW\Maven\apache-maven-3.3.3-bin\apache-maven-3.3.3

echo 

echo -----------------------------------------
echo .  Clean y test en el perfil develop (C) SERGIO GIL JIMENEZ
echo -----------------------------------------
echo .
echo Workspace --- %workspace%
echo .
echo .


cd %workspace%
:: Test en Develop
:: -ff, --fail-fast. Stop at first failure in reactorized builds
echo ============ mvn -ff clean test (profile: develop) =======================================================
echo .
call mvn -ff clean test
if errorLevel 1 goto errorDevelop


:errorDevelop
echo .
echo .
echo .
echo ########  ERRORES de test en Develop
pause
exit

