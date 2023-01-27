
set PATH_TO_FOLDER=C:\Users\sdv\Desktop\script\my_script
set PATH_TO_DOC=%PATH_TO_FOLDER%\template.doc 
set PATH_TO_RESULT=%PATH_TO_FOLDER%\Result.doc
set POWERSHELL=C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe
set PAIRS_ARRAY=%*
set LOG_FILE=%PATH_TO_FOLDER%\file.log

chcp 1251

echo - Script has been started > %LOG_FILE%
echo - Insert parametrs: %PAIRS_ARRAY% >> %LOG_FILE%

%POWERSHELL% -file %PATH_TO_FOLDER%\edit_and_print.ps1 %PATH_TO_DOC% %PATH_TO_RESULT% %PAIRS_ARRAY% >> %LOG_FILE% 2>&1

echo - Finished >> %LOG_FILE%