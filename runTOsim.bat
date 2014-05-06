@echo off
cd C:\Users\jkim802\Documents\tu_optimize
del TOsimoutput.txt
echo sim #1/1
tu_optimize.exe "Barracus-6,Narscious the Eerie-6,Warp Alchemist-6,Narscious the Eerie-6,Warp Alchemist-6,Sacred Sanctuary-6,Heart Devourer-6,Loaded Warehouse-6,Charincinerator-6,Heart Devourer-6,Charincinerator-6" "Worldship" -r sim 500 >> TOsimoutput.txt
