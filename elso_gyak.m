x=rand(1,1000000);
y=zeros(1,1000000);
tic;
for i=1:1000000
    y(i)=x(i)+1;
end
toc

tic;
y=x+1;
toc

