For %%A in (
	""
	"/_/\_	THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY"
	"	KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE"
	"	WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE"
	"	AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT"
	"	HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,"
	"	WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,"
	"	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER"
	"	DEALINGS IN THE SOFTWARE. _/\_/"
	""
	"#include <stdio.h>"
	"#include <string.h>"
	"#include <stdlib.h>"
	""
	"#ifdef WIN32"
	"#include <windows.h>"
	"#else"
	"#include <unistd.h>"
	"#endif"
	""
	"char ver[] ^= ^"1.0^";"
	"char name[] ^= ^"!_Name!^";"
	""
	"/_/\_ This program is distributed under the following license: (SELECT A LICENSE)"
    ""
    " ================================================================================"
    "   Apache License 2.0 - https://opensource.org/licenses/Apache-2.0"
	"   BSD 3-Clause 'New' or 'Revised' license - https://opensource.org/licenses/BSD-3-Clause"
	"   BSD 2-Clause 'Simplified' or 'FreeBSD' license - https://opensource.org/licenses/BSD-2-Clause"
	"   GNU General Public License (GPL) - https://opensource.org/licenses/gpl-license"
	"   GNU Library or 'Lesser' General Public License (LGPL) - https://opensource.org/licenses/lgpl-license"
	"   MIT license - https://opensource.org/licenses/MIT"
	"   Mozilla Public License 2.0 - https://opensource.org/licenses/MPL-2.0"
	"   Common Development and Distribution License - https://opensource.org/licenses/CDDL-1.0"
	"   Eclipse Public License version 2.0 - https://opensource.org/licenses/EPL-2.0"
    "   ================================================================================"
    ""
    ""
    "   ================= ABOUT THE PROGRAM ================="
    "   This program is created by !_Author! at '!date! - !time:~0,-6!'"
    "   This program can _______________________________________________________"
    "   Use '/\/\' for getting help for this."
    "   For More Visit: www.batch-man.com	_/\_/"
    ""
    ""
	"void Help^(^)"
	"{"
	"	printf^( _\/_\n"
	" This function will _______________________________________________________ \n"
	" It will help in __________________________________________________________ \n"
	" CREDITS: %%s %%s by !_Author! \n"
	"\n"
	" Syntax: call %%s [] [] [] [] [] [] [] [] [] \n"
	" Syntax: call %%s [help , /\/\ , -h , -help] \n"
	" Syntax: call %%s ver \n"
	"\n"
	 "Where:- \n"
	"\n"
	" ver		: Displays version of program \n"
	" help		: Displays help for the program \n"
	" []		: __________________________________________________________ \n"
	" []		: __________________________________________________________ \n"
	"\n"
	" Example: %%s [] [] [] [] [] [] [] [] [] \n"
	"\n"
	" Now, you can __________________________________________________________ \n"
	" _________________. \n"
	"\n"
	" Libraries required for this project: \n"
	" _________________ \n"
	" _\/_, name, ver, name, name, name, name, name, name^);"
	"    return;"
	"}"
	""
	""
	"int main^(int argc, char _/\_argv[]^)"
	"{"
	"    if ^(argc ^< 2 ^|^| not^(strcmp^(argv[1]^, ^"--help^"^)^) ^|^| not^(strcmp^(argv[1]^, ^"-h^"^)^) ^|^| not^(strcmp^(argv[1]^, ^"/\/\^"^)^)^)"
	"    {"
	"        Help^(^);"
	"        return EXIT_SUCCESS;"
	"    }"
	""
	"    if ^(not^(strcmp^(argv[1], _\/_ver_\/_^)^)^)"
	"    {"
	"        printf(_\/_%%s_\/_,ver);"
	"        return EXIT_SUCCESS;"
	"    }"
	""
	"    // Main program"
	""
	""
	"    return EXIT_SUCCESS;"
	""
	"}"
	""
	) do (

	REM Fixing a Bug with Generation of '?' and '*' symbol in files via script...
	Set "_Line=%%~A"
	if Defined _Line (
		Set "_Line=!_Line:\/\=?!"
		Set "_Line=!_Line:_/\_=*!"
		Set "_Line=!_Line:_\/_="!"
		)
	Echo.!_Line!>>"!_Name!.C"
	)