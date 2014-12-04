
setlocal enabledelayedexpansion

SET iter=10000
SET memSize=49
SET efort="Illuminary Blockade"
SEt yfort="Sky Fortress(2)"
SET find="Optimized"
SET file="NS_war_skyfort_IB2.txt"

echo %time%>%file% 


for /L %%i in (25,1,%memSize%) do (
	tuo "NS%%i" "novaGT" gw ordered yf %yfort% ef %efort% -e "Heal all 2" -o=nova\invt%%i.txt -t 8 climb %iter% | find %find% >> %file% 
)

echo %time%>>%file%