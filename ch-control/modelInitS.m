function z = modelInitS(x, y)
    if ~exist("E:\ch-control/tmp/modelInit.mat", "file")
        z = S0(x, y);
    else
        init = load("E:\ch-control/tmp/modelInit.mat", "S").S;
        [xi, yi] = getCordMesh();
        z = interp2(xi, yi, reshape(init, size(xi)), x, y);
    end
end