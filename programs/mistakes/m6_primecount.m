clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program counts and lists the number of       %
% prime numbers below a user defined N. N is        %
% defined on line 9.                                %  
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N = 10; 

%initial loop counters. Must be initialised or else error.
k = 1; 
ii = 1; 

for i = 1:N 

    for j = 2:floor(sqrt(i))
        if mod(i,j) == 0
            k = 1; 
        end
    end

    if k == 0 
        v(ii) = i; 
        ii = ii + 1; 
    end
    k = 0; 
end

disp(['The primes less than ' num2str(N) ' are: ']);
disp(v)
disp(['There are ' num2str(ii-1) ' primes less than ' num2str(N) '.']);