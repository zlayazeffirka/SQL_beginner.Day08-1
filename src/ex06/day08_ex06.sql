-- первая сессия
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
SELECT SUM(rating) FROM pizzeria;

-- вторая сессия
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
INSERT INTO pizzeria (id, name, rating) VALUES (11, 'Kazan Pizza 2', 4);
COMMIT;

-- первая сессия
SELECT SUM(rating) FROM pizzeria;
COMMIT;
-- первая сессия
SELECT SUM(rating) FROM pizzeria;

-- вторая сессия
SELECT SUM(rating) FROM pizzeria;
