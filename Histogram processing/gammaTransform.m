function g = gammaTransform( f, gamma )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
g = imadjust(f, [], [], gamma);
end