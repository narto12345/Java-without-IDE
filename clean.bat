@echo off

del /s /q target\*
for /d %%x in (target\*) do @rd /s /q "%%x"

@echo the destination directory has been cleaned
pause
