function [nghiem, solanlap] = chiadoi(f,a,b,saiso)
syms x;
f = str2sym(f);
f = symfun(f,[x]);
solanlap = 0;
%e = b - a ;
while true
    c = (a+b)/2;
        if double(f(c)*f(a)) < 0
            b = c;
        else 
            a = c;
        end
        e = b-a;
        solanlap = solanlap + 1;
        if e < saiso
            break;
        end
end
nghiem = a;
%fprintf('Nghiem gan dung: %0.4f\n', nghiem);
%fprintf('So lan lap: %0.f', solanlap);
end