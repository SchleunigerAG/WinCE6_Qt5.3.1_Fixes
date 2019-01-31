echo off
echo --------------------------------------------------------------------------------
echo WARNING: This batch file must be executed with the VISUAL STUDIO 2008 CONSOLE!!!
echo --------------------------------------------------------------------------------
pause
echo --------------------------------------------------------------------------------
echo Have you checked the correct directory name (Qt-Version, infix:VX, Platform) ?
echo %CD%
echo --------------------------------------------------------------------------------
pause
configure -prefix %CD%/qtbase -platform win32-msvc2008 -xplatform wince60colibri-armv4i-msvc2008 -qtlibinfix 531V3-WCE6 -opensource -nomake examples -no-compile-examples -no-accessibility -no-native-gestures -no-opengl -no-icu -skip activeqt -skip winextras -skip multimedia -skip location -skip imageformats -confirm-license
