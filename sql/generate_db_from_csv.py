import sqlite3
import pandas as pd

# Charger le fichier CSV
df = pd.read_csv("data/sales_data.csv")

# Connexion à la base de données SQLite (créée dans le dossier sql)
conn = sqlite3.connect("sql/sales.db")

# Exporter les données dans une table appelée "ventes"
df.to_sql("ventes", conn, if_exists="replace", index=False)

conn.close()
print("Base de données SQLite générée avec succès.")
