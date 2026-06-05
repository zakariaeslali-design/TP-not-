function [x,ok]=resolPLU(A,b)
% x est la solution de Ax=b via la decomposition PA=LU.
% On resout LUx=Pb : descente sur b(P) puis remontee.
% ok est vrai si A est inversible et faux sinon.
    [P,LU,ok]=decompPLU(A);
    x=[];
    if ok
        y=descente(LU,b(P));
        x=remontee(LU,y);
    end
end
