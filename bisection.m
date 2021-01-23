function [a]=bisection(fun,val1,val2,n)
while true
          if (fun(val1)*fun(val2)<0) %conditoin to perform bisection method
          break; 
         else
               disp('Minimum does not lie in the given limits')
               val1=input('Enter new value for val1:\n');  %taking new limits for the value 'a'
                val2=input('enter new values for val2:\n');
          end 
end
k=1;
while k<=n
xr=(val1+val2)./2;
if abs(fun(xr))<=0.000001
break;
elseif fun(val2)*fun(xr)<0
    val1=xr;
else
    val2=xr;
 end
k=k+1;
end
j=fun(xr);
fprintf(' Function value %0.f,\n',j);
 fprintf(' minimum = %0.f,\n',xr);
fprintf('number of iterations are %0.f.\n',k)
a=xr; 
end

%   disp(k)















