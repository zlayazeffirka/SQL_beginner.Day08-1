-- первая сессия
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'

-- вторая сессия
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'

-- первая сессия
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- вторая сессия
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- первая сессия
COMMIT;

-- вторая сессия
COMMIT;

-- первая сессия
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'

-- вторая сессия
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'