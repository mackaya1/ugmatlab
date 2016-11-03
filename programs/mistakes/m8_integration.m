clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program calculates the integral of           %          
% function across an interval using trapz and       %
% compares with the exact answer.                   %                                    
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N = 100; 
a = 0; b = 1; 

x = linspace(a,b,N);

y = x.^2; exa = 1/3; 

I = trapz(y,x); 

err = abs(I-exa);

%Display results
fprintf('%10s %9s %9s\r\n','approx','exact','error');
disp([I exa err]);