function [nghiem, solanlap] = lap(f, a, b, saiso)
    solanlap = 0;
    xi = b; 
    xi_1 = a;
    while abs(xi - xi_1) >= saiso
        solanlap = solanlap + 1;
        xi_1 = xi;
        xi = f(xi_1);
    end
    nghiem = xi;
end