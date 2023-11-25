function [nghiem,solanlap] = tieptuyen(f, a, b, saiso)
 syms x;
 fd1 = str2func(['@(x)' char(diff(f(x)))]);
 fd2 = str2func(['@(x)' char(diff(fd1(x)))]);
 nostop = 1;
 temp1 = double(solve(diff(f(x))));
 temp2 = double(solve(diff(fd1(x))));
 %Kiem tra f'(x) co doi dau trong khoang phan li nghiem hay khong
 if ~isempty(temp1)
    for i=1:length(temp1)
        if (temp1(i)<=b) && (temp1(i)>=a)
            disp('Ham f'' doi dau trong khoang phan li nghiem');
            nostop=0;
            nghiem = 'khong xac dinh';
            solanlap = 'khong xac dinh';
            break;
        end
     end
 end
 %Kiem tra f"(x) co doi dau trong khoang phan li nghiem hay ko
 if ~isempty(temp2)
    for i=1:length(temp2)
        if (temp2(i)<=b) && (temp2(i)>=a)
            disp('Ham f" doi dau trong khoang phan li nghiem');
            nostop=0;
            nghiem = 'khong xac dinh';
            solanlap = 'khong xac dinh';
            break;
        end
    end
 end
 if (nostop)
    solanlap = 1;
    x0 = a;
    while (f(x0) * fd2(x0) <= 0) 
        x0 = (x0 + b)/2;
    end
    xi_1 = x0;
    xi = xi_1 - f(xi_1)/fd1(xi_1);
    while abs(xi - xi_1) >= saiso
        if solanlap > 2000
            break;
        end
        solanlap = solanlap + 1;
        xi_1 = xi;
        xi = xi_1 - f(xi_1)/fd1(xi_1);
    end
    nghiem = xi;
 end
end