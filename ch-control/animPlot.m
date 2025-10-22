function animPlot(dir, T)
for i = 2:T
    sol = load(strcat(dir, "/", num2str(i), "/u.mat"));
    plotSol(sol.u1)
    disp(i)
    pause(1)
end
end