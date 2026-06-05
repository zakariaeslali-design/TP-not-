function x=remontee(U,y)
% resout le systeme Ux=y. L'argument peut etre le tableau LU
% ou L et U sont stockes.
    n=length(y);
    x=zeros(n,1);
    for i=n:-1:1
        x(i)=y(i);
        for j=i+1:n
            x(i)=x(i)-U(i,j)*x(j);
        end
        x(i)=x(i)/U(i,i);
    end
end
