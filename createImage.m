function [I] = createImage(M, N, W, type)
%CREATEIMAGE - create a binary square or circle size [M,N] with width W
%   This function will create a square or a circle in the center of the
%   array. The array has M rows and N cols. The side length of the square
%   is W and the diameter of the circle is W. The values of the feature are
%   1's and the background are 0's. 
%
% Syntax:  [I] = createImage(M,N,W, type);
%
% Inputs:
%    M - rows (pixels)
%    N - cols (pixels)
%    W - width (pixels)
%    type - string - 'square' or 'circle'
%
% Outputs:
%    I - binary array with either a square or circle in the middle
%
% Example: 
%    [I] = createImage(512, 512, 128, 'square'); imagesc(I); axis image;
%    or
%    [I] = createImage(512, 512, 128, 'circle'); imagesc(I); axis image;
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none
%
% See also: CREATEIMAGESTACK, IMAGECORRELATION

% Author: Dennis F Gardner
% JILA, Univeristy of Colorado, 440 UCB, Boulder, CO 80309
% email: dennis.gardner@colorado.edu
% Website 1: http://www.github.com/DennisFGardner 
% Website 2: http://www.linkedin.com/in/dennisfgardner
% File Creation: Sept. 15th, 2016

%------------- BEGIN CODE --------------
switch type
    case 'square' % create a square
        I = false(M, N);
        I(M/2-W/2+1:M/2+W/2, N/2-W/2+1:N/2+W/2) = true;
        
    case 'circle' % create a circle
        % grid vectors
        xgv = -N/2:1:N/2-1;
        ygv = -M/2:1:M/2-1;
        
        % full grids
        [X, Y] = meshgrid(xgv, ygv);
        
        % create circle
        I = X.*X + Y.*Y;
        I(I<W/2*W/2) = 1;
        I(I>1) = 0;
        I = logical(I);
        
end
%------------- END OF CODE --------------
end