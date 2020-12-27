-- test case -> List the employees in the ascending order of their salaries ?

a = load "/emp.txt" using PigStorage(",") as (id:int, name:chararray, jobs:chararray, emp id of manager:int,date_of_joining:chararray, salary:int, commition:int,deptno:int);
d = order a by $5;
dump d;


-- OUTPUT:
-- (7369,SMITH,CLERK,7902,17-DEC-1980,800,,20)
-- (7900,JAMES,CLERK,7698,3-DEC-1981,950,100,30)
-- (7876,ADAMS,CLERK,7788,12-JAN-1983,1100,300,20)
-- (7521,WARD,SALESMAN,7698,22-FEB-1981,1250,500,30)
-- (7654,MARTIN,SALESMAN,7698,28-SEP-1981,1250,1400,30)
-- (7934,MILLER,CLERK,7782,23-JAN-1982,1300,100,20)
-- (7844,TURNER,SALESMAN,7698,8-SEP-1981,1500,,30)
-- (7499,ALLEN,SALESMAN,7698,20-FEB-1981,1600,300,30)