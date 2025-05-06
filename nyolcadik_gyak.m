%1. fleadat

% a)
f=@(x) 3*x-cos(x);

%Ábra
fplot(f,[-5,5]);
ax=gca;
ax.XAxisLocation='origin';
ax.YAxisLocation='origin';

%Gyökkeresés
[gyok,fval]=fzero(f,0.5);

% b)
f=@(x) x.^3 - 12*x + 4;

%Ábra
fplot(f,[-3,3]);
ax=gca;
ax.XAxisLocation='origin';
ax.YAxisLocation='origin';

%Gyökkeresés
p=[3,0,-12,4];
r=roots(p);

%2.feladat

f=@(x) [sin(x(1) + 2*x(2)) + x(1)*x(2),cos(x(2)-1) - sin(x(1))];

%Gyökkeresés

[gyok,fval]=fsolve(f,[0.5,0.5]);

%4.feladat

n=10;
x=0.7;
eps=0.0000000000001;

%for i=1:n
%    x=(3*x.^3+4)/12;
%    disp(x)
%end

while abs(x-(3*x.^3+4)/12) >=eps
    x=(3*x.^3+4)/12;
    disp(x)
end

%3.feladat

f=@(x) [-4*x(1)+cos(2*x(1)-x(2))-3,-3*x(2)+sin(x(1))-2];
[gyok,fval]=fsolve(f,[-pi,pi;-pi,pi])





