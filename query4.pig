-- Test Case Query -> List all employee names along with the names of their managers ?

a = load "/emp.txt" using PigStorage(",");
b = load "/emp.txt" using PigStorage(",");
c = join a by $3,b by $0;
d = foreach c generate $1,$9;
dump d;

-- OUTPUT:
-- (SCOTT,JONES)
-- (FORD,JONES)
-- (MARTIN,BLAKE)
-- (JAMES,BLAKE)
-- (ALLEN,BLAKE)
-- (TURNER,BLAKE)
-- (WARD,BLAKE)
-- (AKASH,CLARK)
-- (MILLER,CLARK)
-- (ADAMS,SCOTT)
-- (BLAKE,KING)
-- (CLARK,KING)
-- (JONES,KING)
-- (SMITH,FORD)