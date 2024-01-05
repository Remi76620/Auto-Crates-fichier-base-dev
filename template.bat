@echo off
setlocal

REM Définir le chemin vers le dossier template sur le bureau
set cheminTemplate=C:\Users\quint\Desktop\template\

REM Création du dossier template et ses sous-dossiers
mkdir "%cheminTemplate%"
mkdir "%cheminTemplate%assets"
mkdir "%cheminTemplate%assets\img"

REM Création des fichiers styles.css et javascript.js dans le dossier assets
echo /* Styles CSS */ > "%cheminTemplate%assets\styles.css"
echo // JavaScript File > "%cheminTemplate%assets\javascript.js"

REM Création du fichier index.html avec la structure spécifiée
(
echo ^<!DOCTYPE html^>
echo ^<html lang="fr"^>
echo ^<head^>
echo     ^<meta charset="UTF-8"^>
echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo     ^<title>Galérie de Films^</title^>
echo     ^<link rel="stylesheet" href="assets/styles.css"^>
echo ^</head^>
echo ^<body^>
echo     ^<script src="assets/javascript.js"^>^</script^>
echo ^</body^>
echo ^</html^>
) > "%cheminTemplate%index.html"

endlocal
