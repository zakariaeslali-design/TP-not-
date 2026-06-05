function [P,LU,ok,s]=decompPLU(A)
% Decomposition PA=LU avec pivot partiel (plus grand pivot en valeur absolue).
% P est un vecteur de taille n qui represente la matrice de permutation.
% s est le signe de la permutation P (utile pour le determinant).
% L et U sont stockes dans le tableau LU.
% ok est vrai si la decomposition est possible (A inversible) et faux sinon.
    n=size(A,1);
    LU=A;
    P=(1:n)';
    s=1;
    ok=true;
    for k=1:n-1
        [pivot,m]=max(abs(LU(k:n,k)));
        m=m+k-1;
        if pivot<eps
            ok=false;
            return
        end
        if m~=k
            LU([k m],:)=LU([m k],:);
            P([k m])=P([m k]);
            s=-s;
        end
        for i=k+1:n
            LU(i,k)=LU(i,k)/LU(k,k);
            for j=k+1:n
                LU(i,j)=LU(i,j)-LU(i,k)*LU(k,j);
            end
        end
    end
    if abs(LU(n,n))<eps
        ok=false;
    end
end
