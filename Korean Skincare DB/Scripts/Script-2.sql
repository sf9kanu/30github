-- Добавляем покупателя
INSERT INTO users (name, email, phone, address) VALUES 
('Merinisa', 'snrm@example.com', '+996777462002', 'Bishkek, Manas Str., Apt 5');

-- Создаем заказ
INSERT INTO orders (user_id, total_price, status) 
VALUES (1, 2780.00, 'Processing...') RETURNING id;
