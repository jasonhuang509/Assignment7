%This function takes the following inputs: f, a single-argument function;
%x0, the starting point of Newton method; delta, the threshold of accepting
%a result of Newton method; maxiter, the maximum number of iterations
%before the method is terminated; d, a parameter used for approximating
%f'(x); and p, significant digits of the shown result. It returns in each
%row results of each iteration.

function SoluMatrix = Newton(f,x0,delta,maxiter,d,p)
x(1)=x0;
y(1)=f(x(1));
i=1;
SoluMatrix(1,:)=[0,x(1),y(1)];
while abs(y(i))>delta && i<maxiter+2
    i=i+1;
    x(i)=x(i-1)-f(x(i-1))*d/(f(x(i-1)+d)-f(x(i-1)));
    y(i)=f(x(i));
    SoluMatrix(i,:) = [i-1,x(i),y(i)];
end

if p>=1.5
    ShowMatrix=vpa(SoluMatrix,p);
end
fprintf('iter.\t x\t\t\t f(x)\n');
disp(ShowMatrix);

end
