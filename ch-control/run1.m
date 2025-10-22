model1 = mphload("1.mph");

while 1
    spinLockN("tmp/t.mat");
    tic;
    tEnd = load("tmp/t.mat", "tEnd").tEnd;
    tCur = load("tmp/t.mat", "tCur").tCur;
    model1.study('std1').feature('time').set('tlist', tEnd - tCur);
    model1.study("std1").run
    [q1, q2]=getsoladj(model1);
    saveQ(q1, q2);
    delete("tmp/t.mat");
    disp(tCur)
    toc
end
