%Phase I: To input Parameters
%C = input("Enter the Cost of Objective function");%[3 , 5] ;  %Cost of objective function
%A = input("Enter the constraints coeff. matrix");%[1 ,2 ; 1, 1 ;0 , 1 ] ; %Constraints coeff. matrix
%b = input("Enter the RHS of Constraints");%[2000 ; 1500 ; 600]; % Rhs of constraints
C=[3 5];
A=[1 2; 1 1; 0 1];
b=[2000; 1500; 600];

%Phase II: To identify <= or >= type constraints
% 0 for <= sign      % 1 for >= sign
Ineqsign=[0 0 1]; 

%Phase III: To introduce slack and surplus variables
s=eye(size(A,1));           %makes identity matrix 3x3
ind=find(Ineqsign>0);
s(ind,:)=-s(ind,:);

%Phase IV: To write the standard form
ObjFn=array2table(C); %To representing objective function
ObjFn.Properties.VariableNames(1:size(C,2)) = {'x_1','x_2'};
mat=[A s b];
cons=array2table(mat);
cons.Properties.VariableNames(1:size(mat,2))={'x_1','x_2','s1','s2','s3','b'} 
