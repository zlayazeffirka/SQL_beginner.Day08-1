-- первая сессия
BEGIN;
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- вторая сессия
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- первая сесия
COMMIT;

-- вторая сессия
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';