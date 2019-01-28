SELECT a.id, 
       b.age, 
       a.coins_needed, 
       a.power 
FROM   wands a 
       JOIN wands_property b 
         ON a.code = b.code 
WHERE  b.is_evil = 0 
       AND a.coins_needed = (SELECT Min(a1.coins_needed) 
                             FROM   wands a1 
                                    JOIN wands_property b1 
                                      ON a1.code = b1.code 
                             WHERE  b.age = b1.age 
                                    AND a.power = a1.power) 
ORDER  BY a.power DESC, 
          b.age DESC; 