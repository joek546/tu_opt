
setlocal enabledelayedexpansion

SET iter=60000
SET memSize=50




set fort[01]="Lightning Cannon(2)"
set fort[02]="Lightning Cannon,Inspiring Altar"
set fort[03]="Inspiring Altar(2)"

SET find="Optimized"
SET file="Carnifex_Void_opt.txt"

echo %time%>%file% 

for /L %%j in (12,2,20) do (
	echo.>>%file%
	echo level %%j>>%file%
for /F "tokens=2 delims==" %%a in ('set fort[') do (
	echo %%a>>%file%
	for /L %%i in (1,1,%memSize%) do (
		tuo "VR%%i" "Carnifex-%%j" raid ordered yf %%a -t 6 -o=Void\invt%%i.txt climb %iter% | find %find% >> %file% 
	
	)
)
)
echo %time%>>%file%