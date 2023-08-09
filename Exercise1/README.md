# SQL Exercises
Exercise 1

## 2nd Highest Amount of Orders

Select the second highest amount of orders.

### Database:

<p align="center">
<img src="../assets/orders-db.png">
</p>

### Solutions

#### Solution 1

Exclude highest number by applying `max`, then apply `max` again on the excluded set.

```sql
SELECT max(amount) FROM Orders WHERE amount NOT IN (SELECT MAX(amount) FROM orders);
```

#### Solution 2

Using less than operator...

```sql
SELECT MAX(amount) FROM orders WHERE amount < (SELECT MAX(amount) FROM orders);
```
