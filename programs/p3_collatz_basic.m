clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program runs the Collatz algorithm for  user %
% defined N. N is defined on line 8.                %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N = 10; %specify the number to run the algorithm for.

% % % Optional - header line % % % 
disp('Collatz route taken:');
% % % End Optional % % %

while N ~= 1 %loop until N = 1
    if mod(N,2) == 0 %check if N is even using remainder when divided by 2
        N = N/2; %if N is even, halve it.
    else
        N = 3*N +1; %if N is not even (i.e. odd) then do 3*N + 1)
    end
    disp(N) %display N
end