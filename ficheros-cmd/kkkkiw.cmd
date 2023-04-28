echo reduce la foto
set a200=200%
set a500=500%
set a1000=1000%
set a1500=1500%

echo /resize_long=%a200%
del "d:\4UOC\PEC1\fotos\fotos-0200\0\*.*" /q
del "d:\4UOC\PEC1\fotos\fotos-0200\1\*.*" /q
del "d:\4UOC\PEC1\fotos\fotos-0200\6\*.*" /q

del "d:\4UOC\PEC1\fotos\fotos-0500\0\*.*" /q
del "d:\4UOC\PEC1\fotos\fotos-0500\1\*.*" /q
del "d:\4UOC\PEC1\fotos\fotos-0500\6\*.*" /q

del "d:\4UOC\PEC1\fotos\fotos-1000\0\*.*" /q
del "d:\4UOC\PEC1\fotos\fotos-1000\1\*.*" /q
del "d:\4UOC\PEC1\fotos\fotos-1000\6\*.*" /q

del "d:\4UOC\PEC1\fotos\fotos-1500\0\*.*" /q
del "d:\4UOC\PEC1\fotos\fotos-1500\1\*.*" /q
del "d:\4UOC\PEC1\fotos\fotos-1500\6\*.*" /q

"c:\Fotos View64\i_view64.exe" "d:\4UOC\PEC1\fotos\fotos-0000\0\*.jpg" /resize_long=%a200% /aspectratio /resample /convert="d:\4UOC\PEC1\fotos\fotos-0200\0\*.png"
"c:\Fotos View64\i_view64.exe" "d:\4UOC\PEC1\fotos\fotos-0000\1\*.jpg" /resize_long=%a200% /aspectratio /resample /convert="d:\4UOC\PEC1\fotos\fotos-0200\1\*.png"
"c:\Fotos View64\i_view64.exe" "d:\4UOC\PEC1\fotos\fotos-0000\6\*.jpg" /resize_long=%a200% /aspectratio /resample /convert="d:\4UOC\PEC1\fotos\fotos-0200\6\*.png"

"c:\Fotos View64\i_view64.exe" "d:\4UOC\PEC1\fotos\fotos-0000\0\*.jpg" /resize_long=%a500% /aspectratio /resample /convert="d:\4UOC\PEC1\fotos\fotos-0500\0\*.png"
"c:\Fotos View64\i_view64.exe" "d:\4UOC\PEC1\fotos\fotos-0000\1\*.jpg" /resize_long=%a500% /aspectratio /resample /convert="d:\4UOC\PEC1\fotos\fotos-0500\1\*.png"
"c:\Fotos View64\i_view64.exe" "d:\4UOC\PEC1\fotos\fotos-0000\6\*.jpg" /resize_long=%a500% /aspectratio /resample /convert="d:\4UOC\PEC1\fotos\fotos-0500\6\*.png"

"c:\Fotos View64\i_view64.exe" "d:\4UOC\PEC1\fotos\fotos-0000\0\*.jpg" /resize_long=%a1000% /aspectratio /resample /convert="d:\4UOC\PEC1\fotos\fotos-1000\0\*.png"
"c:\Fotos View64\i_view64.exe" "d:\4UOC\PEC1\fotos\fotos-0000\1\*.jpg" /resize_long=%a1000% /aspectratio /resample /convert="d:\4UOC\PEC1\fotos\fotos-1000\1\*.png"
"c:\Fotos View64\i_view64.exe" "d:\4UOC\PEC1\fotos\fotos-0000\6\*.jpg" /resize_long=%a1000% /aspectratio /resample /convert="d:\4UOC\PEC1\fotos\fotos-1000\6\*.png"

"c:\Fotos View64\i_view64.exe" "d:\4UOC\PEC1\fotos\fotos-0000\0\*.jpg" /resize_long=%a1500% /aspectratio /resample /convert="d:\4UOC\PEC1\fotos\fotos-1500\0\*.png"
"c:\Fotos View64\i_view64.exe" "d:\4UOC\PEC1\fotos\fotos-0000\1\*.jpg" /resize_long=%a1500% /aspectratio /resample /convert="d:\4UOC\PEC1\fotos\fotos-1500\1\*.png"
"c:\Fotos View64\i_view64.exe" "d:\4UOC\PEC1\fotos\fotos-0000\6\*.jpg" /resize_long=%a1500% /aspectratio /resample /convert="d:\4UOC\PEC1\fotos\fotos-1500\6\*.png"



