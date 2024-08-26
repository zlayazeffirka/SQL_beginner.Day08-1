-- первая сессия
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT SUM(rating) FROM pizzeria;

-- вторая сессия
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
INSERT INTO pizzeria (id, name, rating) VALUES (10, 'Kazan Pizza', 5);
COMMIT;

-- первая сессия
SELECT SUM(rating) FROM pizzeria;
COMMIT;
-- первая сессия
SELECT SUM(rating) FROM pizzeria;

-- вторая сессия
SELECT SUM(rating) FROM pizzeria;
