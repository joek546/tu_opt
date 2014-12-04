
setlocal enabledelayedexpansion

SET iter=10000
SET memSize=49
SET yfort="Foreboding Archway"
set efort="Sky Fortress(2)"


SET find="Optimized"
SET file="WH_War_Def.txt"

echo %time%>%file% 

for /L %%i in (1,1,%memSize%) do (
	tuo "WH%%i" "GT200k" gw-defense random yf %yfort% ef %efort% -e "Heal all 2" -o=Warp\invt%%i.txt -t 8 climb %iter% | find %find% >> %file% 
)

echo %time%>>%file%