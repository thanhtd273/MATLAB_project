% a = [6 7 11 15 17 21 23 29 29 37 39];
% b = [29 21 29 14 21 15 7 7 13 0 3];
% y = linear_Regression(a, b);
% disp(y);
function fx = linearRegression(x, y) 
    if (length(x) ~= length(y))
        error('Dữ liệu x và y không cùng kích thước');
    end
    n = length(x);
    a = (n * sum(x .* y) - sum(x) * sum(y)) / (n * sum(x .^ 2) - sum(x) ^ 2);
    b = mean(y) - a * mean(x);

    syms x;
    a = num2str(a);
    b = num2str(b);
    fx = str2func(['@(x)' char(a * x + b)]);
    disp(fx);
end