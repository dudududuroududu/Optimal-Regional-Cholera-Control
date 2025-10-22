function w = w2(x, y)
    w2 = load("E:\ch-control/tmp/sol.mat", "I").I;
    [xi, yi] = getCordMesh();
    w = interp2(xi, yi, reshape(w2, size(xi)), x, y);
end