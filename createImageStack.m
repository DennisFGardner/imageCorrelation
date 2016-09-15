function [stackI] = createImageStack(I,L,type,varargin)
%CREATEIMAGESTACK - create 3D array, each slice is I with a circshift
%   This function will create a 3D array. Each slice of the array will
%   contain the original image, I, but it will be shifited by an interger
%   number of pixels. 
%
% Syntax:  [stackI] = createImageStack(I, L, type, parameter1, parameter2)
%
% Inputs:
%    I - original 2D image size [M, N]
%    L - number of slices in the 3D array
%    type - type of motions: sinusoidal, (more coming in the future)
%
% Outputs:
%    stackI - 2D array size [M, N, L], each slice is a shifted I
%
% Example: 
%    Line 1 of example
%    Line 2 of example
%    Line 3 of example
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none
%
% See also: CREATEIMAGE

% Author: Dennis F Gardner
% JILA, Univeristy of Colorado, 440 UCB, Boulder, CO 80309
% email: dennis.gardner@colorado.edu
% Website 1: http://www.github.com/DennisFGardner 
% Website 2: http://www.linkedin.com/in/dennisfgardner
% File Creation: Sept. 15th, 2016

%------------- BEGIN CODE --------------

% Enter your executable matlab commands here


%------------- END OF CODE --------------
end