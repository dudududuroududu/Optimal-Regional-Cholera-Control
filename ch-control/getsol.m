function [x1, x1t, x2, x2t]=getsol(model)
    coord = getcord();
    [x1, x1t, x2, x2t] = mphinterp(model, {'x1', 'x1t', 'x2', 'x2t'}, 'coord', coord);
    x1 = x1(end, :);
    x2 = x2(end, :);
    x1t = x1t(end, :);
    x2t = x2t(end, :);
end