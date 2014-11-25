
setlocal enabledelayedexpansion

SET iter=10000

set fort[01]="Mortar Tower(2)"
set fort[02]="Mortar Tower,Lightning Cannon"
set fort[03]="Mortar Tower,Corrosive Spore"
set fort[04]="Mortar Tower,Sky Fortress"
set fort[05]="Mortar Tower,Death Factory"
set fort[06]="Mortar Tower,Inspiring Altar"
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

SET find="Optimized"
SET file="NS_Brawl_Result_BGE2.txt"

echo %time%>%file% 

for /l %%i in (1,1,50) do (
	echo NS%%i>> %file% 
	tuo "NS%%i" "GT200k" gw ordered -e "Bloodlust 2" -o=guild\invt%%i.txt climb %iter% | find %find% >> %file% 
	echo.>>%file% 
	
)
echo %time%>>%file%