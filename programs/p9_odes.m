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

function p9_odes

%Initialise solution parameters
a = 0; b = 2*pi; %Interval end points
y0 = 2; %Initial condition

[t23,y23] = ode23(@func,[a b],y0); %Solve using 2nd and 3rd order RK
[t45,y45] = ode45(@func,[a b],y0); %Solve using 4th and 5th order RK

%Plots
plot(t23,y23,'b'); hold on;
plot(t45,y45,'k'); hold off;
title('Solution of dy/dt = func(t,y)');
xlabel('t'); ylabel('y(t)'); xlim([min(t45) max(t45)]);
legend('ode23','ode45');

%%% Error when func(t,y) = cos(t), a = 0, b = 2*pi and y0 = 2 %%%
ex23 = 2 + sin(t23); %Exact solution
err23 = abs(ex23 - y23); %Error
fprintf('%9s %10s %10s\r\n','exact','ode23','error');
disp([ex23 y23 err23]);
    
ex45 = 2 + sin(t45); %Exact solution
err45 = abs(ex45 - y45); %Error
fprintf('%9s %10s %10s\r\n','exact','ode45','error');
disp([ex45 y45 err45]);

disp('Maximum errors:')
fprintf('%9s %10s\r\n','ode23','ode45');
disp([max(err23) max(err45)]);
%%% End error calculation %%%

end

function f = func(t,y) %#ok<INUSD> <-suppresses error
    f = cos(t);
end