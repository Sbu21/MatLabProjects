subplot(3,1,1)
x=linspace(1,3);
y1=x.^5/10;
plot(x,y1)
title('fig 1')
legend('x^{5}/10')

subplot(3,1,2)
y2=x.*sin(x);
plot(x, y2)
title('fig 2')
legend('x*sin(x)')

subplot(3,1,3)
y3=cos(x);
plot(x,y3)
title('fig 3')
legend('cos(x)')