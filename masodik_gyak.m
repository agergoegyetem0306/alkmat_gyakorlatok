%x=1;
%for i=1:2000
%    (exp(x)-1)/x
%    x=x/2;
%end

%3.feladat
 
%A=[1:8;20:-2:6;2.^(1:8)]
%flipud(A)
%fliplr(A)

%szorgalmi1
%B=zeros(500);
%B(101:400,101:400)=1;
%imshow(B)

%szorgalmi2

%C=zeros(500);
%C(101:400,101:400)=0.5;
%C(201:300,201:300)=1;
%imshow(C)

%LER
%1feladat

%A=[2 -3 1 1 ; -1 3 4 7];
%b=[0;5]
%x=A\b
%rref([A b])

%2.feladat

%x1+x4=1500
%x1+x2=1200
%x3+x4=1300
%x2+x3=1000

%A=[1 0 0 1;1 1 0 0;0 0 1 1;0 1 1 0]
%b=[1500;1200;1300;1000]
%rref([A b])


%Ritka mátrixok

%A=[-1.1 0 0 2; 0 0 2 0; 0 -1 0 1;0 0 0 3]
%S=sparse(A)
%spy(A)
%nnz(A)

%d=ones(10000,1);
%S=spdiags([d d -4*d d d],[-4000 -1 0 1 4000],10000,10000);
%F=full(S);


%x=rand(10000,1);
%clear b
%tic;b=S*x;toc
%clear b
%tic;b=F*x;toc


A=pascal(10)
x=ones(10,1)
b=A*x
A\b


    




