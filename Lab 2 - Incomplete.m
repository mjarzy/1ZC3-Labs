format rat

v1 = [2; 1; 0; -1]
v2 = [0; 1; 2; 1]
b = [1; 7; -1; -4]

c1=(dot(b,v1)/norm(v1)^2)*v1
c2=(dot(b,v2)/norm(v2)^2)*v2

t = c1 + c2

%Probem 3

i = [1 1 0 0; 0 -3 1 0; 0 0 0 1]

rref(i)

ii = [1 0 1;1 2 3; 0 1 1]

rref(ii)

iii = [1 5; 3 1; 6 0]

rref(iii)

a = 6
b = 12 
c = -9

obama = [1 1 a; 3 0 b; 0 -4 c]

rref(obama)

ok = [1 1 1;0 1 1; 0 0 1]
makes_sense = [8; 9; 4]
X = linsolve(ok,makes_sense)



