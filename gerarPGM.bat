@echo off
setlocal EnableDelayedExpansion

set filename=imagemPGM.pgm

echo P2 > %filename%
echo 100 100 >> %filename%
echo 15 >> %filename%

for /L %%i in (1,1,100) do (
    set line=
    for /L %%j in (1,1,100) do (
        set /A rand=!random! %% 16
        set line=!line!!rand! 
    )
    echo !line! >> %filename%
)
