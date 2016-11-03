 % % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program solves an ode defined by             %
%               y'=func(t,y)                        %
% between the points [a,b] with initial condition   %
% y(0) = y0.                                        %
%                                                   %
% It solves using ode23 and ode45 and compares the  %
% results.                                          %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

function p9_odesext

%Initialise solution parameters
a = 0; b = 4; %Interval end points
x0 = 2; x1 = 8; %Initial conditions

[t23,x23] = ode23(@func,[a b],[x0,x1]); %Solve using ode23 %Solve using 2nd and 3rd order RK
[t45,x45] = ode45(@func,[a b],[x0,x1]); %Solve using ode23 %Solve using 4th and 5th order RK

%Plots
plot(t23,x23(:,1),'b'); hold on;
plot(t45,x45(:,1),'k'); hold off;
xlabel('t'); ylabel('y(t)'); xlim([min(t45) max(t45)]);
legend('ode23','ode45');

end

function f = func(t,x)
    f = zeros(2,1); % since output must be a column vector
    f(1) = x(2); 
    f(2) = -t*x(1)-exp(t)*x(2)+3*sin(2*t);
end