function z = w(x, y)
% 区域控制
%z = double ( (x > 0) & (x < 0.4) & (y > 0) & (y < 0.4) ) ;%double(ctrlArea(x, y));
%z = double( (x > 0) & (x < 0.4) & (y > 0) & (y < 0.4) ) ;
z = ( (x > 0) & (x < 1) & (y > 0) & (y < 1) );
% l1 = (x > 0) & (x < 0.3) & (y > 0) & (y < 0.3);
% l2 = (x > 0.7) & (x < 1) & (y > 0.7) & (y < 1);
% z = double(l1 | l2);
%z = double((0.2^2 < (x-0.5).^2 + (y-0.5).^2) & ((x-0.5).^2 + (y-0.5).^2 < 0.4^2));

% 计算环形区域
% inner_radius_sq = 0.2^2;
% outer_radius_sq = 0.4^2;
% distance_sq = (x - 0.5).^2 + (y - 0.5).^2;
% z = double((distance_sq > inner_radius_sq) & (distance_sq < outer_radius_sq));

end