%1.feladat

%A=[1 0.99;0.99 0.98]
%b1=[1.99;1.97]
%b2=[1.98;1.98]
%x1=A\b1
%x2=A\b2
%cond(A,inf)

%2.feladat
%format long
%A=ones(100);
%A=-triu(A)+2*eye(100)
%b=(-98:1)'
%b(100)=1        
%x=A\b
%cond(A,inf)

%Grafikak

%x=linspace(0,2*pi);
%plot(x,sin(x))
%ax=gca
%ax.XAxisLocation='origin' 

%1.feladat

% alfa=linspace(0,2*pi);
% figure;
% x=cos(alfa);
% y=sin(alfa);
% plot(x,y)
% ax=gca;
% ax.YAxisLocation='origin';
% ax.XAxisLocation='origin';
% axis equal;
% A=[1 0.7;0.7 0.6];
% B=[1 0.8;0.8 0.7];
% C=[1 0.9;0.9 0.8];
% z=A*[x;y];
% hold on;
% plot(z(1,:),z(2,:))
% g=B*[x;y];
% plot(g(1,:),g(2,:))
% h=C*[x;y]
% plot(h(1,:),h(2,:))

%

% t=[1 1.1 1.1:0.1:2];    
% f=[8 8.9 9 9.8 10 11 11.5 11.5 12.5 13 13.7 14];
% figure;
% plot(t,f,'*')
% p=polyfit(t,f,1);
% hold on;
% refline(p)
% z=linspace(1,2);
% fz=polyval(p,z)
% plot(z,fz)

% t=[2.1 2.2 2.3 2.3 2.5 2.6 2.8 2.9];
% f=[2.5 2 2.5 2.7 3 4 5.4 7];
% figure;
% plot(t,f,'*')
% p=polyfit(t,f,2)
% hold on;
% z=linspace(2,3);
% fz=polyval(p,z)
% plot(z,fz)

%3.feladat

% t=0:2:12;
% f=[3 4 5 5.5 6.5 7 8];
% figure;
% plot(t,f,'*');
% p=polyfit(t,f,1);
% hold on;
% z=linspace(0,12);
% fz=polyval(p,z);
% plot(z,fz);
% phusz=polyval(p,20) 
% pnull=(-p(2)/p(1))
% pmax=50-(p(2)/p(1))

%5.feladat

% A=readtable('salary.xlsx');
% A=table2array(A);
% figure;
% plot(A(:,1),A(:,2),'*')
% xlabel('ev');
% ylabel('fizetes');
% p=polyfit(A(:,1),A(:,2),1);
% z=linspace(min(A(:,1)-0.1),max(A(:,1)+0.1));
% hold on;
% plot(z,polyval(p,z))
% polyval(p,[1.7,2.5,6.5])

%6.feladat

% A=readtable('japan_h_w_man.xlsx');
% A=table2array(A(:,[3,5]))
% figure;
% xlabel('magassag')
% ylabel('testsuly')
% plot(A(:,1),A(:,2),'*')
% p=polyfit(A(:,1),A(:,2),1);
% p2=polyfit(A(:,1),A(:,2),2);
% z=linspace(min(A(:,1)-0.1),max(A(:,1)+0.1));
% hold on;
% plot(z,polyval(p,z))
% plot(z,polyval(p2,z))
% y1=polyval(p,A(:,1));
% hiba1=mse(y1,A(:,2))
% y2=polyval(p2,A(:,1));
% hiba2=mse(y2,A(:,2))






    