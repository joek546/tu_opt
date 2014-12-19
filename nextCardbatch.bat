
setlocal enabledelayedexpansion

SET mydeck="nkorboy"
SET iter=100000


SET find="Optimized"
SET file="card_result.txt"

echo start time>%file%
echo %time%>>%file%
echo.>>%file%

echo Current Best Deck:>>%file%
tuo %mydeck% "nova" gw ordered -o=invent.txt -t 6 climb %iter% | find %find% >> %file% 
echo.>>%file%

for /F "tokens=*" %%i in (nextcard.txt) do (
	type invent.txt > thiscard.txt
	echo %%i>>thiscard.txt
	echo with %%i:>>%file%
	tuo %mydeck% "nova" gw ordered -o=thiscard.txt -t 6 climb %iter% | find %find% >> %file% 
	echo.>>%file%
)

echo stop time>>%file%
echo %time%>>%file%