@echo off
SetLocal enableextensions EnableDelayedExpansion
cls
Title FnC Function Demo File - www.batch-man.com

:Setup
for /f %%a in ('copy /Z "%~dpf0" nul') do set "BS=%%a"

:Main
Set /P "_FileName=Type FileName to Generate:"
Set /P "_Author=Author of Project:"
If Not Defined _FileName (Goto :Main)
Echo. Creating File...
Echo. The Process of File Generation might be Slow in Win 10, Because of Defender.
Start /b Call FnC "%_FileName%" "%_Author%"
Timeout /t 1
Pushd "%CD%\%_FileName%\Src\"

:Loop
If exist "%_FileName%.bat" (
REM Reading the Size of Currently Generated File...
For /F "tokens=1,2,3* skip=6" %%A in ('Dir !_FileName!.bat') do (If /i "%%~A" == "1" (Set "_Size=%%~C"))
Set /P ".=File Size: !_Size! Bytes!BS!" <nul
Timeout /t 1 >nul
If !_Size! == !_Old_Size! (Set /A _Counter+=1) ELSE (Set _Counter=0)
REM Just to Make Sure that the File Size is not Changing anymore...
If !_Counter! GTR 3 (Goto :End)
Set "_Old_Size=!_Size!"
)
Goto :Loop

:End
Popd
Cls
Echo. File Generation Complete.
Pause >nul
Exit /b 0