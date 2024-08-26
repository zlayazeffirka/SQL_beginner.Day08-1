-- первая сессия
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- первая сессия
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

-- вторая сессия
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut';
COMMIT;

-- первая сессия
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

-- вторая сессия
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
