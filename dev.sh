#!/bin/sh
cd ..

echo "Would you like to use IDEA? (y/n)"
read qIdea

if [ $qIdea = "y" ]; then
./gradlew setupdecompworkspace IDEA genIntellijRuns -PbambooshortPlanName=BBM-Dev -Pdmodcurse=61545 --refresh-dependencies
exit 0

fi

if [ $qIdea = "yes" ]; then
./gradlew setupdecompworkspace IDEA genIntellijRuns -PbambooshortPlanName=BBM-Dev -Pdmodcurse=61545 --refresh-dependencies
exit 0

else
./gradlew setupdecompworkspace cleanEclipse eclipse -PbambooshortPlanName=BBM-Dev --refresh-dependencies
exit 0

fi
exit 0
