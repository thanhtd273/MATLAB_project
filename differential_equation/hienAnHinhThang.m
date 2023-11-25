function [x, y, n] = hienAnHinhThang(fxy, x0, xn, y0, N, e) 
    n = 1;
    h = (xn - x0) / N;
    x(1) = x0; y(1) = y0 + h*fxy(x0, y0);

    for i = 2 : N
        x(i) = i * h;

        xi = x(i - 1);
        yi = y(i - 1);
        ym0 = yi + h * fxy(xi, yi);
        while 1
            n = n + 1;
            ym1 = yi + h/2 * (fxy(xi, yi) + fxy(xi, ym0));
            if abs(ym1 - ym0) <= e
                break;
            end
            ym0 = ym1;
        end

        y(i) = ym1;
    end
end