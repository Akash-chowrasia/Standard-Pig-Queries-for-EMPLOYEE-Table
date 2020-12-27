-- Test Case Query -> Generate 10% sample of this dataset. Display and store it ?

a = load "/emp.txt" using PigStorage(",") as (id:int, name:chararray, jobs:chararray, emp id of manager:int,date_of_joining:chararray, salary:int, commition:int,deptno:int);
h = sample a 0.1;
dump h;
store h into "/acet";

-- OUTPUT:
-- (7782,CLARK,MANAGER,7839,9-JUN-1981,2450,,10)