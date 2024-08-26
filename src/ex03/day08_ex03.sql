-- первая сессия
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- вторая сессия
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
COMMIT;

-- первая сессия
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;

-- первая сессия
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- вторая сессия
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';