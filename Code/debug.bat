cd edit
"D:\Program Files (x86)\wave\Wave.exe" --autooutput --sysinclude="D:\Program Files (x86)\wave\include" --sysinclude="D:\War3\Maps\XZincFrame" --define=WARCRAFT_VERSION=127 --define=YDWE_VERSION_STRING=\"1.31.8.1850\" --define=USE_BJ_OPTIMIZATION=1 --define=SCRIPT_INJECTION=1 --forceinclude=WaveForce.i --extended --c99 --preserve=2 --line=0  "main.j"
@REM lua "D:\\War3\\Maps\\PhantomOrbit\\lua\\newlineWin.lua"
copy main.i TEMPLATE_COMPILE_JASS.j
del main.i
"D:\Program Files (x86)\jasshelper\jasshelper.exe" --debug --scriptonly "D:\Program Files (x86)\jasshelper\common.j" "D:\Program Files (x86)\jasshelper\blizzard.j" TEMPLATE_COMPILE_JASS.j output.j
