function saveQ(q1, q2)
    delete("tmp/q.mat");
    save("tmp/q.mat", "q1", "q2");
end