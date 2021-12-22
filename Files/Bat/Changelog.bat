
For %%A in (
	"# Project: !_Name! - by !_Author!"
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