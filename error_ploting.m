clc
clear all
k=5;%input('enter the limit for rounding digits: ');
N=6;%input(' enter limit for the power, Ex: 3 or 5... ');
n=1;
format long
while n<= N
x(n)=n; %powers of the exponent
Approximate_exp(n) =round(exp(n),k); % approximate values
Actualvalue_exp(n) =exp(n);   %actual values
Relative_error(n)=(1-Approximate_exp/Actualvalue_exp);
n=n+1;
end
figure(1);
plot(x,Actualvalue_exp,' r', x,Approximate_exp,'g', x, Relative_error,'b');
figure(2);
plot(x,Relative_error)
