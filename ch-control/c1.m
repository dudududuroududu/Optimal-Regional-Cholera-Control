
try
    load('data/6/sol.mat'); 
catch ME
    error('无法加载文件。请检查文件路径或文件是否存在。');
end

% 4. 绘制数据
figure;
hold on
plotSol(S);
hold off;

figure;
hold on
plotSol(I);
hold off;


