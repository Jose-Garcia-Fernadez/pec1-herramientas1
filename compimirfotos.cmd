
echo reduce la foto

set a300=300
set a600=600
set a900=900

set origen1=c:\4UOC\FOTOS\TODAS\1\*.jpg
set origen6=c:\4UOC\FOTOS\TODAS\6\*.jpg
set exe="c:\IrfanView32\i_view32.exe"



set extension=*.WebP
set destino300-1=c:\4UOC\FOTOS\TODAS\WebP\300\1\
set destino300-6=c:\4UOC\FOTOS\TODAS\WebP\300\6\
set destino600-1=c:\4UOC\FOTOS\TODAS\WebP\600\1\
set destino600-6=c:\4UOC\FOTOS\TODAS\WebP\600\6\
set destino900-1=c:\4UOC\FOTOS\TODAS\WebP\900\1\
set destino900-6=c:\4UOC\FOTOS\TODAS\WebP\900\6\

del "%destino300-1%*.*" /q
del "%destino300-6%*.*" /q
del "%destino600-1%*.*" /q
del "%destino600-6%*.*" /q
del "%destino900-1%*.*" /q
del "%destino900-6%*.*" /q

%exe% %origen1% /resize_long=%a300% /aspectratio /resample /convert="%destino300-1%%extension%"
%exe% %origen6% /resize_long=%a300% /aspectratio /resample /convert="%destino300-6%%extension%"
%exe% %origen1% /resize_long=%a600% /aspectratio /resample /convert="%destino600-1%%extension%"
%exe% %origen6% /resize_long=%a600% /aspectratio /resample /convert="%destino600-6%%extension%"
%exe% %origen1% /resize_long=%a900% /aspectratio /resample /convert="%destino900-1%%extension%"
%exe% %origen6% /resize_long=%a900% /aspectratio /resample /convert="%destino900-6%%extension%"


REM set extension=/*.avif

set extension=*.png
set destino300-1=c:\4UOC\FOTOS\TODAS\PNG\300\1\
set destino300-6=c:\4UOC\FOTOS\TODAS\PNG\300\6\
set destino600-1=c:\4UOC\FOTOS\TODAS\PNG\600\1\
set destino600-6=c:\4UOC\FOTOS\TODAS\PNG\600\6\
set destino900-1=c:\4UOC\FOTOS\TODAS\PNG\900\1\
set destino900-6=c:\4UOC\FOTOS\TODAS\PNG\900\6\
del "%destino300-1%*.*" /q
del "%destino300-6%*.*" /q
del "%destino600-1%*.*" /q
del "%destino600-6%*.*" /q
del "%destino900-1%*.*" /q
del "%destino900-6%*.*" /q
%exe% %origen1% /resize_long=%a300% /aspectratio /resample /convert="%destino300-1%%extension%"
%exe% %origen6% /resize_long=%a300% /aspectratio /resample /convert="%destino300-6%%extension%"
%exe% %origen1% /resize_long=%a600% /aspectratio /resample /convert="%destino600-1%%extension%"
%exe% %origen6% /resize_long=%a600% /aspectratio /resample /convert="%destino600-6%%extension%"
%exe% %origen1% /resize_long=%a900% /aspectratio /resample /convert="%destino900-1%%extension%"
%exe% %origen6% /resize_long=%a900% /aspectratio /resample /convert="%destino900-6%%extension%"





 