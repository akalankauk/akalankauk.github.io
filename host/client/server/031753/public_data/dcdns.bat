@echo off  
net stop dnscache
ipconfig /flushdns
exit /b