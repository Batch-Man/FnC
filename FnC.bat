@Echo off
Setlocal EnableDelayedExpansion

REM Fun Fact: THE FnC FUNCTION 1.0 IS GENERATED FROM FnC ITSELF!
REM NOTICE THE CODE STRUCTURE OF FnC :)

REM THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY
REM KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
REM WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE
REM AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
REM HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
REM WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
REM OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
REM DEALINGS IN THE SOFTWARE.

REM This program is free software: you can redistribute it and/or modify
REM it under the terms of the GNU General Public License as published by
REM the Free Software Foundation, either version 3 of the License, or
REM (at your option) any later version. 
REM see www.gnu.org/licenses


REM ================= ABOUT THE PROGRAM =================
REM This program is Created by Kvc at 'Mon 11/02/2020 - 19:04'
REM This program can Generate a Skeleton for you to start your projects easy!
REM For More Visit: www.batch-man.com


REM Setting version information...
Set _ver=20220129

REM Checking for various parameters of the function...
If /i "%~1" == "/?" (Goto :Help)
If /i "%~1" == "" (Goto :Help)
If /i "%~2" == "" (Goto :Help)

for %%A in ("-h" "-help" "--help" "help") do (if /i "%~1"=="%%~A" (goto :help))
If /i "%~1" == "ver" (Echo.%_ver%&Goto :End)

REM Saving parameters to variables...
Set "_FnC_Location=%~dp0"
Set "_Name=%~1"
Set "_Lang=%~2"
Set "_Author=%~3"
Set "_Project_Location=%~4"

REM Starting Main Program...
:Main
REM Removing Last '\' from the location...
Set _FnC_Location=%_FnC_Location:~0,-1%

if /i "!_Author!" == "" (set "_Author=[AUTHOR]")
if /i "!_Project_Location!" == "" (set "_Project_Location=%_FnC_Location%")

If NOT Exist "%_FnC_Location%\Files\%_Lang%" (Echo.Language not supported! Try 'FnC /?'&&Goto :End)

IF NOT EXIST "!_Project_Location!\!_Name!" (
	REM Create a Folder Structure as well...
	Call "!_FnC_Location!\Files\!_Lang!\FolderStructure.bat"
)
Call "!_FnC_Location!\Files\Generate!_Lang!Project.bat"
Goto :End

:End
Goto :EOF

:Help
Echo.
Echo. This function will generate the backbone batch code structure of the new 
Echo. function in a file ^(in the same folder^). - aka Template.
echo. It will help you in quickly starting with your projects, without too much
Echo. thoughts about the basic - repeating things.
echo.
echo. Syntax: call FnC ^<Name^> ^<Language^> [Author] [ProjectLocation]
echo. Syntax: call FnC [help , /? , -h , -help]
echo. Syntax: call FnC ver
echo.
echo. Where:-
echo.
echo. ver		: Displays version of program
echo. help		: Displays help for the program
echo. Name		: Name of the file to generate ^(Program will add .bat extension^)
echo. Language	: Bat, C ^(One of these Coding Languages^) 
echo. Author		: Author of the file to generate ^(optional^)
echo. ProjectLocation : Location of the Project ^(optional^) 
Echo.
Echo. Example: call FnC FnC Bat Kvc "D:\Projects\FnC"
Echo. Example: call FnC Table-Function C anic17 "D:\Projects\Table-Function"
Echo. Example: call FnC ver
Echo. Example: call FnC [/? , -h , -help , help]
Echo.
Echo. Now, you can start working on your projects quickly and with less hassle.
Echo. So, jump start your awesome scripts.
Echo.
Echo. www.batch-man.com
Echo. #batch-man
Goto :End

