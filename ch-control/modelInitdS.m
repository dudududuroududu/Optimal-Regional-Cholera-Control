function z = modelInitdS(x, y)
    if ~exist("E:\ch-control/tmp/modelInit.mat", "file")
        z = zeros(1, length(x));
    else
        init = load("E:\ch-control/tmp/modelInit.mat", "dS").dS;
        [xi, yi] = getCordMesh();
        z = interp2(xi, yi, reshape(init, size(xi)), x, y);
    end
end