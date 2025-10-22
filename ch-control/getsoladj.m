function [q1, q2]=getsoladj(model)
    coord = getcord();
    [q1, q2] = mphinterp(model, {'x1', 'x2'}, 'coord', coord);
    q1 = q1(end, :);
    q2 = q2(end, :);
end