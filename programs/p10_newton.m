% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program finds the root of a function f(x)    %
% defined in the loop by applying Newton's method   %
%        x_{n+1} = x_n + f(x_n)/f'(x_n)             %
% with initial guess x(1).                          %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

function p10_newton

x(1) = 1.5; %Initial starting guess - Newton's method requires this to be 'close'
maxiter = 25; %Maximum number of iterations - not setting this could result in an infinite loop

%Initialise loop counter and error vector
err(1) = 1; 
n = 1;

while err >= 10e-8 %stop loop when tolerance is reached
    f = sin(x(n))+x(n)*cos(x(n)); %Define f
    df = 2*cos(x(n))-x(n)*sin(x(n)); %Define df
    
    x(n+1) = x(n) - f/df; %Implement Newton's method
    err(n+1) = abs(x(n+1)-x(n)); %Store error between successive terms
    n = n + 1; %Increment loop counter
    
    if n > maxiter, break; end %If we reach the maximum number of iterations, break the loop
end

%Display result
fprintf('%12s %10s \r\n','x_n','error');
disp([x' err']);

%Error convergence plot
plot(1:n,err,'o',1:n,err,'b')
xlabel('n'); ylabel('error');
title('Error convergence in Newton method')

end