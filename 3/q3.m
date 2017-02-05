format long e;
A = [0.625 0.4376;
     0.546 0.3823];
b = [1.0626; 0.9283];

x_tilda = A\b;
x_star = [1;1];

d = x_tilda - x_star;
norm_d = norm(d);

r_star = b - A*x_star;
norm_r_star = norm(r_star);

r_tilda = b - A*x_tilda;
norm_r_tilda = norm(r_tilda);

x_hat = [-27.678;41.958];
r_hat = b - A*x_hat
E = (1/((transpose(x_hat))*x_hat))*(r_hat*transpose(x_hat));
b1 = (A+E)*x_hat;


norm_x_hat_x_star = norm(x_hat - x_star);
norm_x_hat_x_tilda = norm(x_hat - x_tilda);

norm_E = norm(E);
norm_A = norm(A);

x_bar = (A+E)\b

norm_x_bar_x_hat = norm(x_bar - x_hat)

norm_x_hat_x_star = norm(x_hat - x_star)
norm_x_hat_x_tilda = norm(x_hat-x_tilda)
