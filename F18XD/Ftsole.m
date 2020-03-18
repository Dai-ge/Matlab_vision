close all;clear all;clc
method=input('请问这道题是否含有参数？1--有，0--没有：');
if method == 0
disp('增广矩阵化成上三角矩阵，并算出解')
A=input('请输入增广矩阵：')
a=sym(A);
fprintf('(A|b)=\n<<%s|%s|%s|%s>,<%s|%s|%s|%s>,<%s|%s|%s|%s>>\n\n',a(1),a(4),a(7),a(10),a(2),a(5),a(8),a(11),a(3),a(6),a(9),a(12))
b=A(:,4);
c=A(:,1:3);
x=inv(c)*b;
x=sym(x');
fprintf('矩阵的解x=\n(%s,%s,%s)\n\n',x(1),x(2),x(3))

disp('下面是矩阵A及A|b的rank：')
r1=rank(A);
r2=rank(c);
fprintf('矩阵A的rank：%d\n\n',r2)
fprintf('矩阵（A|b）的rank:%d\n\n',r1)

if (r1==r2)&(r1==3)
    disp('Unique solution')
else if (r2==r1)&(r1<3)
        disp('Infinitely many solutions')
    else if r2<r1
            disp('No solution')
        end
    end
end
else
    disp('增广矩阵化成上三角矩阵，并算出参数a的值使其有无数解')
    syms a
    A=input('请输入增广矩阵(a表示参数)：')
    a=sym(A);
    fprintf('(A|b)=\n<<%s|%s|%s|%s>,<%s|%s|%s|%s>,<%s|%s|%s|%s>>\n\n',a(1),a(4),a(7),a(10),a(2),a(5),a(8),a(11),a(3),a(6),a(9),a(12))
    c=A(:,1:3);
    res=solve(det(c)==0);
    fprintf('a=%g\n',res)
end
    
         

