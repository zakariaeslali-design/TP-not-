function [LU,ok]=decompLU(A)
% On doit avoir A=LU (si cela est possible)
% L et U sont stockes dans le tableau LU
% ok est vrai si la decomposition est possible et faux sinon
    n=size(A,1);
    LU=A;
    ok=true;
    for k=1:n-1
        if abs(LU(k,k))<eps
            ok=false;
            return
        end
        for i=k+1:n
            LU(i,k)=LU(i,k)/LU(k,k);
            for j=k+1:n
                LU(i,j)=LU(i,j)-LU(i,k)*LU(k,j);
            end
        end
    end
end
