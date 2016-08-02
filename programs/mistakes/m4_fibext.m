clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program shows the Fibonacci sequence         %
% converging to the golden ratio.                   %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N = 100; 

% % % Optional - pre-allocation % % % 
F = zeros(1,N); R = zeros(N-1,1); err = zeros(N-1,1);
% % % End Optional % % %

%Calculates Fibonacci vector
F(1) = 1; F(2) = 1; 
for j = 3:N 
    F(j) = F(j-1) + F(j-2); 
end

Rtrue = 0.5*(1+sqrt(5));
for j = 1:N-1 
    R(j) = F(j+1)/F(j); 
    err(j) = abs(Rtrue - R(j)); 
end

% % % Optional - header line % % % 
fprintf('%9s %9s\r\n','Ratio','Error');
% % % End Optional % % %

disp([R err]);

%Plots
figure(1) 
plot(1:N,R,'-k') 
hold on; 
plot(1:N,Rtrue*ones(1,length(R)),'--k') 
hold off; 
xlabel('N'); ylabel('Ratio'); title('Fibonacci convergence to \phi'); legend('Ratio','True value of \phi');

figure(2) 
plot(1:N,err,'-k') 
xlabel('N'); ylabel('Error'); title('Fibonacci convergence to \phi - showing absolute error');