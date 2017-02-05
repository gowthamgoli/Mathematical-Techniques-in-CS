format short e
A= [sqrt(5.2-4) 100/240   exp(0.13);
    sqrt(6.0-4) 100/162.3 exp(0.83);
    sqrt(5.9-4) 100/130.8 exp(1.0);
    sqrt(5.6-4) 100/150.1 exp(0.24);
    sqrt(6.2-4) 100/95.9  exp(0.31);
    sqrt(5.7-4) 100/141.2 exp(0.47)];

cond2A = cond(A);

b = [9;8;7;10;12;9];
norm_b = norm(b)

[U,S,V] = svd(A);

Sinv = [1/S(1,1) 0 0 0 0 0;
        0 1/S(2,2) 0 0 0 0;
        0 0 1/S(3,3) 0 0 0];
    
Apseud = V*Sinv*U';
x = Apseud*b
Ax = A*x
r = Ax-b
norm_r = norm(r)
norm_r_b = norm(r)/norm(b);

mean_A = mean(A);
diff_1 = norm(A(1,:)-mean_A);
diff_2 = norm(A(2,:)-mean_A);
diff_3 = norm(A(3,:)-mean_A);
diff_4 = norm(A(4,:)-mean_A);
diff_5 = norm(A(5,:)-mean_A);
diff_6 = norm(A(6,:)-mean_A);
