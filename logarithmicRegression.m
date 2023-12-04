% a = [6 7 11 15 17 21 23 29 29 37 39];
% b = [29 21 29 14 21 15 7 7 13 0 3];
% fx = logarithmic_Regression(a, b);

function fx = logarithmicRegression(x, y)
  if length(x) ~= length(y)
    error('Dữ liệu x và y không cùng kích thước');
  end

  n = length(x);
  b = (n* sum(x.*y) - sum(x)*sum(y)) / (n*sum(x.^2) - sum(x.^2));
  a = (sum(y) - b*sum(x))/n;
  if (isnan(a) || isinf(a) || isnan(b) || isinf(b)) 
      error('Logarit regression error: a, b is either NaN or Inf!')
  end

  a = num2str(a);
  b = num2str(b);
  syms x;
  fx = str2func(['@(x)' char(a + b * log(x))]) ;
  disp('Hàm logarit: ')
  disp(fx);
end