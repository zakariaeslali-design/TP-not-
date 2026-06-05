function [C,ok]=invLU(A)
% Retourne C=A^{-1} via la decomposition A=LU.
% Chaque colonne de C est la solution de A*x=e_i.
% ok est vrai si la decomposition est possible et faux sinon
    [LU,ok]=decompLU(A);
    C=[];
    if ok
        n=size(A,1);
        I=eye(n);
        C=zeros(n);
        for i=1:n
            y=descente(LU,I(:,i));
            C(:,i)=remontee(LU,y);
        end
    end
end
