function [coord, xi, yi] = getcord()
    coord = [];
    xi = 0:0.01:1;
    yi = 0:0.01:1;
    for x = xi
        for y = yi
            coord = [coord [x; y]];
        end
    end
end