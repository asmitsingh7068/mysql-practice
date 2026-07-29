# 📘 Day 9.2 - MySQL JOIN Notes

## Topics Covered
- Database & Tables
- Primary Key
- Foreign Key
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- WHERE
- LIKE
- ORDER BY
- GROUP BY
- HAVING
- COUNT()
- AVG()
- MAX()
- MIN()
- ON UPDATE CASCADE
- ON DELETE CASCADE
- Self JOIN

---

## Important Queries

### INNER JOIN
```sql
SELECT CustomerName, CityName
FROM Customer
INNER JOIN City
ON Customer.CityID = City.CityID;
```

### LEFT JOIN
```sql
SELECT CityName, CustomerName
FROM City
LEFT JOIN Customer
ON City.CityID = Customer.CityID;
```

### RIGHT JOIN
```sql
SELECT Customer.*, City.*
FROM City
RIGHT JOIN Customer
ON City.CityID = Customer.CityID;
```

### GROUP BY
```sql
SELECT CityID, COUNT(*)
FROM Customer
GROUP BY CityID;
```

### HAVING
```sql
SELECT CityID, COUNT(*)
FROM Customer
GROUP BY CityID
HAVING COUNT(*) > 1;
```

### ORDER BY
```sql
SELECT * FROM Customer
ORDER BY Age DESC;
```

### LIKE
```sql
'A%'   -- Starts with A
'%A'   -- Ends with A
'%mit%' -- Contains "mit"
```

---

## Foreign Key

### ON UPDATE CASCADE
Parent table ki Primary Key update hone par child table ka Foreign Key bhi automatically update ho jata hai.

### ON DELETE CASCADE
Parent record delete hone par uske related child records bhi automatically delete ho jate hain.

---

## Mistakes to Remember

- Customer Name + Country Name → `CountryName` select karna hai.
- State ke according sorting → `ORDER BY StateName`.
- New City banane ke baad Customer ka `CityID` bhi wahi new CityID hona chahiye.
- Aggregate Functions ke sath `GROUP BY` use karna na bhule.

---

## Revision

✅ INNER JOIN

✅ LEFT JOIN

✅ RIGHT JOIN

✅ GROUP BY

✅ HAVING

✅ ORDER BY

✅ LIKE

✅ Aggregate Functions

✅ Foreign Key

✅ Cascade

# Author
        Asmit Singh --