
setlocal enabledelayedexpansion

SET iter=10000
SET memSize=49
SET efort="Foreboding Archway"


set fort[01]="Mortar Tower(2)"
set fort[02]="Lightning Cannon(2)"
set fort[03]="Corrosive Spore(2)"
set fort[04]="Sky Fortress(2)"
set fort[05]="Death Factory(2)"
set fort[06]="Inspiring Altar(2)"



SET find="Optimized"
SET file="WH_war1_fort.txt"

echo %time%>%file% 

for /F "tokens=2 delims==" %%a in ('set fort[') do (
	echo %efort%>>%file%
	echo %%a>>%file%
	for /L %%i in (1,1,%memSize%) do (
		echo NS%%i>> %file% 
		tuo "WH%%i" "GT200k" gw random yf %%a ef %efort% -e "Heal all 2" -t 8 climb %iter% | find %find% >> %file% 
		echo.>>%file% 
	
	)
)
echo %time%>>%file%