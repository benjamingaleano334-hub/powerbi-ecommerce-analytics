-- Ventas por categoría
SELECT Category, SUM(Final_Price) AS total_ventas
FROM compras
GROUP BY Category
ORDER BY total_ventas DESC;

-- Método de pago más utilizado
SELECT Payment_Method, COUNT(*) AS cantidad_transacciones
FROM compras
GROUP BY Payment_Method
ORDER BY cantidad_transacciones DESC;

-- Descuento promedio por categoría
SELECT Category, AVG(Discount) AS descuento_promedio
FROM compras
GROUP BY Category
ORDER BY descuento_promedio DESC;

-- Evolución mensual de ventas
SELECT strftime('%Y-%m', Purchase_Date) AS mes,
       SUM(Final_Price) AS ventas_mensuales
FROM compras
GROUP BY mes
ORDER BY mes;

-- Top 10 productos más vendidos
SELECT Product_ID, COUNT(*) AS cantidad_vendida,
       SUM(Final_Price) AS ingresos
FROM compras
GROUP BY Product_ID
ORDER BY cantidad_vendida DESC
LIMIT 10;

-- Ticket promedio por cliente
SELECT User_ID, AVG(Final_Price) AS ticket_promedio,
       SUM(Final_Price) AS total_gastado
FROM compras
GROUP BY User_ID
ORDER BY total_gastado DESC;
