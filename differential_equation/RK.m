function [x, y] = RK(fxy, x0, xn, y0, N) 
    h = (xn - x0) / N;
    x(1) = x0; y(1) = y0;

    for i = 2 : N
        x(i) = i * h;
        xi = x(i - 1);
        yi = y(i - 1);

        k1 = h * fxy(xi, yi);
        k2 = h * fxy(xi + 0.5*h, yi + 0.5*k1);
        k3 = h * fxy(xi + 0.5*h, yi + 0.5*k2);
        k4 = h * fxy(xi + h, yi + k3);

        y(i) = yi + 1/6 * (k1 + 2*k2 + 2*k3 + k4);
    end
end