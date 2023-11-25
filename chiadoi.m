function [nghiem, solanlap ] = chiadoi(f, a, b, saiso)
    solanlap = 1;
    c = (a + b) / 2;
    if (f(c) * f(a)) < 0
        b = c;
    else
        a = c;
    end
    if (b - a) < saiso
        nghiem = a;
    else
        [nghiem, solanlap] = chiadoi(f, a, b, saiso);
        solanlap = solanlap + 1;
    end
end