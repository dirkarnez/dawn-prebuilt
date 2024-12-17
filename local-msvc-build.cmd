@REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set DOWNLOADS_DIR_LINUX=%DOWNLOADS_DIR:\=/%

SET PATH=^
%DOWNLOADS_DIR%\PortableGit\bin;^
%DOWNLOADS_DIR%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64;^
%DOWNLOADS_DIR%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1\mingw64\bin;^
%DOWNLOADS_DIR%\cmake-3.26.1-windows-x86_64\bin;

@REM set PATH=^
@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;^
@REM D:\Softwares\cmake-3.23.0-rc1-windows-x86_64\bin;

cmake.exe -G "Visual Studio 17 2022" -A x64 ^
-DCMAKE_BUILD_TYPE=Release ^
-DBUILD_SHARED_LIBS=OFF ^
-DDAWN_FETCH_DEPENDENCIES=ON  ^
-DDAWN_ENABLE_INSTALL=ON  ^
-DCMAKE_INSTALL_PREFIX="cmake-build/installation" -B./cmake-build &&^
cd cmake-build &&^
cmake --build . --config Release &&^
echo done &&^
cmake --install . &&^
echo "Successful build"
pause


            
