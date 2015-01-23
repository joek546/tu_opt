
setlocal enabledelayedexpansion

SET iter=300000





set fort[01]="Lightning Cannon(2)"
set fort[02]="Lightning Cannon,Inspiring Altar"
set fort[03]="Inspiring Altar(2)"

SET find="Optimized"
SET file="Karkinos_nkorboy.txt"

echo %time%>%file% 

for /L %%j in (15,1,25) do (
	echo.>>%file%
	echo level %%j>>%file%
	for /F "tokens=2 delims==" %%a in ('set fort[') do (
		echo %%a>>%file%
		tuo nkorboy "Karkinos-%%j" raid ordered yf %%a -t 6 -o=invent.txt climb %iter% | find %find% >> %file% 
	)
)
echo %time%>>%file%