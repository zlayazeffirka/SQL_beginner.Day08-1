-- первая сессия
UPDATE pizzeria SET rating = rating + 1 WHERE id = 1;

-- вторая сессия
UPDATE pizzeria SET rating = rating + 1 WHERE id = 2;

-- первая сессия
UPDATE pizzeria SET rating = rating + 1 WHERE id = 2;

-- вторая сессия
UPDATE pizzeria SET rating = rating + 1 WHERE id = 1;

-- первая сессия
COMMIT;

-- вторая сессия
COMMIT;