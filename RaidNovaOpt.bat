
setlocal enabledelayedexpansion

SET iter=100000
SET memSize=50




set fort[01]="Lightning Cannon(2)"
set fort[02]="Lightning Cannon,Inspiring Altar"
set fort[03]="Inspiring Altar(2)"

SET find="Optimized"
SET file="Carnifex_Nova_opt2.txt"

echo %time%>%file% 

for /L %%j in (17,2,23) do (
	echo.>>%file%
	echo level %%j>>%file%
for /F "tokens=2 delims==" %%a in ('set fort[') do (
	echo %%a>>%file%
	for /L %%i in (1,1,%memSize%) do (
		tuo "NS%%i" "Carnifex-%%j" raid ordered yf %%a -t 8 -o=nova\invt%%i.txt climb %iter% | find %find% >> %file% 
	
	)
)
)
echo %time%>>%file%