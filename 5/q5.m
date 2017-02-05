b = [1 -2 -10 4 7 -5 100000];
e = [1 1 1 1 1 1 1];
beta_one_norm = median(b)
beta_two_norm = sum(b)/7
beta_inf_norm = (min(b) + max(b))/2

r1 = b-beta_one_norm*e
norm_r1 = norm(r1,1)

r2 = b-beta_two_norm*e
norm_r2 = norm(r2,2)

rinf = b-beta_inf_norm*e
norm_rinf = norm(rinf,inf)