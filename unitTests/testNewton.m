function testNewton()
A=Newton(@(x)x^2+1,1,0.000001,100,0.00001,6);   %when f(x) does not have a solution
assert(size(A,1)==102);

A=Newton(@(x)x^2,1,0.000001,100,0.00001,6);     %when approaching a solution from the left
assert(abs(A(size(A,1),2))<=0.001);
assert(abs(A(size(A,1),3))<=0.000001);

A=Newton(@(x)x^2,-1,0.000001,100,0.00001,6);    %when approaching a solution from the right    
assert(abs(A(size(A,1),2))<=0.001);
assert(abs(A(size(A,1),3))<=0.000001);

A=Newton(@(x)x^2,0,0.000001,100,0.00001,6);     %when the starting point is exactly a solution
assert(size(A,1)==1);
assert(abs(A(size(A,1),2))==0);
assert(abs(A(size(A,1),3))==0);

disp('Newton OK');

end
