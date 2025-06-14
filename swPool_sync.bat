:: This is a script that automatically downloads / updates Pool Datapack and its required Math Datapack and Resourcepack from GitHub.
:: DO NOT USE if you have custom modifications, because the current Pool / Math Datapacks will be deleted.


@echo off
setlocal

echo %~dp0
cd /d %~dp0


:: Download and extract Pool project
curl -L -o sw_tmp.zip https://github.com/MingshiYangUIUC/Pool-Minecraft-Squid-Workshop-Project/archive/refs/heads/main.zip
tar -xf sw_tmp.zip

if exist "Pool-Datapack-Squid-Workshop" (
    rmdir /s /q "Pool-Datapack-Squid-Workshop"
)

xcopy /E /H /Y "Pool-Minecraft-Squid-Workshop-Project-main\*" .

del sw_tmp.zip
rmdir /s /q "Pool-Minecraft-Squid-Workshop-Project-main"


:: Download and extract Math project
curl -L -o sw_tmp.zip https://github.com/MingshiYangUIUC/Math-Minecraft-Squid-Workshop-Project/archive/refs/heads/main.zip
tar -xf sw_tmp.zip

if exist "Math-Datapack-Squid-Workshop" (
    rmdir /s /q "Math-Datapack-Squid-Workshop"
)

move ".\Math-Minecraft-Squid-Workshop-Project-main\Math-Datapack-Squid-Workshop" .

del sw_tmp.zip
rmdir /s /q "Math-Minecraft-Squid-Workshop-Project-main"


:: Ask if user wants to update resource pack
set /p userInput=Do you want to update the resource pack? (Y/N) [default: N]: 

if /I "%userInput%"=="Y" (
    echo Updating resource pack...

    :: Get current directory of the script
    set "script_dir=%~dp0"

    :: Normalize and build full path to resourcepacks folder
    pushd "%script_dir%"
    for %%A in ("%script_dir%..\..\..\resourcepacks") do set "targetDir=%%~fA"
    popd

    :: Delete existing folder if it exists
    if exist "%targetDir%\Pool-ResourcepackFolder-Squid-Workshop" (
        rmdir /s /q "%targetDir%\Pool-ResourcepackFolder-Squid-Workshop"
    )

    :: Copy new resource pack
    xcopy /E /I /H /Y "Pool-ResourcepackFolder-Squid-Workshop" "%targetDir%\Pool-ResourcepackFolder-Squid-Workshop"
) else (
    echo Skipping resource pack update.
)


echo Done.
endlocal
pause
