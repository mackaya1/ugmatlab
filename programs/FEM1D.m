function FEM1D

pi= 3.14159265359;  % Define Pi 
N = 25;             % Number of piecewise linear elements 
x = linspace(-1,1,N+1)'; % Create set of discrete points x_0,x_1,...,x_N


U_L = 1;           % BC at x = -1
U_R = 1;           % BC at x = +1
f = pi^2*sin(pi*x);         % The f-vector

A = zeros(N-1,N-1); % Initialise the stiffness and mass matrices
M = zeros(N-1,N+1); % and the g-vector
g = zeros(N-1,1);
h = diff(x);  % Step length

% Global Matrix Contruction 

A(1,1) = 1/h(1); 
M(1,1) = h(1)/6;
M(1,2) = h(1)/3;
g(1) = U_L/h(1);


A(N-1,N-1)= 1/h(N);
M(N-1,N) = h(N)/6;
M(N-1,N+1)= h(N)/3;
g(N-1) = U_R/h(N);

% Element matrices without the prefactor h

Ae = [1 -1; -1 1];
Me = [2 1;1 2]/6;

% Loop through elements 2 to N-1
for k = 2:N-1
    A(k-1:k,k-1:k) = A(k-1:k,k-1:k) + Ae/h(k);
    M(k-1:k,k:k+1) = M(k-1:k,k:k+1) + h(k)*Me;
end

b=(-M*f+g);

% Solve the system of equations
U = [U_L;A\(-M*f+g);U_R];  % Solves the system A*U = -M*f + g 
                           % with boundary conditions U(-1) = U_L, 
                           %                          U(1) = U_R

% Analytic solution 
t=linspace(-1,1,10000);   % High resolution 
u_exact = 1-sin(pi*t);

% Plot the solution 
plot(x,U,'ro-');  % Finite Elment Solution 
xlabel('x')
ylabel('y')
hold on          % Plot two functions in the same figure
plot(t,u_exact,'b-')   % Analytic Solution
legend('FEM Solution: u^h(x)','Analytical Solution: u(x)')

end
    
    
    
