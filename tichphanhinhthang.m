function y = tichphanhinhthang(fx, a, b, N)
    h = (b - a)/N;
    y = h/2 * (fx(a) + fx(b));
    
    for i = 1: N - 1
        y = y + h * fx(a + i*h);
    end
end