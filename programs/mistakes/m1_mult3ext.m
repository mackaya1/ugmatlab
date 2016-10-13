clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program loops through the numbers 1 to N and %
% plays the game 'Fizzbuzz'.                        %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N = 100; 

for j = 1:N 
    if mod(j,3) == 0 
        disp(['j = ' num2str(j) ' -> Fizz']) 
    elseif mod(j,5) == 0 
        disp(['j = ' num2str(j) ' -> Buzz']) 
    elseif mod(j,3) == 0 && mod(j,5) == 0
        disp(['j = ' num2str(j) ' -> Fizzbuzz'])
    else
        disp(['j = ' num2str(j)])
    end
end
