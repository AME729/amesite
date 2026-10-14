# Script de lancement pour déploiement instantané AMESITE
Write-Host "Ouverture de la page de deploiement Netlify Drop..." -ForegroundColor Cyan
Start-Process "https://app.netlify.com/drop"

Write-Host "Ouverture du dossier du projet dans l'explorateur Windows..." -ForegroundColor Green
explorer.exe "C:\Users\elhos\.gemini\antigravity\scratch"

Write-Host "`nIl vous suffit de glisser-deposer le dossier 'agence-numerique' sur la page web ouverte dans votre navigateur !" -ForegroundColor Yellow
