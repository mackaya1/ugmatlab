clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program loops through the numbers 1 to N and %
% displays multiples of 3 to the command line. N is %
% defined on line 9.                                %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N = 15; %specify this as the numbers you want to loop through.

% % % Optional % % % 
%display header. num2str used in this way changes with the value of N.
disp(['The multiples of 3 between 1 and ' num2str(N) ' are:']); 
% % % End Optional % % %

for j = 1:N %loops through j from 1 to N
    if mod(j,3) == 0 %checks if the remainder when j is divided by 3 = 0
        disp(j) %displays j if condition is met
    end
end

