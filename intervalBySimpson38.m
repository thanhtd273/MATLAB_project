function I = intervalBySimpson38(f, a, b, n)
    if (mod(n, 3) ~= 0)
        error("n phải chia hết cho 3");
    end
    I = f(a) + f(b);
    h = (b - a) / n;

    for i = 1:n-1
        if (mod(i, 3) == 0)
            I = I + 2 *f(a + i*h);
        else
            I = I + 3 * f(a + i*h);
        end
    end
    
    I = 3*h/8*I;
end
