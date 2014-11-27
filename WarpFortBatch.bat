
setlocal enabledelayedexpansion

SET iter=10000
SET memSize=49
SET efort="Foreboding Archway"
SET yfort="Sky Fortress(2)"

set fort[01]="Mortar Tower(2)"
set fort[02]="Lightning Cannon(2)"
set fort[03]="Corrosive Spore(2)"
set fort[04]="Sky Fortress(2)"
set fort[05]="Death Factory(2)"
set fort[06]="Inspiring Altar(2)"



SET find="Optimized"
SET file="WH_war_skyfort.txt"

echo %time%>%file% 


for /L %%i in (1,1,%memSize%) do (
	tuo "WH%%i" "GT200k" gw ordered yf %yfort% ef %efort% -e "Heal all 2" -o=Warp\invt%%i.txt -t 8 climb %iter% | find %find% >> %file% 
)

echo %time%>>%file%