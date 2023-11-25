function result = TaylorDiff(xa, ya, v, h)
    i = find(xa == v);
    result = (ya(i + 1) - ya(i)) / h;
end