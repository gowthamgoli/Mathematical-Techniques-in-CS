format shortG
%% 1. Vector x representing diet
disp('1. Vector x representing diet')
x = [3;2;30;1;6;5]
% The dimension of x is 6 and each component refers to the quanity of food
% consumed representing 3 pints of milk, 2 cups of coffee,  30 cookies,
% 1 bowl of muesli, 6 ounces of broccoli, 5 slices of pizza respectively

%% 2. Vector p representing nutritional properties of 1 slice of pizza
disp('2. Vector p representing nutritional properties of 1 slice of pizza')
p = [34;45;7;721;4]
% The dimension of x is 5 and each component refers to the value of
% nutrition i.e. 34 units of X, 45 units of Y,  y units of fiber, 721
% calories, 4 untis of fat respectively in 1 slice of pizza

%% 3. Amount of fiber in daily diet
y = [7;0;12;210;122;7];
z = [3;2;30;1;6;5];
% y represents the amount of fiber per unit of that food in milk, coffee,
% cookies, muesli, broccoli, pizza respectively
% z represents the quanitity of food consumed every day in the same order
% as the of y
% Therefore multiplying amount of fiber per unit of food with quantiy of
% food consumed every day will result in the amount of fiber in daily diet
disp('3. Amount of fiber in daily diet')
fib = transpose(y)*z
% fib = 1358


%% 4. Is the amount of fat in daily diet less than 290
q = [2;0;8;1;1;4];
% q represents the amount of fat per unit of that food in milk, coffee,
% cookies, muesli, broccoli, pizza respectively
% Therefore multiplying amount of fat per unit of food with quantiy of
% food consumed every day will result in the amount of fat in daily diet
disp('4. Is the amount of fat in daily diet less than 290? YES')
fat = transpose(q)*z
% fat = 273 < 290

%% 5. Amount of ith nutrient
A = [55 0 2 15 25 34;
     12 0 14 32 40 45;
     7 0 12 210 122 7;
     103 0 300 60 54 721;
     2 0 8 1 1 4];
x = [3;2;30;1;6;5];
% Row i of A represents the amount of nutrient i per unit of milk, coffe, 
% cookies, muesli, broccoli, pizza respectively
% x represesns the amount of food consumed every day in the same order
% Therefore when Row i of A is multiplied by x we get the total amount of 
% ith nutrient consumed every day
disp('5. Amount of ith nutrient')
Ax = A*x
%Ax = [560;953;1358;13298;273]

%% 6. 10 cups of coffee instead of 2
x = [3;10;30;1;6;5];
% The second component which represesnts the amount of coffee consumed is
% changed from 2 to 10 in x. However, A remains to be the same
% Therefore similar to (5), Ax will give the total amount of ith nutrient
% consumed every day
% There will be no change in Ax because the nutritional value coffee
% contributes to each of the given nutrient is 0 which can be seen from the
% second column of A
disp('6. Amount of ith nutrient with 10 cups of coffee instead of 2')
Ax = A*x
% Ax = [560;953;1358;13298;273]

%% 7. Does the daily diet satisfy given constraints
% From (5) and (6), the daily diet consists of 560 units of X, 953 units of
% Y, 1358 units of fiber, 13298 calories and 273 units of fat. Therefore
% the present daily diet doesn't satisy the given constraints.
disp('7. Does the daily diet satisfy given constraints? NO')

%% 8. Diet that satisfies given constraints
% From (7) we can observe that conditions 3,4,5 are violated. The
% constraint 4 (calories), 5 (fat) are highly violated. Observe that pizza,
% cookies are the highest contributors to amount of calories and fat 
% in our daily diet. Therefore try to decrease pizza and cookie consumption
% so that both these contraints are satisfied. Decreasing pizza to 2 slices
% and cookies to 8 significantly reduces both calories and fat but
% contrains on X and fiber are violated. Keep increasing milk, muesli, and
% broccoli by 1 unit until all the new violated constraints are satisfied.
disp('8. Diet that satisfies given constraints')
x = [4;2;8;3;7;2]
Ax = A*x
% Ax = [524; 626; 1622; 4812; 90]
% Therefore with the daiily diet of 4 pints of milk, 2 cups of coffee, 8
% cookies, 3 bowls of muesli, 7 ounces of broccoli and 2 slices of pizza
% the given constrains can be satisfied


