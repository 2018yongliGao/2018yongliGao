function B=bqlj(A,f) %图的边权矩阵与带权邻接矩阵互换
if f==1 %当A为边权矩阵时，f设为1
    B=zeros();
    for i=1:length(A(1,:))
        B(A(1,i),A(2,i))=A(3,i);
        B(A(2,i),A(1,i))=A(3,i);
    end
end
if f==0; %当A为带权邻接矩阵时，f设为0
    B=[];
    A=triu(A);
    for i=1:length(A(:,1))
        for j=1:length(A(1,:))
            if A(i,j)~=0
                B=[B,[i;j;A(i,j)]];
            end
        end
    end
end
end




