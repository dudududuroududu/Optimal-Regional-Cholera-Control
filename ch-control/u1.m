function z = u1(x, y)  % 控制的量
    if exist("E:\ch-control\tmp\sol.mat", "file")
        persistent zfield xi yi

        if isempty(zfield)
            [xi, yi] = getCordMesh();  % 获取网格
            zfield = computeControlField(xi, yi);  % 计算控制场
        end

        % 在点 (x, y) 上插值控制值
        z = interp2(xi, yi, zfield, x, y);
    else
        z = zeros(1, length(x));
    end
end
