function I = tichphanhinhthang(fx, a, b, N)
    if (a == b)
        I = 0;
    end
    h = (b - a)/N;
    I = h/2 * (fx(a) + fx(b));
    
    for i = 1: N - 1
        I = I + h * fx(a + i*h);
    end
end