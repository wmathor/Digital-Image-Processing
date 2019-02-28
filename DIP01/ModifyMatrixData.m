clear;clc
A = [1 2 3; 4 5 6; 7 8 9];
b = A(find(A > 4))  % Create Array where data in x > 4
A(2,2) = 10         % Row 2, Column 2 change to 10
A(3,:) = 20         % Row 3 change to 20
A = ones(5)         % Create a 5 by 5 all 1 matrix
A(2 : 4, 2 : 4) = 0 % The elements in row 2,3,4 and 2,3,4 are changed to 0