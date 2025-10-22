try
    load('data7777/7/sol.mat'); 
catch ME
    error('无法加载文件。请检查文件路径或文件是否存在。');
end
% 4. 绘制数据
figure;
hold on
plotSol(Se);
hold off;

figure;
hold on
plotSol(Ie);
hold off;

figure;
hold on
plotSol(R);
hold off;

figure;
hold on
plotSol(Ia);
hold off;
