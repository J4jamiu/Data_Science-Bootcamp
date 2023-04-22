#DROP VS TRUNCATE VS DELETE
#The functionality is similar

#Drop once used the table is gone, you wont be able to ROLLBACK
#SYNTAX
#ALTER TABLE table_name     
#DROP COLUMN column_name; 

#TRUNCATE: It remove all records from the table but STRUCTURES WILL REMIAN
#Intact, when used AUTO INCREMENT IS RESET

#DELETE  remove data row by row
#Auto increment is not reset
