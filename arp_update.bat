@echo off
setlocal enabledelayedexpansion

set /a Total=255
set /a Rate=0
set /a Display=1

for /l %%i in (0,1,%Total%) do (
	rem arp�e�[�u���̍X�V
	ping -w 1 -n 1 192.168.0.%i && arp -a 192.168.0.%i >> arp.log

	rem �v���O���X�o�[
	set /a Rate=%%i * 20
	set /a Rate/=%Total%
	if !Rate! geq !Display! (
		set /p Bar=��< nul
		set /a Display+=1
	)
	
)

echo. & pause