function saveModelInit(S, dS, I, dI)
    delete("tmp/modelInit.mat");
    save("tmp/modelInit.mat", "S", "dS", "I", "dI");
end