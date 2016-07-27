function pn = primefn(N)

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program counts and lists the number of       %
% prime numbers below a user defined N. N is a user %
% input.                                            %          
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

%initial loop counters. Must be initialised or else error.
k = 0; %prime check number
ii = 1; %vector loop index

for i = 2:N %loop through 2 to N. 1 is not a prime, so start at 2.

    for j = 2:floor(sqrt(i)) %to check a number is prime, only need to check divisibility up to sqrt(i).
        if mod(i,j) == 0 %if there is a number that divides i, then i is not prime. 
            k = 1; %set loop counter to 1.
        end
    end

    if k == 0 %if we arrive at this point and k hasn't been changed yet, then i is prime.
        v(ii) = i; %store i
        ii = ii + 1; %increment vector index number
    end
    k = 0; %reset prime check number to zero for next value of i
end

pn = ii-1; %store number of primes less than N to output in function