function I = tichphanSimpson38(f, a, b, n)
  if mod(n, 3) ~= 0
    error('n phải chia hết cho 3');
  end

  h = (b - a) / n;
  
  s0 = 0;
  for i = 3:3:n-3
    x = a + i * h;
    s0 = s0 + f(x);
  end
  
  s1 = 0;
  for i = 1:3:n-1
    if i ~= 3 && i ~= n-3
      x = a + i * h;
      s1 = s1 + f(x);
    end
  end
  
  I = (3 * h / 8) * (f(a) + 3 * s1 + 2 * s0 + f(b));
end