function I = intervalBySimpson13(fx, a, b, n)
    if (mod(n, 2) ~= 0)
        error("n phải chia hết cho 2");
    end
    h = (b - a) / n;
    I = h/3 * (fx(a) + fx(b));

    for i = 1:2:n - 1
        I = I + 4*h/3 * fx(a + i * h);
    end

    for i = 2: 2: n - 1
        I = I + 2*h/3 * fx(a + i*h);
    end
end