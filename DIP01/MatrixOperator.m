A = [1 2 3; 4 5 6; 7 8 9];
ans = diag(A) % Returns the diagonal elements of A as column vectors
diag(ans)     % Create the matrix with the vector v as the diagonal element
flipud(A)     % Matrix flip up and down, can't change A
fliplr(A)     % Matrix flip left and right, can't change A
rot90(A)      % Matrix flips 90 degrees counterclockwise, can't change A
tril(A)       % Extract the lower triangular matrix of A
triu(A)       % Extract the upper triangular matrix of A