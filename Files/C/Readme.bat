

For %%A in (
	"# !_Name! - by !_Author!"
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