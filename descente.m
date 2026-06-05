function y=descente(L,b)
% resout le systeme Ly=b. L'argument peut etre le tableau LU
% ou L et U sont stockes. La diagonale de L vaut 1 (pas de division).
    n=length(b);
    y=zeros(n,1);
    for i=1:n
        y(i)=b(i);
        for j=1:i-1
            y(i)=y(i)-L(i,j)*y(j);
        end
    end
end
