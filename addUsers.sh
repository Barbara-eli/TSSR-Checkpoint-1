#!/bi/bash

# Vérification si des arguments ont été fournis
if [ $# -eq 0 ]; then
   echo "Il manque les noms d'utilisateurs en argument"
   exit 1
fi

# Boucle pour chaque utilisateur passé en argument
for user in "$@"; do
      # Vérification si l'utilisateur existe déjà
      if id "$user" &>/dev/null; then
         echo "L'utilisateur '$user' existe déjà."
         else
           # Création de l'utilisateur
           useradd "$user"
           if [$? -eq 0 ]; then
              echo "l'utilisateur '$user' a été crée."
           else
              echo "Erreur à la creation de l'utilisateur '$user'"
          fi
      fi
  done
