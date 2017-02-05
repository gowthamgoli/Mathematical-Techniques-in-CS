format short e;
p = 0.75;
n = 12;
z = zeros(1,n);
x = zeros(1,n);
for i=1:n
    z(i) = rand;
    if (z(i) <= p)
        x(i) = 1;
    else
        x(i) = 0;
    end
end
z
x