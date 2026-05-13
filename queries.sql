-- Приклади запитів для перевірки зв'язків між таблицями

-- 1. Перегляд усіх користувачів
SELECT *
FROM users;

-- 2. Перегляд товарів разом із категоріями
SELECT
    p.product_id,
    p.name AS product_name,
    c.name AS category_name,
    p.price
FROM products p
JOIN product_categories pc ON p.product_id = pc.product_id
JOIN categories c ON pc.category_id = c.category_id
ORDER BY p.product_id;

-- 3. Перегляд замовлень користувачів
SELECT
    o.order_id,
    u.full_name,
    o.order_date,
    o.status,
    o.total_amount
FROM orders o
JOIN users u ON o.user_id = u.user_id
ORDER BY o.order_id;

-- 4. Деталі замовлень: які товари входять до кожного замовлення
SELECT
    o.order_id,
    u.full_name,
    p.name AS product_name,
    op.quantity,
    op.unit_price,
    op.quantity * op.unit_price AS line_total
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN order_products op ON o.order_id = op.order_id
JOIN products p ON op.product_id = p.product_id
ORDER BY o.order_id;

-- 5. Відгуки користувачів на товари
SELECT
    r.review_id,
    u.full_name,
    p.name AS product_name,
    r.rating,
    r.comment,
    r.created_at
FROM reviews r
JOIN users u ON r.user_id = u.user_id
JOIN products p ON r.product_id = p.product_id
ORDER BY r.review_id;

-- 6. Середній рейтинг кожного товару
SELECT
    p.name AS product_name,
    ROUND(AVG(r.rating), 2) AS average_rating,
    COUNT(r.review_id) AS reviews_count
FROM products p
LEFT JOIN reviews r ON p.product_id = r.product_id
GROUP BY p.product_id, p.name
ORDER BY average_rating DESC NULLS LAST;
