function saveSol(S, I)
    delete("tmp/sol.mat");
    save("tmp/sol.mat", "S", "I");
end