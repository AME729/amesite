# 🌐 GUIDE DE DÉPLOIEMENT EN LIGNE POUR AMESITE

Votre site et son estimateur interactif sont 100% optimisés et prêts à être déployés sur le web avec certificat SSL (HTTPS) gratuit.

Voici les 2 méthodes les plus simples et gratuites :

---

## MÉTHODE 1 : Déploiement en 30 secondes sans rien installer (Recommandé)

Cette méthode ne nécessite aucune ligne de commande ni outil technique :

1. Ouvrez dans votre navigateur la page de déploiement instantané :  
   👉 **[app.netlify.com/drop](https://app.netlify.com/drop)**
2. Ouvrez votre explorateur de fichiers Windows à l'adresse suivante :  
   `C:\Users\elhos\.gemini\antigravity\scratch\`
3. **Glissez-déposez le dossier `agence-numerique`** directement dans le cercle en pointillé sur la page Netlify.
4. 🎉 **Félicitations !** Votre site est immédiatement en ligne et vous recevez une adresse web publique (ex: `https://amesite-studio.netlify.app`).

*(Vous pouvez ensuite renommer le sous-domaine gratuitement dans les paramètres du site).*

---

## MÉTHODE 2 : Déploiement via Vercel (Idéal pour relier un nom de domaine)

1. Rendez-vous sur **[vercel.com](https://vercel.com)** et créez un compte gratuit (avec GitHub ou email).
2. Cliquez sur **"Add New Project"**.
3. Importez le dossier `agence-numerique` (ou déposez-le via le client GitHub).
4. Le fichier [`vercel.json`](file:///C:/Users/elhos/.gemini/antigravity/scratch/agence-numerique/vercel.json) configurera automatiquement les en-têtes de sécurité et les routes propres.
5. Cliquez sur **Deploy**.

---

## CONNECTER VOTRE PROPRE NOM DE DOMAINE (ex: amesite.fr)

Dès que votre site est hébergé sur Netlify ou Vercel :
1. Achetez le nom de domaine de votre choix sur [OVHcloud](https://www.ovhcloud.com) ou [Cloudflare](https://www.cloudflare.com) (environ 7 € à 10 € / an).
2. Dans Netlify ou Vercel, allez dans **Settings > Domains** et tapez votre domaine (ex: `amesite.fr`).
3. La plateforme vous donnera 2 entrées DNS (CNAME et A Record) à copier-coller dans votre espace OVH/Cloudflare.
4. En 10 minutes, votre agence **AMESITE** est accessible sur son domaine propre avec cadenas vert HTTPS automatique !
