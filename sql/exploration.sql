SELECT * FROM ventes LIMIT 10;
SELECT SUM(Quantity * Unit_Price) AS total_revenue
FROM ventes;

PRAGMA table_info(ventes);

SELECT Sales_Rep, SUM(Quantity * Unit_Price) AS total_revenue
FROM ventes
GROUP BY Sales_Rep
ORDER BY total_revenue DESC;

SELECT Category, SUM(Quantity * Unit_Price) AS total_revenue
FROM ventes
GROUP BY Category
ORDER BY total_revenue DESC;

SELECT Sales_Rep, SUM(Quantity * Unit_Price) AS total_revenue
FROM ventes
GROUP BY Sales_Rep
ORDER BY total_revenue DESC;

SELECT 
  strftime('%Y-%m', Date) AS month,
  SUM(Quantity * Unit_Price) AS total_revenue
FROM ventes
GROUP BY month
ORDER BY month;

SELECT 
  Sales_Rep, 
  COUNT(DISTINCT Order_ID) AS nb_commandes
FROM ventes
GROUP BY Sales_Rep
ORDER BY nb_commandes DESC;

SELECT 
  Product, 
  SUM(Quantity * Unit_Price) AS total_revenue
FROM ventes
GROUP BY Product
ORDER BY total_revenue DESC
LIMIT 5;

SELECT 
  Region, 
  SUM(Quantity * Unit_Price) AS total_revenue
FROM ventes
GROUP BY Region
ORDER BY total_revenue DESC;

SELECT 
  Sales_Rep, 
  COUNT(DISTINCT Order_ID) AS nb_commandes
FROM ventes
GROUP BY Sales_Rep
ORDER BY nb_commandes DESC;

SELECT 
  ROUND(SUM(Quantity * Unit_Price) / COUNT(DISTINCT Order_ID), 2) AS avg_revenue_per_order
FROM ventes;

SELECT 
    Product, 
    SUM(Quantity) AS total_quantity
FROM 
    ventes
GROUP BY 
    Product
ORDER BY 
    total_quantity DESC
LIMIT 5;

SELECT 
    strftime('%Y-%m', Date) AS mois, 
    SUM(Total) AS total_revenue
FROM 
    ventes
GROUP BY 
    mois
ORDER BY 
    mois;

SELECT 
    Product, 
    SUM(Quantity) AS quantity_totale
FROM 
    ventes
GROUP BY 
    Product
ORDER BY 
    quantity_totale DESC
LIMIT 5;


