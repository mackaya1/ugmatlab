clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program loops through the numbers 1 to N and %
% displays multiples of 3 to the command line. N is %
% defined on line 9.                                %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N = 100;

% % % Optional % % % 
%display header. num2str used in this way changes with the value of N.
disp(['The multiples of 3 between 1 and ' num2str(N) ' are:']); 
% % % End Optional % % %

for j = 1:N 
    if mod(j,3) = 0 
        disp(j)
    end
end

