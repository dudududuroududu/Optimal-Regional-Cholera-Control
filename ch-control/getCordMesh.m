% function [X, Y] = genMesh(x, y)
% X=zeros([1, length(x)*length(y)]);
% Y=zeros([1, length(x)*length(y)]);
% index = 1;
% for i = 1:length(y)
%     for j = 1:length(x)
%         X(index) = j;
%         Y(index) = i;
%         index = index + 1;
%     end
% end
% end

function [X, Y] = getCordMesh()
[X, Y] = meshgrid(0:0.01:1);
end