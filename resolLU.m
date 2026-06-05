function [x,ok]=resolLU(A,b)
% x est la solution du systeme Ax=b, via la decomposition A=LU.
% ok est vrai si la decomposition est possible et faux sinon
    [LU,ok]=decompLU(A);
    x=[];
    if ok
        y=descente(LU,b);
        x=remontee(LU,y);
    end
end
