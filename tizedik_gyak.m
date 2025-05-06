% % Optimalizálás 8. feladat
% figure;
% %axis equal;
% n=5;
% A=[];
% for i=1:n
%     axis([-5,5,-5,5]);
%     a=ginput(1);
%     plot(a(1),a(2),'b*')
%     hold on
%     A = [A;a];
% end
% 
% F = @(x) max(vecnorm(A-x,2,2))
% [xopt,fopt]=fminunc(F,mean(A))
% plot(xopt(1),xopt(2),'ro')
% alfa=linspace(0,2*pi);
% x=fopt*cos(alfa)+xopt(1)
% y=fopt*sin(alfa)+xopt(2)
% plot(x,y)


%Lineáris programozás

%1.feladat

% x1:tálalószekrény : 2 egység fa, 1 egység lakk, 1 egység üveg szükséges
% x2:komód : 1 egység fa, 1 egység lakk, 0 egység üveg szükséges
% 100 egység fa, 80 egység lakk, 40 egység üveg áll rendelkezésre
% x1: 30 ezer huf, x2: 20 ezer huf 
% 2x1 + x2 <= 100 && x1 + x2 <= 80 && x1 <= 40 && x1, x2, >= 0 && 30x1 + 20x2 == max

% c=[-30,-20];
% A=[2 1; 1 1; 1 0];
% b=[100;80;40];
% [xopt,fopt,~,~,lambda]=linprog(c,A,b,[],[],[0,0])
% b-A*xopt

% c1=@(x,y) 2*x+y-100;
% c2=@(x,y) x+y-80;
% c3=@(x,y) x-40;
% figure; 
% fimplicit(c1,[0,100,0,100],'b')
% hold on; 
% fimplicit(c2,[0,100,0,100],'r')
% fimplicit(c3,[0,100,0,100],'g')
% cfv=@(x,y) 30*x+20*y-1800;
% fimplicit(cfv,[0,100,0,100],'k--')

% A=[-2 1; 1 -2];
% b=[8; 12];
% c=[-2; -1];
% [x,fval]=linprog(c,A,b,[],[],[0;0],[inf,inf])
% 
% c1=@(x,y) -2*x+y-100;
% c2=@(x,y) x-2*y-12;
% %c3=@(x,y) x-40;
% figure; 
% fimplicit(c1,[0,100,0,100],'b')
% hold on; 
% fimplicit(c2,[0,100,0,100],'r')
% %fimplicit(c3,[0,100,0,100],'g')
% cfv=@(x,y) 2*x+1*y-6;
% fimplicit(cfv,[0,100,0,100],'k--')


% 7.feladat

%feltételek: 
%   x1+x2 <= 200
%   x3+x4 <= 310
%   x5+x6 <= 420
%   x1+x3+x5 <= 460
%   x2+x4+x6 <= 560
%   xi >= 0

% A=[1 1 0 0 0 0;0 0 1 1 0 0;0 0 0 0 1 1;1 0 1 0 1 0;0 1 0 1 0 1];
% b=[200;310;420;460;560];
% c=50*ones(1,6)-[3 3.5 2 2.5 6 4]-[26 21 26 21 26 21]-[11 11 10 10 9 9];
% c=-c;
% [xopt,fopt,~,~,lambda] = linprog(c,A,b,[],[],zeros(1,6))


% 6. feladat

% x2 : kanapé : 3 m^2 hely szükséges
% x1 : fotel  : 1 m^2 hely szükséges

%feltételek
%   -x1-x2 <= -10
%   x1+3x2 <= 60
%   x1 -x2 <= 0
%   30x1+90x2 -> max

A=[-1 -1; 1 3; 1 -1];
b=[-10;60;0];
c=[-30 -90];
[xopt,fopt,~,~,lambda] = linprog(c,A,b,[],[],zeros(1,2))
























