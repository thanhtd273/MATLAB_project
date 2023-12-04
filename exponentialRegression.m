% a = [0.65 0.75 0.85 0.95 1.15];
% b = [0.96 1.06 1.17 1.29 1.58];
% fx = exponential_Regression(a, b);
function fx = exponentialRegression(x, y ) 
    if (length(x) ~= length(y))
        error('Dữ liệu x và y không cùng kích thước');
    end
   
    n = length(x);
    A = [n sum(x); sum(x) sum(x.^2)];

    B = [sum(log(y)) sum(x .* log(y))];
    Y = B/A;
    disp(Y);
    a = exp(Y(1)); b = Y(2);
    disp(a, b);
    if (isnan(a) || isinf(a) || isnan(b) || isinf(b)) 
      error('Exponential regression error: a, b is either NaN or Inf!')
    end
    syms x;
    a = num2str(a);
    b = num2str(b);
    fx = str2func(['@(x)' char(a * exp(b * x))]);
    disp('Hàm mũ: ')
    disp(fx);
end
