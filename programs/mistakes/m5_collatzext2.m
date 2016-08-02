clear; %clears workspace

% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program runs the Collatz algorithm for user  %
% defined N. N is defined on line 8.                %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

N(1) = 11; 

j = 1; 

while N(j) ~= 1 
    if mod(N(j),2) == 0 
        N(j) = N(j)/2; 
    else
        N(j) = 3*N(j) + 1; 
    end
    j = j + 1; 
end

% % % Optional - header line % % % 
fprintf('%6s %4s\r\n','j','N');
% % % End Optional % % %

disp([(1:length(N))' N']) 
disp(['Number of iterations required = ' num2str(length(N))]);
disp(['Largest number reached = ' num2str(max(N))]);

%Plots
figure(1)
plot(N); hold on;
plot(N,'o','markerfacecolor','y'); 
hold off;
ylim([1 max(N)]); 
xlim([0 j]); 
title(['Collatz route for N = ' num2str(N(1))]); xlabel('j'); ylabel('N(j)');