% input the problem into the matrix
C=[-1 3 -2]
A=[3 -1 2;-2 4 0;-4 3 8]
No_of_variables=size(A,2);
B=[7;12;10];
S=eye(size(A,1));
A=[A S B];
Cost=[-1 3 -2 0 0 0 0];
BV=No_of_variables + 1:1:size(A,2)-1;
ZjCj= Cost(BV)*A- Cost;

SimplexTable= array2table(ZjCj);
SimplexTable.Properties.VariableNames(1:size(ZjCj,2))={'x1','x2','x3','s1','s2','s3','Soln'};


RUN= true;
while RUN
    if any(ZjCj<0)
        fprintf('The current BFS is not optimal\n')
        fprintf('\n--------the next iteration--------\n')
        disp('old Basic variables=')
        disp(BV)
%to find entering variable
ZC=ZjCj(1:end -1);
[EnterCol,Pvt_Col]= min(ZC);
fprintf('The most -ve element in Zj-CJ is %d corresponding to column %d\n',EnterCol,Pvt_Col)
fprintf('Entering variable is %d \n',Pvt_Col)
% To find leaving variable
Sol=A(:,end);
column=A(:,Pvt_Col);
if all(column<=0)
    error('LPP has an unbounded Sol, All entries <=0 in column %d',Pvt_Col)
else
    %finding min ratio
    for i=1:size(column,1)
        if column(i)>0
            ratio(i)=sol(i)./column(1);
        else
            ratio(i)=inf;
        end


[MinRatio,Pvt_Row]=min(Ratio);
fprintf('Min corresponding to pivot row is %d\n',Pvt_Row)
fprintf('Leaving Variable is %d\n',BV(Pvt_Row))
    end

BV (Pvt_Row)=Pvt_Col;
disp('New Basic Variables(BV)=')
disp(BV)
Pvt_Key=A(Pvt_Row,Pvt_Col);
% updating table 
A(Pvt_Row,:)=A(Pvt_Row,:)./Pvt_Key;
for i=1:size(A,1)
    if i~=Pvt_Row
        A(i,:)=A(i,:)-A(i,Pvt_Col).*A(Pvt_Row,:)
    end
    ZjCj









