function plotSol(sol)
    [X, Y] = getCordMesh();
    s = reshape(sol, size(X));
    surf(X, Y, s, EdgeColo='none')
    view(0,90);%俯视视角
    xlabel("X")
    ylabel("Y")
end