Here’s a **cheat sheet** for the **`ALTER TABLE`** statement in MySQL, summarizing its syntax and common use cases.

---

### **Basic Syntax**
```sql
ALTER TABLE table_name action;
```

---

### **1. Add Columns**
- **Add a single column**:
  ```sql
  ALTER TABLE table_name 
  ADD column_name data_type;
  ```
- **Add multiple columns**:
  ```sql
  ALTER TABLE table_name 
  ADD (column1 data_type, column2 data_type);
  ```

- **Example**:
  ```sql
  ALTER TABLE employees 
  ADD Age INT;
  ```

---

### **2. Drop Columns**
- **Remove a single column**:
  ```sql
  ALTER TABLE table_name 
  DROP COLUMN column_name;
  ```

- **Example**:
  ```sql
  ALTER TABLE employees 
  DROP COLUMN Age;
  ```

---

### **3. Modify Column Definitions**
- **Change data type**:
  ```sql
  ALTER TABLE table_name 
  MODIFY column_name new_data_type;
  ```

- **Add/remove `NULL` or `NOT NULL` constraint**:
  ```sql
  ALTER TABLE table_name 
  MODIFY column_name new_data_type [NULL | NOT NULL];
  ```

- **Example**:
  ```sql
  ALTER TABLE employees 
  MODIFY Age BIGINT NOT NULL;
  ```

---

### **4. Rename Columns**
- **Change column name and definition**:
  ```sql
  ALTER TABLE table_name 
  CHANGE old_column_name new_column_name new_data_type;
  ```

- **Example**:
  ```sql
  ALTER TABLE employees 
  CHANGE Age EmployeeAge INT;
  ```

---

### **5. Rename the Table**
```sql
ALTER TABLE old_table_name 
RENAME TO new_table_name;
```

- **Example**:
  ```sql
  ALTER TABLE employees 
  RENAME TO staff;
  ```

---

### **6. Add Constraints**
- **Add a primary key**:
  ```sql
  ALTER TABLE table_name 
  ADD PRIMARY KEY (column_name);
  ```

- **Add a unique constraint**:
  ```sql
  ALTER TABLE table_name 
  ADD UNIQUE (column_name);
  ```

- **Add a foreign key**:
  ```sql
  ALTER TABLE table_name 
  ADD CONSTRAINT fk_name 
  FOREIGN KEY (column_name) REFERENCES other_table (other_column);
  ```

- **Example**:
  ```sql
  ALTER TABLE employees 
  ADD FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID);
  ```

---

### **7. Drop Constraints**
- **Drop primary key**:
  ```sql
  ALTER TABLE table_name 
  DROP PRIMARY KEY;
  ```

- **Drop unique constraint**:
  ```sql
  ALTER TABLE table_name 
  DROP INDEX constraint_name;
  ```

- **Drop foreign key**:
  ```sql
  ALTER TABLE table_name 
  DROP FOREIGN KEY fk_name;
  ```

- **Example**:
  ```sql
  ALTER TABLE employees 
  DROP FOREIGN KEY fk_department;
  ```

---

### **8. Add or Drop Indexes**
- **Add an index**:
  ```sql
  ALTER TABLE table_name 
  ADD INDEX index_name (column_name);
  ```

- **Drop an index**:
  ```sql
  ALTER TABLE table_name 
  DROP INDEX index_name;
  ```

- **Example**:
  ```sql
  ALTER TABLE employees 
  ADD INDEX idx_employee_name (EmployeeName);
  ```

---

### **9. Change Table Engine**
- **Modify the storage engine**:
  ```sql
  ALTER TABLE table_name 
  ENGINE = new_engine;
  ```

- **Example**:
  ```sql
  ALTER TABLE employees 
  ENGINE = InnoDB;
  ```

---

### **10. Default Values**
- **Set a default value**:
  ```sql
  ALTER TABLE table_name 
  ALTER column_name SET DEFAULT default_value;
  ```

- **Remove a default value**:
  ```sql
  ALTER TABLE table_name 
  ALTER column_name DROP DEFAULT;
  ```

- **Example**:
  ```sql
  ALTER TABLE employees 
  ALTER Age SET DEFAULT 18;
  ```

---

### **11. Enable/Disable Keys**
- **Disable keys for faster bulk inserts**:
  ```sql
  ALTER TABLE table_name 
  DISABLE KEYS;
  ```

- **Enable keys after bulk inserts**:
  ```sql
  ALTER TABLE table_name 
  ENABLE KEYS;
  ```

- **Example**:
  ```sql
  ALTER TABLE employees 
  DISABLE KEYS;
  ```

---

### **Quick Reference Table**

| **Action**          | **Command**                                    |
|----------------------|-----------------------------------------------|
| Add column          | `ADD column_name data_type;`                  |
| Drop column         | `DROP COLUMN column_name;`                    |
| Modify column       | `MODIFY column_name new_data_type;`           |
| Rename column       | `CHANGE old_column_name new_column_name type;`|
| Rename table        | `RENAME TO new_table_name;`                   |
| Add primary key     | `ADD PRIMARY KEY (column_name);`              |
| Drop primary key    | `DROP PRIMARY KEY;`                           |
| Add foreign key     | `ADD FOREIGN KEY (col) REFERENCES ... ;`      |
| Drop foreign key    | `DROP FOREIGN KEY fk_name;`                   |
| Add unique key      | `ADD UNIQUE (column_name);`                   |
| Drop unique key     | `DROP INDEX constraint_name;`                 |
| Add index           | `ADD INDEX index_name (column_name);`         |
| Drop index          | `DROP INDEX index_name;`                      |
| Change engine       | `ENGINE = new_engine;`                        |

This cheat sheet provides a quick summary of `ALTER TABLE` operations in MySQL. 