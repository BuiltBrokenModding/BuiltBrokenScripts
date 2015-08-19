@echo off
cd ..
gradlew build -PbambooshortPlanName=BBM-Dev -Pdmodcurse=61545 --refresh-dependencies
echo "Exit?"
pause > nul