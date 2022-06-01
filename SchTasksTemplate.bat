@REM Author: Pablo J. Santos
@REM GitHub: JaySaints
@REM Created: 2022.05.31
@REM Version: 1.0
@REM Description: This command will create a new task schedule for execute weekly a clear in log folders.

@ECHO OFF

@REM Delete task if exist before create new task!
SCHTASKS /Delete /F /TN ExecMyTask

@REM Set path script file to execute the cleaning.
SET FILE_EXEC="C:\Users\%USERNAME%\Desktop\script-batch.bat"

@REM /TN - Name Task Schedule:              ExecMyTask
@REM /SC - Frequency:                       Once for week
@REM /D  - Day:                             Wednesday
@REM /ST - Time:                            05:00 AM
@REM /RU - Username execute:                %USERNAME% is a variable environment 
@REM /RL - Level priority:                  Highest
@REM /TR - Command or script to execute:    script-batch.bat"

SCHTASKS /Create /TN ExecMyTask /SC WEEKLY /D WED /ST 05:00 /RU %USERNAME% /RL HIGHEST /TR %FILE_EXEC%
