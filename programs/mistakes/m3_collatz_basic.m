clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program runs the Collatz algorithm for  user %
% defined N. N is defined on line 8.                %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N = 10;

% % % Optional - header line % % % 
disp('Collatz route taken:');
% % % End Optional % % %

while N ~= 1 
    if mod(N,2) == 1 
        N = n/2;
    else
        N = 3*n +1; 
    end
    disp(N)
end