function z = u2(x, y)%控制的量
if exist("E:\control\tmp\sol.mat", "file")
[xi, yi] = getCordMesh();
w2 = interp2(xi, yi, reshape(load("E:\control/tmp/sol.mat", "Ie").Ie, size(xi)), x, y);
q2 = interp2(xi, yi, reshape(load("E:\control/tmp/Q.mat", "q2").q2, size(xi)), x, y);
q3 = interp2(xi, yi, reshape(load("E:\control/tmp/Q.mat", "q3").q3, size(xi)), x, y);

a=10;
umax=1;

z = min(umax, max(0, (w(x, y) .* w2 .* (q2 - q3))./a));

else

z = zeros(1, length(x));

end

end