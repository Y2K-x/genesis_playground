@echo off
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I
set datetime=%datetime:~0,8%_%datetime:~8,6%

vasmm68k_mot -Fbin main.s -o build_%datetime%.bin -nowarn=51

pause