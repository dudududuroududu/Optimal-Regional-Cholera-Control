function zfield = computeControlField(xi, yi)
    % 网格间距
    dx = xi(1,2) - xi(1,1);
    dy = yi(2,1) - yi(1,1);

    % 加载数据
    dataSol = load("E:\ch-control/tmp/sol.mat");
    dataQ = load("E:\ch-control/tmp/Q.mat");

    S = reshape(dataSol.S, size(xi));     % S -> w1
    I = reshape(dataSol.I, size(xi));     % I -> w2
    P1 = reshape(dataQ.q1, size(xi));     % P1 -> q1

    % 计算梯度
    [Ix, Iy] = gradient(I, dx, dy);
    [P1x, P1y] = gradient(P1, dx, dy);

    % ∇I ⋅ ∇P1
    dotGrad = Ix .* P1x + Iy .* P1y;

    % 控制参数
    sigma = 10;         % = a
    rho_max = 1;        % = umax
    rho_min = 0;        % = umin

    % 控制律：z = min(rho_max, max(rho_min, -S * ∇I·∇P1 / σ))
    zfield = min(rho_max, max(rho_min, (-S .* dotGrad) ./ sigma));
end
