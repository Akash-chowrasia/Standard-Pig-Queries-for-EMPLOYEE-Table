-- Test Case Query -> List employees who earn a commission and names contains the string “OR” ?

a = load "/emp.txt" using PigStorage(",");
t = filter a by $6>1 and $1 matches ".*OR.*";
dump t;

-- OUTPUT:
-- (7902,FORD,ANALYST,7566,3-DEC-1981,3000,200,20)