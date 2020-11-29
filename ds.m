T='FELICITATEMINGENTEMANIMUSINGENSDECET';
S='FEEGLMEMNASNIIINCGDMEUCITEANTTESEITN';
T1=reshape(T,[6 6]);
T1=T1';

L=T;
count=0;
while sum(abs(L-S))>0
    count=count+1;
A=zeros(6);
i=randperm(36,9);
A(i)=1;
L=[];
for k=1:4
[x y]=find(A==1);

for i=1:length(x)
    L=[L T1(x(i),y(i))];
end
A=[flip(A(:,1))'; flip(A(:,2))'; flip(A(:,3))'; flip(A(:,4))'; flip(A(:,5))'; flip(A(:,6))'];
end
end

