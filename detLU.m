function [d,ok]=detLU(A)
% d=det(A) via la decomposition A=LU : d=det(U)=prod(diag(LU)).
% ok est vrai si la decomposition est possible et faux sinon
    [LU,ok]=decompLU(A);
    d=0;
    if ok
        d=prod(diag(LU));
    end
end
