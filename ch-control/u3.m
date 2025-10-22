function z = u3(x, y)
if exist("E:\control\tmp\sol.mat", "file")
[xi, yi] = getCordMesh();
w6 = interp2(xi, yi, reshape(load("E:\control/tmp/sol.mat", "Ia").Ia, size(xi)), x, y);
%q4 = interp2(xi, yi, reshape(load("D:\new/tmp/Q.mat", "q4").q4, size(xi)), x, y);
q6 = interp2(xi, yi, reshape(load("E:\control/tmp/Q.mat", "q6").q6, size(xi)), x, y);

a=10;
umax=1;

z = min(umax, max(0, (w(x, y) .* w6 .* q6)./a));

else

z = zeros(1, length(x));

end

end