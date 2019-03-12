function g = stretchTransform( f, varargin )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
if isempty(varargin)
    m = mean2(f);
    E = 4.0;
elseif length(varargin) == 2
    m = varargin{1};
    E = varargin{2};
else
    error('Incorrect number of inputs for the stretch method.')
end
g = 1 ./ (1 + (m ./ f).^E);
end