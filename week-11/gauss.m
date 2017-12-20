%% procedure #1#
% A=[12 -2 3;1 10 -2;3 1 15];
% b=[18;16;52];
% [m,n]=size(A);
% if m~=n
%     error('Matris kare olmali');
% end
% nb =n+1;
% Aug =[A b];
% for k=1:n-1
%     for i=k+1:n
%         factor=Aug(i,k)/Aug(k,k);
%         Aug(i,k:nb)=Aug(i,k:nb)-factor*Aug(k,k:nb);
%     end
% end
% x=zeros(n,1);
% x(n)=Aug(n,nb)/Aug(n,n);
% for i=n-1:-1:1
% x(i)=(Aug(i,nb)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
% end
% x
%

%% procedure #2#
A=[12 -2 3;1 10 -2;3 1 15];
b=[18;16;52];
[n,~]=size(A);
x = zeros(n,1);

for i=1:n-1
    m = A(i+1:n,i)/A(i,i);
    A(i+1:n,:) = A(i+1:n,:)-m*A(i,:);
    b(i+1:n,:) = b(i+1:n,:)-m*b(i,:);
end

x(n,:)=b(n,:)/A(n,n);
for i=n-1:-1:1
    x(i,:)=(b(i,:)-A(i,i+1:n)*x(i+1:n,:))/A(i,i);
end
x
