# MySQL Transaction - AUTOCOMMIT

## What is AUTOCOMMIT?

`AUTOCOMMIT` is a MySQL feature that automatically saves (commits) every SQL statement after execution.

By default:

```sql
SELECT @@autocommit;
```

Output:

```
1  --> AUTOCOMMIT ON
```

---

## AUTOCOMMIT = ON (Default)

Every query is automatically committed.

Example:

```sql
UPDATE Account
SET Balance = Balance + 1000
WHERE AccountID = 101;
```

No need to write:

```sql
COMMIT;
```

`ROLLBACK` cannot undo the change because it is already saved permanently.

---

## AUTOCOMMIT = OFF

Disable automatic commit:

```sql
SET AUTOCOMMIT = 0;
```

Now changes are **temporary** until you execute:

```sql
COMMIT;
```

or

```sql
ROLLBACK;
```

- `COMMIT` → Save changes permanently.
- `ROLLBACK` → Undo uncommitted changes.

---

## Important Commands

```sql
SELECT @@autocommit;
SET AUTOCOMMIT = 0;
SET AUTOCOMMIT = 1;
COMMIT;
ROLLBACK;
```

---

## Key Points

- Default AUTOCOMMIT value is **ON (1)**.
- `AUTOCOMMIT = ON` → Every statement is automatically committed.
- `AUTOCOMMIT = OFF` → Manual `COMMIT` or `ROLLBACK` is required.
- `ROLLBACK` only works for **uncommitted** changes.