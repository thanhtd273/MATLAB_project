function [nghiem, solanlap] = lap(fb,a,b,saiso)
syms x;
fb = str2sym(fb);
fb = symfun(fb,[x]);
solanlap = 0;
x(1) = a;
x(2) = b;
i = 2;
max = 500;
    while true
       x(i) = double(fb(x(i-1)));
       solanlap = solanlap + 1;
       if double(abs (x(i) - x(i-1))) < saiso
           break;
       end  
       i = i + 1;
       if(solanlap > max) break;
       end
    end
end
nghiem = double(x(i));
end