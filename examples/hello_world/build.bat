@echo off
for /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set date=%%c%%a%%b)
for /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set time=%%a%%b)

vasmm68k_mot -Fbin main.s -o build_%date%_%time%.bin -nowarn=51

pause