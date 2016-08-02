clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program runs the Collatz algorithm for user  %
% defined N. N is defined on line 8.                %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N(1) = 11; %specify the number to run the algorithm for.

j = 1; %loop counter 

while N(j) ~= 1 %loop until N = 1
    if mod(N(j),2) == 0 %check if N is even using remainder when divided by 2
        N(j+1) = N(j)/2; %if N is even, halve it.
    else
        N(j+1) = 3*N(j) +1; %if N is not even (i.e. odd) then do 3*N + 1)
    end
    j = j + 1; %increment j at the end of each loop.
end

% % % Optional - header line % % % 
fprintf('%6s %4s\r\n','j','N');
% % % End Optional % % %

disp([(1:length(N))' N']) %displays route to 1 as a vector
disp(['Number of iterations required = ' num2str(length(N))]); %display number of iterations reqd
disp(['Largest number reached = ' num2str(max(N))]);