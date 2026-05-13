-- Тестові дані для перевірки роботи бази даних

INSERT INTO users (full_name, email, phone, address) VALUES
('Качура Діана', 'diana.kachura@example.com', '+380501112233', 'м. Харків'),
('Іван Петренко', 'ivan.petrenko@example.com', '+380671234567', 'м. Київ'),
('Олена Шевченко', 'olena.shevchenko@example.com', '+380931112244', 'м. Львів');

INSERT INTO products (name, description, price, stock_quantity) VALUES
('Ноутбук Lenovo IdeaPad 3', 'Ноутбук для навчання, офісу та базової роботи.', 21999.00, 10),
('Ноутбук Asus VivoBook 15', 'Універсальний ноутбук для навчання та повсякденних задач.', 24999.00, 7),
('Миша Logitech M185', 'Бездротова комп’ютерна миша.', 599.00, 30),
('Рюкзак для ноутбука', 'Рюкзак із відділенням для ноутбука до 15.6 дюймів.', 1299.00, 15);

INSERT INTO categories (name, description) VALUES
('Ноутбуки', 'Портативні комп’ютери для навчання, роботи та розваг.'),
('Аксесуари', 'Додаткові товари для комп’ютерної техніки.'),
('Товари для навчання', 'Товари, корисні для студентів та навчального процесу.');

INSERT INTO product_categories (product_id, category_id) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(4, 2),
(4, 3);

INSERT INTO orders (user_id, status, total_amount) VALUES
(1, 'paid', 22598.00),
(2, 'new', 26298.00),
(3, 'completed', 1299.00);

INSERT INTO order_products (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 21999.00),
(1, 3, 1, 599.00),
(2, 2, 1, 24999.00),
(2, 4, 1, 1299.00),
(3, 4, 1, 1299.00);

INSERT INTO reviews (user_id, product_id, rating, comment) VALUES
(1, 1, 5, 'Хороший ноутбук для навчання та роботи з документами.'),
(2, 2, 4, 'Зручний ноутбук, але хотілося б більшу автономність.'),
(3, 4, 5, 'Рюкзак зручний і добре підходить для ноутбука.');
