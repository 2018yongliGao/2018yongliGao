function B=bqlj(A,f) %ͼ�ı�Ȩ�������Ȩ�ڽӾ��󻥻�
if f==1 %��AΪ��Ȩ����ʱ��f��Ϊ1
    B=zeros();
    for i=1:length(A(1,:))
        B(A(1,i),A(2,i))=A(3,i);
        B(A(2,i),A(1,i))=A(3,i);
    end
end
if f==0; %��AΪ��Ȩ�ڽӾ���ʱ��f��Ϊ0
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




