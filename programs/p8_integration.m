% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program calculates the integral of           %          
% function across an interval using trapz and       %
% compares with the exact answer.                   %                                    
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N = 100; %Number of points to use
a = 0; b = 1; %End points of the interval

x = linspace(a,b,N); %Set up grid in x-direction

y = x.^2; exa = 8/3; %These will change depending on what you're integrating

It = trapz(x,y); %Integrate between a and b using trapz

err = abs(I-exa); %Caclulate the absolute error between the exact and approx soln

%Display results
disp(['Integral of y between ' num2str(a) ' and ' num2str(b) ' is:']);
disp([I exa err]);