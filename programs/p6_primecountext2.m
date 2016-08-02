clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program uses the external function primefn   %
% and compares prime counting formulae Li and       %
% N/log(N) to the true value pi(N). Works for prime %
% numbers below a user defined Nmax. Nmax is        %
% defined on line 13.                               %          
%                                                   %
% NB: This requires 'primefn' to be on the path.    %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

Nmax = 100;

N = 1:Nmax; %define N vector to loop through

k = 1; %initialise vector loop index - not doing this will give an error

for j = 1:length(N)
    if isprime(N(j)) ~= 0 %use Matlab in built function to check if N is prime
        pn(k) = primefn(N(j)); %call primefn function - stores number of primes less than N(j)
        nplot(k) = N(j); %stores primes so that repetitions aren't included in the plot
        k = k + 1; %increment vector index
    end
end

logsimple = nplot./log(nplot); %calculates N/log(N) for each N
Li = logint(nplot); %calculates int_2^N 1/log(t) dt for each N

plot(nplot,pn,'k.') %plots number of primes less than N
hold on;
plot(nplot,logsimple,'-k',nplot,Li,'--k') %plots two on same figure
hold off;
title('Comparison between prime counting formulae and \pi(N)');
xlabel('N'); ylabel('Number of primes less than N');
legend('\pi(N)','N/log(N)','Li(N)');