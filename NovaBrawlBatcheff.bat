
setlocal enabledelayedexpansion

SET iter=10000
SET memSize=50




set BGE[01]="Enhance all Enfeeble 2"




SET find="Optimized"
SET file="NS_Allegiance_Brawl_enfeed.txt"

echo %time%>%file% 

for /F "tokens=2 delims==" %%a in ('set BGE[') do (

	echo %%a>>%file%
	for /L %%i in (1,1,%memSize%) do (
		tuo "NS%%i" "novaGT" gw ordered -e %%a -o=nova\invt%%i.txt -t 7 climb %iter% | find %find% >> %file% 
	)
)
echo %time%>>%file%