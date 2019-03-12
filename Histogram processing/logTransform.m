function g = logTransform( f, varargin )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
[f, revertclass] = toflat(f);
if numel(varargin) >= 2
    if strcmp(varargin{2}, 'uint8')
        revertclass = @im2uint8;
    elseif strcmp(varargin{2}, 'uint16')
        revertclass = @im2uint8;
    else
        error('error')
    end
end
if numbel(varargin) < 1
    C = 1;
else
    C = varargin{1};
end
g = C * (log(1 + f));
g = revertclass(g);
end