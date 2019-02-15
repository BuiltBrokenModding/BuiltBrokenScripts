@echo off
cd ..

SET /P ANSWER=Would you use idea? (Y/N)? 
echo You chose: %ANSWER% 
if /i {%ANSWER%}=={y} (goto :idea)
if /i {%ANSWER%}=={yes} (goto :idea)
goto :eclipse

:idea
gradlew IDEA genIntellijRuns -PbambooshortPlanName=BBM-Dev -Pdmodcurse=61545 --refresh-dependencies

:eclipse
gradlew cleanEclipse eclipse -PbambooshortPlanName=BBM-Dev --refresh-dependencies