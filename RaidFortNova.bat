
setlocal enabledelayedexpansion

SET iter=100000
SET memSize=20



set fort[07]="Lightning Cannon,Mortar Tower"
set fort[08]="Lightning Cannon(2)"
set fort[09]="Lightning Cannon,Corrosive Spore"
set fort[10]="Lightning Cannon,Sky Fortress"
set fort[11]="Lightning Cannon,Death Factory"
set fort[12]="Lightning Cannon,Inspiring Altar"
set fort[13]="Corrosive Spore,Mortar Tower"
set fort[14]="Corrosive Spore,Lightning Cannon"
set fort[15]="Corrosive Spore(2)"
set fort[16]="Corrosive Spore,Sky Fortress"
set fort[17]="Corrosive Spore,Death Factory"
set fort[18]="Corrosive Spore,Inspiring Altar"
set fort[19]="Sky Fortress,Mortar Tower"
set fort[20]="Sky Fortress,Lightning Cannon"
set fort[21]="Sky Fortress,Corrosive Spore"
set fort[22]="Sky Fortress(2)"
set fort[23]="Sky Fortress,Death Factory"
set fort[24]="Sky Fortress,Inspiring Altar"
set fort[25]="Death Factory(2)"
set fort[26]="Death Factory,Mortar Tower"
set fort[27]="Death Factory,Lightning Cannon"
set fort[28]="Death Factory,Corrosive Spore"
set fort[29]="Death Factory,Sky Fortress"
set fort[30]="Death Factory,Inspiring Altar"
set fort[31]="Inspiring Altar,Mortar Tower"
set fort[32]="Inspiring Altar,Lightning Cannon" 
set fort[33]="Inspiring Altar,Corrosive Spore"
set fort[34]="Inspiring Altar,Sky Fortress"
set fort[35]="Inspiring Altar,Death Factory"
set fort[36]="Inspiring Altar(2)"

SET find="score"
SET file="test_raid_fort2.txt"

echo %time%>%file% 

for /L %%j in (12,2,20) do (
	echo.>>%file%
	echo level %%j>>%file%
for /F "tokens=2 delims==" %%a in ('set fort[') do (
	echo %%a>>%file%
	for /L %%i in (1,2,%memSize%) do (
		tuo "NS%%i" "Carnifex-%%j" raid random yf %%a -t 6 -o=blank.txt sim %iter% | find %find% >> %file% 
	
	)
)
)
echo %time%>>%file%