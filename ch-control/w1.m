function w = w1(x, y)
    w1 = load("E:\ch-control/tmp/sol.mat", "S").S;%E:\control\tmp
    [xi, yi] = getCordMesh();
    w = interp2(xi, yi, reshape(w1, size(xi)), x, y);
end