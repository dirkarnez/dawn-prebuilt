@REM run as Administrator
@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set DOWNLOADS_DIR_LINUX=%DOWNLOADS_DIR:\=/%

SET PATH=^
%DOWNLOADS_DIR%\PortableGit-2.38.1-64-bit\bin;^
%DOWNLOADS_DIR%\cmake-3.24.0-windows-x86_64\bin;

@REM set PATH=^
@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;^
@REM D:\Softwares\cmake-3.23.0-rc1-windows-x86_64\bin;


cmake.exe -G "Visual Studio 17 2022" -A x64 ^
-DCMAKE_BUILD_TYPE=Release ^
-DBUILD_SHARED_LIBS=OFF ^
-DDAWN_FETCH_DEPENDENCIES=ON  ^
-DDAWN_ENABLE_INSTALL=ON  ^
-DDAWN_ENABLE_D3D11=OFF ^
-DDAWN_ENABLE_D3D12=OFF ^
-DCMAKE_INSTALL_PREFIX="cmake-build/installation" -B./cmake-build &&^
cd cmake-build &&^
cmake --build . --config Release &&^
echo done &&^
cmake --install . &&^
echo "Successful build"

            
