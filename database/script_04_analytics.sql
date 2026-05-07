-- Total vendido por cliente
SELECT
    c.Nome,
    SUM(v.ValorTotal) AS TotalGasto
FROM Clientes c
JOIN Vendas v ON c.ClienteID = v.ClienteID
GROUP BY c.Nome
ORDER BY TotalGasto DESC;

--ranking com Window Function
SELECT
    Nome,
    TotalGasto,
    RANK() OVER (ORDER BY TotalGasto DESC) AS Ranking
FROM (
    SELECT
        c.Nome,
        SUM(v.ValorTotal) AS TotalGasto
    FROM Clientes c
    JOIN Vendas v ON c.ClienteID = v.ClienteID
    GROUP BY c.Nome) 
AS Subconsulta;