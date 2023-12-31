function result = Lagrange(xa, ya)
    syms x;
    n = length(xa);
    sum = 0;
    for i = 1: n
        product = ya(i);
        for j = 1: n
            if i ~= j
                product = product * (x - xa(j)) / (xa(i) - xa(j));
            end
        end
        sum = sum + product;
    end
    result = str2func(['@(x)' char(sum)]);
end