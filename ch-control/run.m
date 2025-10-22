tEnd = 8;
tCur = 0;

[xi, yi] = getCordMesh();

model0 = mphload("0.mph");
InitQ();
InitU();
delete("tmp/modelInit.mat");
delete("tmp/sol.mat");
delete("tmp/t.mat");

saveU(u1(xi, yi));
model0.study("std1").run
tCur = tCur + 1;
[x1, x1t, x2, x2t] = getsol(model0);
saveSol(x1, x2);
disp(tCur);
saveModelInit(x1, x1t, x2, x2t);
copyRes(tCur);

while ~(tCur >= tEnd)
    tic;
    save("tmp/t.mat", "tEnd", "tCur");
    spinLock("tmp/t.mat");
    saveU(u1(xi, yi));
    model0.study("std1").run
    tCur = tCur + 1;
    [x1, x1t, x2, x2t] = getsol(model0);
    saveSol(x1, x2);
    disp(tCur);
    copyRes(tCur);
    saveModelInit(x1, x1t, x2, x2t);
    toc;
end