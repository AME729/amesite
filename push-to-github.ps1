# ====================================================================
# SCRIPT DE CONNEXION ET PUBLICATION SUR GITHUB POUR AMESITE STUDIO
# ====================================================================

$gh = "C:\Program Files\GitHub CLI\gh.exe"
$git = "$env:LOCALAPPDATA\Programs\MinGit\cmd\git.exe"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "       🚀 PUBLICATION DU PROJET AMESITE SUR GITHUB        " -ForegroundColor Yellow
Write-Host "==========================================================" -ForegroundColor Cyan

# 1. Verification de l'authentification GitHub
Write-Host "`n1. Verification de la connexion GitHub..." -ForegroundColor White
$authCheck = & $gh auth status 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host "Vous n'etes pas encore connecte a GitHub." -ForegroundColor Yellow
    Write-Host "Connexion securisee en cours via votre navigateur web..." -ForegroundColor Cyan
    & $gh auth login -w -p https
} else {
    Write-Host "Connexion GitHub active et verifiee !" -ForegroundColor Green
}

# 2. Creation du depot GitHub et Push
Write-Host "`n2. Creation du depot distant 'amesite-studio' sur votre compte GitHub..." -ForegroundColor White
& $gh repo create amesite-studio --public --source="." --remote=origin --push

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n🎉 SUCCES ! Votre agence AMESITE est maintenant en ligne sur GitHub !" -ForegroundColor Green
    $repoUrl = & $gh repo view --json url -q .url
    Write-Host "Lien de votre repository : $repoUrl" -ForegroundColor Cyan
    Start-Process $repoUrl
} else {
    Write-Host "`nNote : Si le depot existe deja sur votre compte, vous pouvez simplement pousser :" -ForegroundColor Yellow
    Write-Host "& '$git' push -u origin main" -ForegroundColor White
}

Write-Host "`nAppuyez sur Entree pour fermer cette fenetre..."
Read-Host
