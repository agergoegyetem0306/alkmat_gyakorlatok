% 2.feladat

% x1: natur
% x2: kakaos

%           natur     kakaos
%turo        20         40     | 280
%tejszin     50         20     | 300 
%kakao       0           2     | 12
%           -------------------
%            100        200

%Egyenletek

% 20x1 + 40x2 <= 280
% 50x1 + 20x2 <= 300
% 2x2 <= 12
% x1,x2 >= 0
% 100x1 + 200x2 -> max

%Megoldás

% c = [-100, -200];
% A = [20 40; 50 20; 0 2];
% b = [280; 300; 12];
% [xopt,fopt] = linprog(c,A,b,[],[],[0 0])
% maradte = b-A*xopt;
% [xopt,fopt,~,~,lambda] = linprog(c,A,b,[],[],[0 0])
% lambda.ineqlin


%8.feladat

% c = [-1 0 -2 5];
% A = [1 2 1 0; 4 -1 0 1];
% b = [50; 60];
% Aeq = [0 1 0 1; 0 0 1 1];
% beq = [15; 20];
% [xopt,fopt,~,~,lambda] = linprog(c,A,b,Aeq,beq,[0 0 0 0])
% [b;beq]-[A;Aeq]*xopt
% lambda.ineqlin
% lambda.eqlin

%13.feladat

% c = [30 40]
% A = [-0.2 0; 0 -0.2; -0.1 -0.2;-0.7 -0.6];
% b = [-0.2; -0.4; -1; -4.2];
% [xopt,fopt,~,~,lambda] = linprog(c,A,b,[],[],[0 0])

% Szállítási feladat 

%15. feladat

% 1. lépés : Megnézzük kiegyensúlyozott-e a feladat.
% Kapacitás: 30 + 40 + 50 = 120
% Igény: 20 + 16 + 42 + 42 = 120
% Egyenlőek szóval kiegyensúlyozott

%    B1  B2 B3 B4
%R1  20  10 -  -          30
%R2  -    6  34 -         40
%R3  -    -   8  42       50
%    20  16 42 42







