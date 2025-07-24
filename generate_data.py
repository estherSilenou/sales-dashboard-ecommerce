import pandas as pd
import random
from faker import Faker

fake = Faker()
n = 500

products = [
    ("Clavier mécanique", "Accessoires"),
    ("Souris gamer", "Accessoires"),
    ("Casque audio", "Audio"),
    ("Écran 24\"", "Écrans"),
    ("Portable 15\"", "Ordinateurs"),
    ("Cartouche d'encre", "Fournitures"),
    ("Sac à dos", "Accessoires"),
    ("Webcam HD", "Accessoires"),
    ("Smartphone X", "Téléphonie"),
    ("Tablette 10\"", "Téléphonie")
]

regions = ["Île-de-France", "Auvergne-Rhône-Alpes", "Nouvelle-Aquitaine", "Occitanie", "Hauts-de-France"]
sales_reps = ["Alice Martin", "Bruno Dubois", "Clara Moreau", "David Leroy", "Emma Petit"]

rows = []
for i in range(1, n+1):
    product, category = random.choice(products)
    qty = random.randint(1, 5)
    price = round(random.uniform(20, 500), 2)
    total = round(qty * price, 2)
    date = fake.date_between(start_date='-1y', end_date='today')
    rows.append({
        "Order_ID": f"ORD-{i:04d}",
        "Date": date,
        "Product": product,
        "Category": category,
        "Quantity": qty,
        "Unit_Price": price,
        "Total": total,
        "Sales_Rep": random.choice(sales_reps),
        "Region": random.choice(regions),
        "Client_ID": f"CLT-{fake.random_int(1,300):03d}"
    })

df = pd.DataFrame(rows)
df.to_csv("data/sales_data.csv", index=False)
print("sales_data.csv généré avec 500 lignes.")
