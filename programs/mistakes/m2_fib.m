clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program prints the Fibonacci sequence for N  %
% terms. N is defined on line 8.                    %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N = 50;

% % % Optional % % % 
F = zeros(1,N); %pre-allocate the size of the vector F for speed.
% % % End Optional % % %

F(1) = 1; F(2) = 1;
for j = 1:N 
    F(j) = F(j-1) + F(j-2); 
end

% % % Optional % % % 
%display header. num2str used in this way changes with the value of N.
disp(['The first ' num2str(N) ' terms in the Fibonacci sequence are:']);
% % % End Optional % % %

disp(F')