# Schéma relationnel - La gargote de RADO 
## Légende 
## Légende
- **Clé primaire** : en gras
- `#Clé étrangère` : précédée d'un dièse
- `Attribut?` : facultatif (NULL autorisé)

---

## Tables
### Categorie
- **id_categorie**
- libelle

### Plat 
- **id_plat**
- #id_categorie
- libelle
- prix 

