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
REM This program is Created by Kvc at 'Mon 11/02/2020 - 19:04', and
REM improved at 12/18/2021
REM This program can Generate a Skeleton for you to start your projects easy!
REM For More Visit: www.batch-man.com


REM Setting version information...
Set _ver=20211218

REM Checking for various parameters of the function...
for %%A in ("/?" "-h" "-help" "--help" "help" "") do (if /i "%~1"=="%%~A" (goto :help))
If /i "%~1" == "ver" (Echo.%_ver%&Goto :End)


REM Saving parameters to variables...
if /i "%~2" neq "" (set "_Author=%~2") else (set "_Author=[AUTHOR]")

Set "_Name=%~1"

REM Starting Main Program...
:Main
IF NOT EXIST "%CD%\%_Name%" (
	REM Create a Folder Structure as well...
	MD "%CD%\%_Name%"
	MD "%CD%\%_Name%\bin"
	MD "%CD%\%_Name%\Src"
	MD "%CD%\%_Name%\Src\Files"
	echo.>"%CD%\%_Name%\README.md"
	echo.>"%CD%\%_Name%\CHANGELOG.md"
)
Pushd "%CD%\%_Name%\Src" >nul 2>nul
If Exist "%_Name%.bat" (Echo. File Already Exists! Can't Overwrite!&&Goto :End)

For %%A in (
	"@Echo off"
	"Setlocal EnableDelayedExpansion"
	""
	"Set _path^=%%Appdata%%\%_Name%"
	"Set path=%%path%%;%%_path%%;%%cd%%;%%cd%%\Files;"
	"Cd Files ^>nul 2^>nul"
	"If Not exist ^"%%_path%%^" ^(Md ^"%%_path%%^"^)"
	""
	"REM THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY"
	"REM KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE"
	"REM WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE"
	"REM AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT"
	"REM HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,"
	"REM WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,"
	"REM OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER"
	"REM DEALINGS IN THE SOFTWARE."
	""
	"REM This program is distributed under the following license: (SELECT A LICENSE)"
    ""
    "REM ================================================================================"
    "REM Apache License 2.0 - https://opensource.org/licenses/Apache-2.0"
	"REM BSD 3-Clause 'New' or 'Revised' license - https://opensource.org/licenses/BSD-3-Clause"
	"REM BSD 2-Clause 'Simplified' or 'FreeBSD' license - https://opensource.org/licenses/BSD-2-Clause"
	"REM GNU General Public License (GPL) - https://opensource.org/licenses/gpl-license"
	"REM GNU Library or 'Lesser' General Public License (LGPL) - https://opensource.org/licenses/lgpl-license"
	"REM MIT license - https://opensource.org/licenses/MIT"
	"REM Mozilla Public License 2.0 - https://opensource.org/licenses/MPL-2.0"
	"REM Common Development and Distribution License - https://opensource.org/licenses/CDDL-1.0"
	"REM Eclipse Public License version 2.0 - https://opensource.org/licenses/EPL-2.0"
    "REM ================================================================================"
    ""
    ""
    "REM ================= ABOUT THE PROGRAM ================="
    "REM This program is created by !_Author! at '!date! - !time:~0,-6!'"
    "REM This program can _______________________________________________________"
    "REM Use '/?' for getting help for This."
    "REM For More Visit: www.batch-man.com"
    ""
    ""
    "REM Setting version information..."
    "Set _ver^=_._"
    ""
    ""
    "REM Checking for various parameters of the function..."
	"for %%%%A in ^(^"/\/\^" ^"--help^" ^"-h^" ^"-\/\^" ^"-help^"^) do ^(if /i ^"%%%%A^" ^=^= ^"%%~1^" ^(goto :help^)^)"
    "If /i ^"%%~1^" ^=^= ^"ver^" ^(Echo.%%_ver%%^&Goto :End^)"
    "If /i ^"%%~1^" ^=^= ^"^" ^(goto :help^)"
    ""
    "If /i ^"%%~2^" ^=^= ^"^" ^(goto :help^)"
    "If /i ^"%%~3^" ^=^= ^"^" ^(goto :help^)"
    "If /i ^"%%~4^" ^=^= ^"^" ^(goto :help^)"
	"If /i ^"%%~5^" ^=^= ^"^" ^(goto :help^)"
	"If /i ^"%%~6^" ^=^= ^"^" ^(goto :help^)"
	"If /i ^"%%~7^" ^=^= ^"^" ^(goto :help^)"
	"If /i ^"%%~8^" ^=^= ^"^" ^(goto :help^)"
	"If /i ^"%%~9^" ^=^= ^"^" ^(goto :help^)"
	""
	"REM Saving parameters to variables..."
	"Set _1^=%%~1"
	"Set _2^=%%~2"
	"Set _3^=%%~3"
	"Set _4^=%%~4"
	"Set _5^=%%~5"
	"Set _6^=%%~6"
	"Set _7^=%%~7"
	"Set _8^=%%~8"
	"Set _9^=%%~9"
	""
	"REM Starting Main Program..."
	":Main"
	""
	""
	""
	""
	""
	""
	""
	""
	""
	""
	""
	"Goto :End"
	""
	""
	":End"
	"Goto :EOF"
	""
	":Help"
	"Echo."
	"Echo. This function will _______________________________________________________"
	"echo. It will help in __________________________________________________________"
	"Echo. CREDITS: !_Name! %%_ver%% by !_Author!"
	"echo."
	"echo. Syntax: call !_Name! [] [] [] [] [] [] [] [] []"
	"echo. Syntax: call !_Name! [help , /\/\ , -h , -help]"
	"echo. Syntax: call !_Name! ver"
	"echo."
	"echo. Where:-"
	"echo."
	"echo. ver		: Displays version of program"
	"echo. help		: Displays help for the program"
	"echo. []		: __________________________________________________________"
	"Echo. []		: __________________________________________________________"
	"echo. []		: __________________________________________________________"
	"Echo. []		: __________________________________________________________"
	"Echo. []		: __________________________________________________________"
	"Echo. []		: __________________________________________________________"
	"Echo. []		: __________________________________________________________"
	"Echo. []		: __________________________________________________________"
	"Echo. []		: __________________________________________________________"
	"Echo."
	"Echo. Example: Call !_Name! [] [] [] [] [] [] [] [] []"
	"Echo. Example: Call !_Name! ver"
	"Echo. Example: Call !_Name! [/\/\ , -h , -help , help]" 
	"Echo." 
	"Echo. Now, you can __________________________________________________________"
	"Echo. _________________."
	"Echo."
	"Echo. PLUGINS REQUIRED FOR THIS PROJECT:"
	"Echo. _________________"
	"Echo. _________________"
	"Echo."
	"Echo. www.batch-man.com"
	"Echo. #batch-man"
	"Goto :End"
	""
	) do (

	REM Fixing a Bug with Generation of '?' symbol in files via script...
	Set "_Line=%%~A"
	if Defined _Line (Set "_Line=!_Line:\/\=?!")
	Echo.!_Line!>>"!_Name!.bat"
	)
Echo. Generated "..\%_Name%\Src\!_Name!.bat" ...
Popd
Pushd "%CD%\%_Name%"
Echo. Generating README.md File...

For %%A in (
	"# !_Name!"
	"## Description"
	"This program can ___________________________________________________"
	""
	"Author: !_Author!"
	""
	"## Usage"
	"Call !_Name! [syntax]"
	""
	"Where:"
	""
	"- `ver`		: 	Displays version of program"
	"- `help`		: 	Displays help for the program"
	"- `_________`	: 	___________________________________________________"
	""
	"Example: "
	"`call !_Name! ____________`"  
	""
	""
	""
	"www.batch-man.com"
	) do (
	REM Fixing a Bug with Generation of '?' symbol in files via script...
	Set "_Line=%%~A"
	if Defined _Line (Set "_Line=!_Line:\/\=?!")
	Echo.!_Line!>>"README.md"
	)
Echo. Generated "..\%_Name%\README.md" ...
Echo. Generating CHANGELOG.md File...

For %%A in (
	"# !_Name! Function"
	"## v1.0"
	"1. "
	"2. "
	""
	""
	"## v2.0"
	"1. "
	"2. "
	""
	""
	"## v3.0"
	"1. "
	"2. "
	""
	""
	"www.batch-man.com"
	) do (
	REM Fixing a Bug with Generation of '?' symbol in files via script...
	Set "_Line=%%~A"
	if Defined _Line (Set "_Line=!_Line:\/\=?!")
	Echo.!_Line!>>"CHANGELOG.md"
	)
Echo. Generated "..\%_Name%\CHANGELOG.md" ...

Goto :End

:End
Popd
Goto :EOF

:Help
Echo.
Echo. This function will generate the backbone batch code structure of the new 
Echo. function in a file (in the same folder).
echo. It will help you in quickly starting with your projects, without too much
Echo. thoughts about the basic - repeating things.
echo.
echo. Syntax: call FnC ^<Name^> [Author]
echo. Syntax: call FnC [help , /? , -h , -help]
echo. Syntax: call FnC ver
echo.
echo. Where:-
echo.
echo. ver		: Displays version of program
echo. help		: Displays help for the program
echo. Name		: Name of the file to generate ^(Program will add .bat extension^)
echo. Author	: Author of the file to generate (optional)
Echo.
Echo. Example: call FnC FnC
Echo. Example: call FnC Table-Function
Echo. Example: call FnC ver
Echo. Example: call FnC [/? , -h , -help , help]
Echo.
Echo. Now, you can start working on your projects quickly and with less hassle.
Echo. So, jump start your awesome scripts.
Echo.
Echo. www.batch-man.com
Echo. #batch-man
Goto :End

