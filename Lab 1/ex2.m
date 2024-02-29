x=linspace(1,3);
y1=x.^5/10;
y2=x.*sin(x);
y3=cos(x);

plot(x,y1,"green",x,y2,"blue",x,y3,"magenta")
title('Titlu')
legend('x^{5}/10', 'x*sin(x)', 'cos(x)')