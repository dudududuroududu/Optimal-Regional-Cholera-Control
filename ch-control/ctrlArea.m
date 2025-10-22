function z = ctrlArea(x, y)
% 如果在控制区域，返回true，否则返回false
% inner_radius_sq = 0.2^2;
% outer_radius_sq = 0.4^2;
% distance_sq = (x - 0.5).^2 + (y - 0.5).^2;
% z = ((distance_sq > inner_radius_sq) & (distance_sq < outer_radius_sq));
%z = ( (x > 0) & (x < 0.4) & (y > 0) & (y < 0.4) );
z = ( (x > 0.3) & (x < 0.7) & (y > 0.3) & (y < 0.7) );
% z1 = (x > 0) & (x < 0.3) & (y > 0) & (y < 0.3);
% z2 = (x > 0.7) & (x < 1) & (y > 0.7) & (y < 1);
% z = z1 | z2;
%z = ( (x > 0) & (x < 0.3) & (y > 0) & (y < 0.3) ) & 0; %不加控制
end