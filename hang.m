
function hang(x1,y1,x2,y2,L,val1,val2,k)

x=(x2-x1)
s=sqrt(L*L-(y2-y2)*(y2-y1))
%val1=x/(2*sqrt(6*(s-1)))
%val2=x/(2*sqrt(2*(s-1)))

fun=@(a)(2*a*sinh(x/(2*a))-s);
while true
if L<(sqrt(x*x+(y2-y1)*(y2-y1)))
disp('Length is shorter than the distance between the end points');
L=input('Enter new Length of chain:\n');
else
break;
end
end

a=bisection(fun,val1,val2,k)
xmin=(x1+x2)/2+a*log((L-y2+y1)/(L+y2-y2))/2
ymin=y1 - a*(  cosh((x-xmin)/a)- 1)
for x=x1:0.01:x2;
y=ymin+a*(cosh((x-xmin)/a)-1);
plot(x,y,'*')
hold on
end
hold off
end
