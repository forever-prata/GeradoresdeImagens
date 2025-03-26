@echo off
setlocal EnableDelayedExpansion

set filename=imagemPPM2.ppm

echo P3 > %filename%
echo 1000 1000 >> %filename%
echo 255 >> %filename%

for /L %%i in (1,1,3000) do (
    set line=
    for /L %%j in (1,1,3000) do (
        set /A rand=!random! %% 256
        set line=!line!!rand! 
    )
    echo !line! >> %filename%
)
