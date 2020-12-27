-- Test Case Query -> List the employees who joined in the month of DEC-1981 ?

a = load "/emp.txt" using PigStorage(",") as (id:int, name:chararray, jobs:chararray, emp id of manager:int,date_of_joining:chararray, salary:int, commition:int,deptno:int);
t = filter a by date_of_joining matches „.*DEC-1981.*‟;
dump t;