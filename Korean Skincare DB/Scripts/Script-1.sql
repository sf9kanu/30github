-- Добавляем бренды
INSERT INTO brands (name) VALUES 
('Torriden'), ('Celimax'), ('Isntree'), ('Biodance'), ('Dr.Althea'), ('Round Lab');

-- Добавляем категории товаров
INSERT INTO categories (name) VALUES 
('Тонеры'), ('Сыворотки'), ('Кремы'), ('Очищение'), ('Солнцезащитные средства');

-- Добавляем товары
INSERT INTO products (name, brand_id, category_id, price, stock, description, image_url) VALUES 
('Torriden Dive-In Serum', 1, 2, 1290.00, 50, 'Увлажняющая сыворотка с 5 видами гиалуроновой кислоты.', 'link_to_image'),
('Celimax Noni Ampoule', 2, 2, 1490.00, 30, 'Питательная сыворотка с экстрактом нони.', 'link_to_image'),
('Isntree Hyaluronic Acid Toner', 3, 1, 890.00, 40, 'Тонер с гиалуроновой кислотой для интенсивного увлажнения.', 'link_to_image'),
('Round Lab Birch Juice Sunscreen', 6, 5, 1590.00, 25, 'Лёгкий солнцезащитный крем с экстрактом берёзы.', 'link_to_image');
