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
Set _ver=20211022

REM Checking for various parameters of the function...
If /i "%~1" == "/?" (goto :help)
If /i "%~1" == "-h" (goto :help)
If /i "%~1" == "-help" (goto :help)
If /i "%~1" == "help" (goto :help)
If /i "%~1" == "ver" (Echo.%_ver%&Goto :End)
If /i "%~1" == "" (goto :help)

REM Saving parameters to variables...
Set "_Name=%~1"

REM Starting Main Program...
:Main
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
	"REM This program is free software: you can redistribute it and/or modify"
    "REM it under the terms of the GNU General Public License as published by"
    "REM the Free Software Foundation, either version 3 of the License, or"
    "REM (at your option) any later version. "
    "REM see www.gnu.org/licenses"
    ""
    ""
    "REM ================= ABOUT THE PROGRAM ================="
    "REM This program is Created by _________________ at '!date! - !time:~0,-6!'"
    "REM This program can _______________________________________________________"
    "REM Use '/?' for getting help for This."
    "REM For More Visit: www.batch-man.com"
    ""
    ""
    "REM Setting version information..."
    "Set _ver^= _._"
    ""
    ""
    "REM Checking for various parameters of the function..."
    "If /i ^"%%~1^" ^=^= ^"/\/\^" ^(goto :help^)"
    "If /i ^"%%~1^" ^=^= ^"-h^" ^(goto :help^)"
    "If /i ^"%%~1^" ^=^= ^"-help^" ^(goto :help^)"
    "If /i ^"%%~1^" ^=^= ^"help^" ^(goto :help^)"
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
	"Echo. CREDITS: !_Name! %%_ver%% by _________________"
	"echo."
	"echo. Syntax: Call !_Name! [] [] [] [] [] [] [] [] []"
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
	"Echo. PLUGIN REQUIRED FOR THIS PROJECT..."
	"Echo. _________________"
	"Echo. _________________"
	"Echo. _________________"
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
Echo. Generated "!_Name!.bat" ...
Goto :End

:End
Goto :EOF

:Help
Echo.
Echo. This function will Generate the backbone Batch code structure of the new 
Echo. function in a File (in the same Folder).
echo. It will help you in quickly Starting with your projects, without too much
Echo. thoughts about the basic - repeating things.
echo.
echo. Syntax: Call FnC [Name]
echo. Syntax: call FnC [help , /? , -h , -help]
echo. Syntax: call FnC ver
echo.
echo. Where:-
echo.
echo. ver		: Displays version of program
echo. help		: Displays help for the program
echo. Name		: Name of the File to Generate [Program will add .bat extension]
Echo.
Echo. Example: Call FnC FnC
Echo. Example: Call FnC Table-Function
Echo. Example: Call FnC ver
Echo. Example: Call FnC [/? , -h , -help , help]
Echo.
Echo. Now, you can start working on your projects quickly and with less hassle.
Echo. So, Jump Start your awesome scripts.
Echo.
Echo. www.batch-man.com
Echo. #batch-man
Goto :End

