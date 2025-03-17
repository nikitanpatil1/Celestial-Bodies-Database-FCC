# Celestial Bodies Database

*This project consists of building a database of celestial bodies using PostgreSQL.*

## Problem Statement

Create database according to the conditions below:
- Create a database named **universe**.
- Add tables named **galaxy**, **star**.
- Each table should have a primary key.
- Each primary key should automatically increment.
- Each table should have a **name** column.
- Use the **INT** data type for at least two columns that are not a primary or foreign key.
- Use the **NUMERIC** data type at least once.
- Use the **TEXT** data type at least once.
- Use the **BOOLEAN** data type on at least two columns.
- Each "star" should have a foreign key that references one of the rows in **galaxy**.
- Each "planet" should have a foreign key that references one of the rows in **star**.
- Each "moon" should have a foreign key that references one of the rows in **planet**.
- Each table should have at least three rows.
- The **galaxy** and **star** tables should each have at least six rows.
- The **planet** table should have at least 12 rows.
- The **moon** table should have at least 20 rows.
- Each table should have at least three columns.
- The **galaxy**, **star**, **planet**, and **moon** tables should each have at least five columns.
- At least two columns per table should not accept **NULL** values.
- At least one column from each table should be required to be **UNIQUE**.
- All columns named name should be of type **VARCHAR**.
- Each primary key column should follow the naming convention **table_name_id**. For example, the moon table should have a primary key column named **moon_id**.
- Each foreign key column should have the same name as the column it is referencing.



#### Commands used to build a database and complete the conditions are present in *universe.sql* file above.
