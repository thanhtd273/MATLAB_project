function [nghiem, solanlap] = tieptuyen(f,a,b,saiso)
syms x;
f = str2sym(f);
f = symfun(f,[x]);
fd1 = diff(f,1);
fd2 = diff(f,2);
solanlap = 0;
x(1) = a;
i = 2;
while double(f(x(1)) * fd2(x(1))) < 0
    x(1) = double((x(1) + b)/2);
    if double(f(x(1)) * fd2(x(1))) > 0
        break;
    end
end
while true
    x(i) = double(x(i-1)) - double(f(x(i-1)) / fd1(x(i-1)));
    if abs (x(i) - x(i-1)) < saiso
        ketqua = double(x(i));
        break;
    end
    i = i + 1;
    solanlap = solanlap + 1;
end
nghiem = ketqua
%fprintf('Nghiem gan dung: %0.4f\n', nghiem);
%fprintf('So lan lap: %0.f', solanlap);
end

