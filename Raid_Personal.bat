
setlocal enabledelayedexpansion

SET iter=300000





set fort[01]="Lightning Cannon(2)"
set fort[02]="Death Factory (2)"
set fort[03]="Inspiring Altar(2)"

SET find="Optimized"
SET file="BroodMother_nkorboy.txt"

echo %time%>%file% 

for /F "tokens=2 delims==" %%a in ('set fort[') do (
	echo %%a>>%file%
	for /L %%j in (15,1,22) do (
		echo level %%j>>%file%
		tuo nkorboy "Brood Mother-%%j" raid ordered yf %%a -t 8 -o=invent.txt climb %iter% | find %find% >> %file% 
	)
)
echo %time%>>%file%