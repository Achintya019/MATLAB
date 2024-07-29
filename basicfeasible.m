% write in standard form
A=[2 3 -1 4; 1 2 6 -7]; 
C=[2 3 4 7];
b=[8; -3];

%no of constraints and variables
m=size(A,1); %no of constraints
n=size(A,2); %no of variables

%compute the nCm BFS
if n>=m
nv=nchoosek(n,m); % Total no. of Basic solution
t=nchoosek(1:n,m); % Pairs of basic solution
sol=[]; % Default solution is zero

for i=1:nv
y=zeros(n,1);
x=A(:,t(i,:))\b; %A^-1 *b
if all(x>=0 & x~=inf & x~=-inf)
y(t(i,:))=x;
sol=[sol y];
end
end
else
error('No of variables are less than constraints');
end

% Objective function
Z=C*sol;

% Find the optimal value
[Zmax,Zind]=max(Z);
BFS=sol(:,Zind);

% Print the solution
opt_val=[BFS' Zmax];
array2table(opt_val,'VariableNames',{'x1','x2','x3','x4','z'})