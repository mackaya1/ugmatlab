clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program solves the system of equations       %
%          3x + 4y + 7z = 32                        %
%          x + 5y + 2z = 17                         %
%          2x + y + z = 7                           %
%                                                   %
% using mldivide.                                   %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

A = [3 4 7, 1 5 2, 2 1 1]; 
b = [32, 17, 7]; 

x = A\b;

disp('Solution: ')
disp(x)