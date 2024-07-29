@echo off
for /F %%a in ('dir /b *.tst') do (
  echo %%a 
  call  ..\..\tools\HardwareSimulator.bat %%a 
)


