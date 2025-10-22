function spinLock(fileName)
    while exist(fileName, "file")
        pause(1)
    end
end