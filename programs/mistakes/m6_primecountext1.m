clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program uses the external function primefn   %
% and prints prime numbers below a user defined     %
% Nmax. Nmax is defined on line 9.                  %          
%                                                   %
% NB: This requires 'primefn' to be on the path.    %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

Nmax = 100;

N = 1:Nmax; 

% % % Optional - pre-allocation % % % 
pn = zeros(length(N),1);
% % % End Optional % % %

for j = 1:length(N)
    pn(j) = primefn(N);
end

% % % Optional - header line % % % 
fprintf('%6s %10s\r\n','N','$prime');
% % % End Optional % % %
disp([(1:length(N))' pn]);