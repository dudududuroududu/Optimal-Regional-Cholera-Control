function z = modelInitI(x, y)
    if ~exist("E:\ch-control/tmp/modelInit.mat", "file")
        z = I0(x, y);
    else
        init = load("E:\ch-control/tmp/modelInit.mat", "I").I;
        [xi, yi] = getCordMesh();
        z = interp2(xi, yi, reshape(init, size(xi)), x, y);
    end
end