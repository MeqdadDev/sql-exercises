SELECT max(amount) FROM Orders WHERE amount NOT IN (SELECT MAX(amount) FROM orders);
