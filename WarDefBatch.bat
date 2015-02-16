
setlocal enabledelayedexpansion

SET iter=50000
SET memSize=5
SET df="Foreboding Archway"
SET BGE="Enhance all Corrosive 2"

set fort[01]="Sky Fortress(2)"
set fort[02]="Sky Fortress,Death Factory"
set fort[03]="Death Factory(2)"


SET find="Optimized"
SET file="JudgmentWarDef.txt"

echo %time%>%file% 

for /F "tokens=2 delims==" %%a in ('set fort[') do (
	echo %%a>>%file%
	tuo "nkorboy" "GTD" gw-defense random yf %df% ef %%a -e %BGE% -t 6 -o=invent.txt climb %iter% | find %find% >> %file% 
)
echo %time%>>%file%