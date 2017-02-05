format long e;
A = [1 1;
     1 1+10^-6;
     1 1+10^-6];
b1 = [1;2.22474;-0.22474];
b2 = [-2;1;1];

[U,S,V] = svd(A);

alpha = U\b1;
beta = U\b2;

b1_verify = U(:,1)*alpha(1,1) + U(:,2)*alpha(2,1) + U(:,3)*alpha(3,1);
b2_verify = U(:,1)*beta(1,1) + U(:,2)*beta(2,1) + U(:,3)*beta(3,1);


Sinv = [1/S(1,1) 0 0;
        0 1/S(2,2) 0];

Apseud = V*Sinv*U';

x1 = Apseud*b1
alphasigma = [alpha(1,1)/S(1,1) ; alpha(2,1)/S(2,2)];
x1_verify = V*alphasigma
norm_x1 = norm(x1);
norm_b1 = norm(b1);
ratio_x1_b1 = norm_x1/norm_b1;

x2 = Apseud*b2;
betasigma = [beta(1,1)/S(1,1) ; beta(2,1)/S(2,2)];
x2_verify = V*betasigma;
norm_x2 = norm(x2);
norm_b2 = norm(b2);
ratio_x2_b2 = norm_x2/norm_b2;

norm_x1_x2 = norm(x1-x2);
norm_b1_b2 = norm(b1-b2);
sd = norm(b1) - norm(b2);
ratio = norm_x1_x2/norm_b1_b2;

norm(alpha)-norm(beta);