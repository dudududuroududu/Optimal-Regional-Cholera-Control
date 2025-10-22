function z = I0(x, y)
% 初始值
l = ((x > 0.3) & (x < 0.7) & (y > 0.3) & (y < 0.7));
%l = ((x > 0) & (x < 0.3) & (y > 0) & (y < 0.3));
% inner_radius_sq = 0.2^2;
% outer_radius_sq = 0.4^2;
% distance_sq = (x - 0.5).^2 + (y - 0.5).^2;
% l = ((distance_sq > inner_radius_sq) & (distance_sq < outer_radius_sq));
% l1 = (x > 0) & (x < 0.2) & (y > 0) & (y < 0.2);
% l2 = (x > 0.8) & (x < 1) & (y > 0.8) & (y < 1);
% l = l1 | l2;
z = zeros(1, length(x));
z(l) = 0.1;%124;%300
z(~l) = 0;

end