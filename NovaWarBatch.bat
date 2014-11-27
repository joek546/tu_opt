
setlocal enabledelayedexpansion

SET iter=10000
SET memSize=49
SET efort="Foreboding Archway"
SEt yfort="Sky Fortress(2)"
SET find="Optimized"
SET file="NS_war_skyfort.txt"

echo %time%>%file% 


for /L %%i in (1,1,%memSize%) do (
	tuo "NS%%i" "novaGT" gw ordered yf %yfort% ef %efort% -e "Heal all 2" -o=nova\invt%%i.txt -t 6 climb %iter% | find %find% >> %file% 
)

echo %time%>>%file%