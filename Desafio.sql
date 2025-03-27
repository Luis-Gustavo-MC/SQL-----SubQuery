-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Crie uma coluna calculada com o número de visitas realizadas por cada
-- cliente da tabela sales.customers
select * from sales.customers
select * from sales.funnel

WITH consultas AS (
    SELECT COUNT(fun.visit_page_date) AS visitas, fun.customer_id
    FROM sales.funnel AS fun
    GROUP BY fun.customer_id
)
SELECT cus.*, cons.visitas
FROM sales.customers AS cus
LEFT JOIN consultas AS cons
ON cus.customer_id = cons.customer_id;



