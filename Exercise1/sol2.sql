SELECT MAX(amount) FROM orders WHERE amount < (SELECT MAX(amount) FROM orders);
