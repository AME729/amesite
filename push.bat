@echo off
echo ========================================================
echo    ENVOI DU PROJET AMESITE SUR GITHUB (AME729/amesite)
echo ========================================================
echo.
"%LOCALAPPDATA%\Programs\MinGit\cmd\git.exe" push -u origin main
echo.
if %ERRORLEVEL% EQU 0 (
    echo ========================================================
    echo  SUCCES ! Votre projet est en ligne sur GitHub :
    echo  https://github.com/AME729/amesite
    echo ========================================================
    start https://github.com/AME729/amesite
) else (
    echo [ERREUR] Le depot n'existe pas encore sur GitHub ou n'est pas accessible.
    echo Assurez-vous d'avoir cree le depot "amesite" sur https://github.com/new
)
echo.
pause
