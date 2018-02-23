#!/bin/sh
function pause(){
   read -p "$*"
}

cd ..

./gradlew build -PbambooshortPlanName=BBM-Dev -Pdmodcurse=61545 --refresh-dependencies
pause 'Exit?'
exit 0

