
setlocal enabledelayedexpansion

SET iter=10000
SET memSize=49



set BGE[01]="Rally all 1"
set BGE[02]="Rally all 2"
set BGE[03]="Rally all 3"



SET find="Optimized"
SET file="Commendation_Brawl_WH.txt"

echo %time%>%file% 

for /F "tokens=2 delims==" %%a in ('set BGE[') do (

	echo %%a>>%file%
	for /L %%i in (1,1,%memSize%) do (
		tuo "WH%%i" "GT200k" gw ordered -e %%a -o=Warp\invt%%i.txt -t 8 climb %iter% | find %find% >> %file% 
	)
)
echo %time%>>%file%