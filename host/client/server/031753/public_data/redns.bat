@echo off  
net start dnscache
ipconfig /flushdns
exit /b