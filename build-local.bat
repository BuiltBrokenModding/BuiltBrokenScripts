@echo off
cd ..
gradlew clean build publish -PbambooshortPlanName=VoltzEngine -Pdmodcurse=61545 -Plocal=true --refresh-dependencies
echo "Exit?"
pause > nul