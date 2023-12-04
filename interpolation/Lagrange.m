function result = Lagrange(xa, ya)
syms x;
n = length(xa);
sum = 0;
for i = 1: n
    mul = ya(i);
    for j = 1: n
        if i ~= j
        mul = mul * (x - xa(j)) / (xa(i) - xa(j));
        end
    end
sum = sum + mul;
end
result = sum;
end