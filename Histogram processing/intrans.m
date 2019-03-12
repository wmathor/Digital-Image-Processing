function g = intrans( f, method, varargin )
% G = INTRANS(F, 'neg') computes the negative of input image F

% G = INTRANS(F, 'log', C, CLASS) computes C*log(1+F) and
% mulutiplies the result by (positive) constant C. If the last two 
% pararmeters are omitted, C defaults to 1. Because the log is used
% frequently to display Fourier spectra, parameter CLASS offers
% the option to specify the class of the output as 'uint8' or 
% 'uint16'. If parameter CLASS is omitted, the output is of the
% same class as the input.

%G = INTRANS(F, 'gamma', GAM) performs a gamma transformation on
% the input image using parameter GAM (a required input).

% G = INTRANS(F, 'stretch', M, E) computes a contrast-stretching
% ransformation using the expression 1./(1 + (M./F).^E).
error(nargchk(2, 4, nargin))

if strcmp(method, 'log')
    g = logTransform(f, varargin{:});
    return;
end

if isfloat(f) && (max(f(:) > 1 || min(f(:) < 0)))
    f = mat2gray(f);
end
[f, revertclass] = tofloat(f);

switch method
    case 'neg'
        g = imcomplement(f);
    case 'gamma'
        g = gammaTransform(f, varargin{:});
    case 'stretch'
        g = stretchTransform(f, varargin{:});
    case 'specified'
        g = spcfiedTransform(f, varargin{:});
    otherwise
        error('Unknown enhancement method')
end

g = revertclass(g);
end