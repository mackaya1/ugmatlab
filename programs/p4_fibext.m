clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program shows the Fibonacci sequence         %
% converging to the golden ratio.                   %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N = 100; %specify this as the number of terms required.

% % % Optional - pre-allocation % % % 
F = zeros(1,N); R = zeros(N-1,1); err = zeros(N-1,1);
% % % End Optional % % %

%Calculates Fibonacci vector
F(1) = 1; F(2) = 1; %first two terms of the Fibonacci sequence are 1
for j = 3:N %loops through j from 3 to N (1 and 2 are already defined)
    F(j) = F(j-1) + F(j-2); %Use Fibonacci recursion relation.
end

Rtrue = 0.5*(1+sqrt(5)); %true value of golden ratio
for j = 1:N-1 %loops through j from 1 to N-1 - using 1 to N would go too far due to F(j+1).
    R(j) = F(j+1)/F(j); %calculates ratio terms
    err(j) = abs(Rtrue - R(j)); %calculates error between ratio and true value
end

% % % Optional - header line % % % 
fprintf('%9s %9s\r\n','Ratio','Error');
% % % End Optional % % %

disp([R err]); %displays ratios next to error in a vector

%Plots
figure(1) %specifies that this should be drawn on figure 1.
plot(1:N-1,R,'-k') %plots our ratio against N. '-k' gives solid black line
hold on; %holds the graph so that we can add more plots to the same figure
plot(1:N-1,Rtrue*ones(1,length(R)),'--k') %plots true solution - note ones to make vectors the same length. '--k' gives dashed line
hold off; %allows graph to be overwritten on next run
xlabel('N'); ylabel('Ratio'); title('Fibonacci convergence to \phi'); legend('Ratio','True value of \phi');

figure(2) %specifies that this should be drawn on figure 2.
plot(1:N-1,err,'-k') %plots our error against N.
xlabel('N'); ylabel('Error'); title('Fibonacci convergence to \phi - showing absolute error');