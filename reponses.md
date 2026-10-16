## Etape 1
-  Afficher les plats du plus cher au moins cher
```sql
    SELECT libelle as  plat,prix FROM plat ORDER BY prix;
```
- Type de prix : INT
- Identifiant auto incrementer 

## Etape 2
- Un champ de type VARCHAR accepte n'importe quoi. Un jour, un utilisateur (ou un script) pourra inserer "Plat malagasy", le lendemain "plat malagasy" (avec une minuscule), et le surlendemain faire une faute de frappe comme "Plat malagase". Pour le SGBD, ce sont trois categories totalement differentes, ce qui faussera toutes tes statistiques.

## Etape 3 
- Quantite dans la table ligne_commande

