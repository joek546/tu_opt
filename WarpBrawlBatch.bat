
setlocal enabledelayedexpansion

SET iter=10000
SET memSize=49



set BGE[01]="Enhance all Counter 2"
set BGE[02]="Enhance all Enfeeble 2"
set BGE[03]="Enhance all Protect 2"



SET find="Optimized"
SET file="WH_Allegiance_Brawl.txt"

echo %time%>%file% 

for /F "tokens=2 delims==" %%a in ('set BGE[') do (

	echo %%a>>%file%
	for /L %%i in (1,1,%memSize%) do (
		tuo "WH%%i" "GT200k" gw ordered -e %%a -o=Warp\invt%%i.txt -t 8 climb %iter% | find %find% >> %file% 
	)
)
echo %time%>>%file%