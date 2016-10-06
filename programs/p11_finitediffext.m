% % % % % % % % % % % % % % % % % % % % % % % % % % %
% This program solves the convection-diffusion      %
% equation,                                         %
%       -eps*u'' + b*u' = 0; u(0) = 1, u(1) = 0     %
%                                                   %
% for user defined inputs eps, b, using a           %
% second-order accurate finite difference method to %
% discretise the derivatives with N uniform grid    %
% points in the domain [0,1].                       %
%                                                   %
% The inputs are:                                   %
%                                                   %
%   eps: coefficient of the diffusion term.         %
%   b: coefficient of the convecive term.           %
%                                                   %
% The function tracks the maximum error when N is   %                 
% changed.                                          %
%                                                   %
% Scott Morgan 2016                                 %
% % % % % % % % % % % % % % % % % % % % % % % % % % %

function p11_finitediffext(eps,b)

N = 10:100; %define N range

maxerr = zeros(1,length(N)); %initialise maxerr array

for i = 1:length(N)
    maxerr(i) = fdsolve(N(i),eps,b);
end

plot(N,maxerr,N,maxerr,'o')
xlabel('N'); ylabel('err_{max}');
title('Plot of maximum error when N is increased');

end

function maxerr = fdsolve(N,eps,b)

h = 1/N; %x-domain grid spacing
x = (0:h:1)'; %define x-nodes

%Warning on diffusion dominated problems
if b*h/eps > 2
    warning('p10_finitediff:MeshPeclet','Your problem is diffusion dominated, results may be incorrect.')
end

% A diagonal matrix with 2eps on the diagonal
D0 = 2*eps*diag(ones(N-1,1));
% A matrix with (bh-eps) along the 1st superdiagonal
D1 = (0.5*b*h-eps)*diag(ones(N-2,1),1); %
% A matrix with -(eps+bh) along the 1st subdiagonal
D2 = -(eps+0.5*b*h)*diag(ones(N-2,1),-1);
% Construct the full matrix
A = D0 + D1 + D2;

% The right hand side of the linear system
f = 0*x(2:N);
f(1) = f(1) + (eps + 0.5*b*h);

%The exact solution for the differential equation
u_exact = (exp(b/eps)-exp((b/eps)*x))/(exp(b/eps)-1);

%Solution subject to boundary conditions
u = [1;A\f;0];

%store maximum error
maxerr = max(abs(u_exact - u));

end
