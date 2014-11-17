REM ********************************************************************************
REM Copy my config files into the correct locations
REM ********************************************************************************


REM Vim
copy C:\Users\Josh\Dropbox\Public\configs\_vimrc %USERPROFILE%
mkdir %USERPROFILE%\backup

REM ConEMu
copy "C:\Users\Josh\OneDrive\Fresh Install\settings\ConEmu.xml" C:\bin\cmder\config\ConEmu.xml
