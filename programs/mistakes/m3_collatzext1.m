clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program runs the Collatz algorithm for user  %
% defined N. N is defined on line 8.                %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N(1) = 11; 

while N(j) ~= 1 
    if mod(N(j),2) == 0 
        N(j+1) = N(j)/2; 
    else
        N(j+1) = 3N(j) +1; 
    end
    j = j + 1; 
end

% % % Optional - header line % % % 
fprintf('%6s %4s\r\n','j','N');
% % % End Optional % % %

disp([(1:length(N))' N']) %displays route to 1 as a vector
disp(['Number of iterations required = ' num2str(length(N))]); %display number of iterations reqd
disp(['Largest number reached = ' num2str(max(N))]);