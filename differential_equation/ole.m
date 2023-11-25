function [x, y] = ole(fxy, x0, xn, y0, N)
    h = (xn - x0) / N;
    x(1) = x0; y(1) = y0;

    for i = 2 : N
        x(i) = i * 0.2;
        y(i) = y(i - 1) + h * fxy(x(i - 1), y(i - 1));
    end
end