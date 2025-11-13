@echo off

:: Cambiar a la página de códigos UTF-8
chcp 65001 >nul

@echo Compilando...

setlocal enabledelayedexpansion
set files=

for /r src %%f in (*.java) do (
  set "files=!files! %%f"
)

javac -encoding UTF-8 ^
  -classpath ".\lib\*" ^
  --processor-path ".\lib\lombok-1.18.36.jar" ^
  -sourcepath src ^
  -d target ^
  !files!

if %errorlevel% neq 0 (
  echo.
  echo Error durante compilación.
  echo.
  pause
  exit /b %errorlevel%
)

@echo Ejecutando...
java -Dfile.encoding=UTF-8 -classpath ".\lib\*;target" com.bitsteam.app.App

pause