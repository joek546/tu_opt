
setlocal enabledelayedexpansion

SET iter=100000
SET memSize=6
SET efort="Foreboding Archway"


echo set fort[01]="Lightning Cannon(2)"
echo set fort[02]="Lightning Cannon,Inspiring Altar"
set fort[01]="Inspiring Altar(2)"



SET find="Optimized"
SET file="Carnifex_Whale_Lv26.txt"

echo %time%>>%file% 

for /F "tokens=2 delims==" %%a in ('set fort[') do (
	echo %%a>>%file%
	for /L %%i in (1,1,%memSize%) do (
		tuo "RW%%i" "Carnifex" raid ordered yf %%a -t 6 -o=raid\raid%%i.txt climb %iter% | find %find% >> %file% 
	
	)
)

echo %time%>>%file%