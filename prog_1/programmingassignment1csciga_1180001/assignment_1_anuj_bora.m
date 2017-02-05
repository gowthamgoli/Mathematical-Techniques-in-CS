%% 1. Vector d representing daily diet
% The vector can be given as follows :

d = [3;2;30;0.5;6;5]

% Each component in the vector d represents amount of each food taken daily
% in the diet like 3 pints of milk,  2 cups of coffee, 30 cookies, 
% 0.5 bowl of muesli, 6 ounces of broccoli, and 5 slices of pizza.

%% 2. Vector p representing nutritional properties of 1 slice of pizza
% The vector p can be given as follows :

p = [34;45;7;721;4.5]

% Each component in the vector p represents amount of a specific nutrient.
% 34 is Vitamin X, 45 is Vitamin Y, 7 is fiber, 721 are calories, and 4.5
% are fats

%% 3. Amount of fiber in daily diet
% The vectors y and z can be guven as follows :

y = [7;0;12;210;122;7];

z = [3;2;30;0.5;6;5];

% The components in y represents the amount of fiber per unit of that food.
% The components in z represent the quantity of each food consumed per day.
% So, basically product of transpose(y) and z will give us total amount of
% fibers consumed per day by food. We will store result in f.

f = transpose(y) * z

%% 4. Amount of fat
% Similar to 3); we can obtain amount of fat content in our daily diet by 
% multiplying amount of fat per unit of that food with quantity of that 
% food consumed each day.
% Let x represent the amount of fat per unit of that food. We will reuse
% the vector z from the previous problem which denotes amount of food
% consumed each day.

x = [2.4;0;8.3;1.40;0.9;4.5];

% Result will be stored in f;

f = transpose(x) * z

% So, we can conclude that amount of fat is less than 290 in daily diet.

%% 5. Amount of i'th nutrient
% We can obtain amount of each nutrient in daily diet by constucting a
% matrix A which has amount of nutrients in a food in a row with each
% column denoting different food. We will construct vector x such that it has
% amount of food consumed per day. The multiplication of A and x will give
% value of i'th nutrient in daily diet which will be stored in r;.

A = [55 0 2 15 25 34;
     12 0 14 32 40 45;
     7 0 12 210 122 7;
     103 0 300 60 54 721;
     2.4 0 8.3 1.4 0.9 4.5];
 
 x = [3;2;30;0.5;6;5];
   
 r = A * x
 
 %% 6.  10 cups of coffee every day rather than 2
 % As 10 cups of coffee are consumed instead of 10, there will be change in
 % vector x used in 5. problem. The 2(which denoted amount of coffee) will
 % be replaced by 10.
 % Thus, new x is as follows:
 
 x = [3;2;30;0.5;6;5];
 
 r = A * x
 
 % Thus, taking 10 cups of coffee instead of 2 will have no change in
 % nutrients as coffee corresponded to zero element in A matrix.
 
 
 


