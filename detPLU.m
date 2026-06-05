function d=detPLU(A)
% d=det(A) via la decomposition PA=LU : d=det(P^{-1})*det(U)=s*prod(diag(LU)).
% Si la decomposition echoue, A n'est pas inversible et d=0.
    [~,LU,ok,s]=decompPLU(A);
    d=0;
    if ok
        d=s*prod(diag(LU));
    end
end
