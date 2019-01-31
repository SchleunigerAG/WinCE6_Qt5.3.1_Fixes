# WinCE6_Qt5.3.1_Fixes
Summary of the changes done by Schleuniger:

5.3.1-V3-WinCE60Colibri-msvc2008
- resolve NOMINMAX compiler error in QDateTime (QTBUG-31469)
- add "#define _CRT_BANNED_DEPRECATE( x )" in files to resolve wince sdk compiler errors
- add some #ifdef/#ifndef to resolve specific WinCE6 problems for a (not 100% tested) GUI working Qt build
- add infix for plugin dlls
- remove tiff from imageformats
