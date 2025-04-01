%3.feladat

% f=@(x) sin(pi*x).^2 + exp(x);
% fd=@(x) 2 * pi * sin(pi*x).*cos(pi*x)+exp(x);
% f2d=@(x) 2 * pi^2 * cos(pi*x).^2 - 2 * pi.^2 * sin(pi*x).^2 + exp(x);
% figure;
% xx=linspace(0,1);
% plot(xx,f(xx),'LineWidth',2)
% hold on;
% 
% tp=@(x,x0) f(x0) + fd(x0) * (x-x0) + f2d(x0) * (x-x0).^2 / 2;
% 
% x0=0.1;
% d=linspace(x0-0.1,x0+0.1);
% p1=plot(d,tp(d,x0),'LineWidth',3)
% axis([-0.1,1,1,3])
% 
% for x0=0.1:0.05:0.8
%     d=linspace(x0-0.2,x0+0.2)
%     p1.XData=d;
%     p1.YData=tp(d,x0)
%     pause(0.1)
% end

%Spline interpolacio

% x=[-2,-1,0,1,2,3];
% y=[15, 4, 1, 7, 4, 12, 9, 8];
% xx=linspace(-2.1,3.1);
% p=spline(x,y,xx)
% plot(x,y(2:end-1),'*',xx,p)

%4.feladat

% f=@(x) 1./(1+25*x.^2);
% xx=linspace(-1,1);
% figure;
% plot(xx,f(xx))
% hold on;
% 
% x=linspace(-1,1,11);
% p=polyfit(x,f(x),10);
% yy=polyval(p,xx);
% plot(xx,yy)
% 
% zz=spline(x,[0,f(x),0],xx);
% plot(xx,zz)
% legend('f','Lagrange','Spline')

%6.feladat

% xx=linspace(0,12);
% x1=[0 1 2 4 5 7 10 12];
% y1=[1 6 7 8 8 6 5 6 8 1];
% z1=spline(x1,y1,xx)
% plot(xx,z1)
% hold on;
% axis equal
% axis([0 12 0 9])
% 
% x2=[0 3 4 7 10 11 12];
% y2=[0.1 6 5 3 1 3 5 8 0.1];
% z2=spline(x2,y2,xx)
% plot(xx,z2)
% hold on;
% axis equal
% axis([0 12 0 9])
% 
% xx=linspace(5,9);
% x3=[5 7 9];
% y3=[-0.8 4 3 4 0.8];
% z3=spline(x3,y3,xx)
% plot(xx,z3)
% hold on;
% axis equal
% axis([0 12 0 9])
% 
% plot(3,7,'o r')
% axis equal
% axis([0 12 0 9])

%Parameteres gorbek

%7.feladat

% t=linspace(0,2*pi);
% figure;
% hold on;
% axis equal;
% axis([-5,5,-1.5,1.5]);
% for ti=t
% plot(3*cos(ti),sin(ti),'*b')
% pause(0.05)
% end

%8.feladat

% ti=linspace(0,2*pi,10);
% xi=3*cos(ti);
% yi=sin(ti);
% figure;
% plot(xi,yi,'*')
% hold on
% axis equal
% t=linspace(0,2*pi);
% u=spline(ti,xi,t);
% v=spline(ti,yi,t);
% plot(u,v)

%9.feladat

% x=[1,0.809,0.309,-0.309,-0.809,-1,-0.809,-0.309,0.309,0.809,1];
% y=[0, 1.9021, 1.1756, -1.1756, -1.9021, 0, 1.9021,1.1756, -1.1756, -1.9021, 0];
% ti=(0:10)*2*pi/10;
% tt=linspace(0,2*pi);
% u=spline(ti,x,tt);
% v=spline(ti,y,tt);
% figure; 
% axis([-1.2, 1.2, -2.2, 2.2])
% hold on
% plot(x,y,'*')
% for i=1:100
%      plot(u(1:i),v(1:i),'r')
%      pause(0.1)
% end

%4 feladat(nincs dian)

f=@(x) exp(-((x-1).^2)./2);
x=[-3 -2 -1 0 1 2 3];
xx=linspace(-3,3)
y=f(x);
z=spline(x,[0,y,0],xx);
plot(xx,z);
