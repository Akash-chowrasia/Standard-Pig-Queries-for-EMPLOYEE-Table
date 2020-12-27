-- Test Case Query -> Display unique Jobs from EMP file ?

a = load "/emp.txt" using PigStorage(",") as (id:int, name:chararray, jobs:chararray, emp id of manager:int, date_of_joining:chararray, salary:int, commition:int, deptno:int);
b = foreach a generate $2;
c = distinct b;
dump c;

-- OUTPUT:
-- (CLERK)
-- (ANALYST)
-- (MANAGER)
-- (SALESMAN)
-- (PRESIDENT)
