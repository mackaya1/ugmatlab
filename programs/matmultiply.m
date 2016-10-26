%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This code manually computes the product of %
% two N by N matrices A and B                %
%                                            %
%                           Alex Mackay 2016 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function multiply(N)

A=randi(10,N); % Create a random N by N 
B=randi(10,N);

C1=zeros(N,N);  %Initialise The N by N matrix m

for i=1:N
    for j=1:N
        for k=1:N
            C1(i,j)=C1(i,j)+A(i,k)*B(k,j); %
        end
    end
end

C2=A*B; %Mutliply using '*' 

C2-C1   %Display Difference between maunual computation and '*' 


end