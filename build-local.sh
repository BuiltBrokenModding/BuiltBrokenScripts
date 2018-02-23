#!/bin/sh
function pause(){
   read -p "$*"
}

cd ..

./gradlew clean build publish -PbambooshortPlanName=BBM-Dev -Pdmodcurse=61545 -Plocal=true --refresh-dependencies
pause 'Exit?'
exit 0
