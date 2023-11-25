function [nghiem, solanlap] = daycung(f, a, b, saiso) 
    solanlap = 0;
    e = abs(a - b);
    while e > saiso
        solanlap = solanlap + 1;
        c = (a * f(b) - b * f(a)) / (f(b) - f(a));
        a = b;
        b = c;
        e = abs(b - a);
        nghiem = a;
    end
end