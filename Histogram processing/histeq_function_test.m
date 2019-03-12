function [] = histeq_function_test( filename )
% The parameter is filename
f = imread(filename);
g = histeq(f);
subplot(2, 2, 1); imshow(f); title('Original image')
subplot(2, 2, 2); imhist(f); title('original''s histogram')
subplot(2, 2, 3); imshow(g);
subplot(2, 2, 4); imhist(g)
end