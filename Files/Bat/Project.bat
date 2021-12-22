For %%A in (
	"@Echo off"
	"Setlocal EnableDelayedExpansion"
	""
	"Set _path^=%%LocalAppdata%%\%_Name%"
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