@echo off

:: Cambiar a la página de códigos UTF-8
chcp 65001 >nul

@echo Compilando...
javac -encoding UTF-8 -sourcepath src src\com\bitsteam\app\App.java -d target

@echo Ejecutando...
java -Dfile.encoding=UTF-8 -classpath target com.bitsteam.app.App

pause
