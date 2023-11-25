function result = NewtonInterpolation(xa, ya)
    syms x
    da = DividedDifference(xa, ya);
    result = NewtonForm(xa, da, x);
    result = str2func(['@(x)' char(result)]);
end