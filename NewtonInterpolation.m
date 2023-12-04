function result = NewtonInterpolation(xa, ya) 
da = DividedDifference(xa, ya);
result = NewtonForm(xa, da);
end