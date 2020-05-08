% Parabolic Motion 

v0= 10 ; h= 0.01;
x1=0;
y1=0;
a=deg2rad(60);
g=9.8;  
deltaT=2*v0*sin(a)/g;  

for t=0:h:deltaT+h
    x1=x1+h*v0*cos(a);   
    y1=y1+h*(v0*sin(a)-g*t);
    plot(x1,y1)
    hold all
    getframe;    
end