function y = tichphanSimpson(fx, a, b, N)
    h = (b - a) / N;
    y = h/3 * (fx(a) + fx(b));

    for i = 1:2:N - 1
        y = y + 4*h/3 * fx(a + i * h);
    end

    for i = 2: 2: N - 1
        y = y + 2*h/3 * fx(a + i*h);
    end
end