function [C,ok]=invPLU(A)
% Retourne C=A^{-1} via la decomposition PA=LU.
% Chaque colonne de C est la solution de A*x=e_i (avec second membre permute).
% ok est vrai si A est inversible et faux sinon.
    [P,LU,ok]=decompPLU(A);
    C=[];
    if ok
        n=size(A,1);
        I=eye(n);
        C=zeros(n);
        for i=1:n
            ei=I(:,i);
            y=descente(LU,ei(P));
            C(:,i)=remontee(LU,y);
        end
    end
end
