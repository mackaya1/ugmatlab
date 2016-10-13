clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program loops through the numbers 1 to N and %
% plays the game 'Fizzbuzz'.                        %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N = 15; %specify this as the numbers you want to loop through.

for j = 1:N %loops through j from 1 to N
    if mod(j,3) == 0 && mod(j,5) ~= 0 %checks if the remainder when j is divided by 3 = 0
        disp(['j = ' num2str(j) ' -> Fizz']) %displays 'Fizz' if condition is met
    elseif mod(j,3) ~= 0 && mod(j,5) == 0 %checks if the remainder when j is divided by 5 = 0
        disp(['j = ' num2str(j) ' -> Buzz']) %displays 'Buzz' if condition is met
    elseif mod(j,3) == 0 && mod(j,5) == 0
        disp(['j = ' num2str(j) ' -> Fizzbuzz']) %displays 'Fizzbuzz' if condition is met
    else
        disp(['j = ' num2str(j)])
    end
end

