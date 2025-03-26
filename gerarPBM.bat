@echo off
setlocal EnableDelayedExpansion

set filename=imagemPBM.pbm

echo P1 > %filename%
echo 100 100 >> %filename%

for /L %%i in (1,1,100) do (
    set line=
    for /L %%j in (1,1,100) do (
        set /A rand=!random! %% 2
        set line=!line!!rand! 
    )
    echo !line! >> %filename%
)
