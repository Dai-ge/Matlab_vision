close all;clear all;clc
method=input('����������Ƿ��в�����1--�У�0--û�У�');
if method == 0
disp('������󻯳������Ǿ��󣬲������')
A=input('�������������')
a=sym(A);
fprintf('(A|b)=\n<<%s|%s|%s|%s>,<%s|%s|%s|%s>,<%s|%s|%s|%s>>\n\n',a(1),a(4),a(7),a(10),a(2),a(5),a(8),a(11),a(3),a(6),a(9),a(12))
b=A(:,4);
c=A(:,1:3);
x=inv(c)*b;
x=sym(x');
fprintf('����Ľ�x=\n(%s,%s,%s)\n\n',x(1),x(2),x(3))

disp('�����Ǿ���A��A|b��rank��')
r1=rank(A);
r2=rank(c);
fprintf('����A��rank��%d\n\n',r2)
fprintf('����A|b����rank:%d\n\n',r1)

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
    disp('������󻯳������Ǿ��󣬲��������a��ֵʹ����������')
    syms a
    A=input('�������������(a��ʾ����)��')
    a=sym(A);
    fprintf('(A|b)=\n<<%s|%s|%s|%s>,<%s|%s|%s|%s>,<%s|%s|%s|%s>>\n\n',a(1),a(4),a(7),a(10),a(2),a(5),a(8),a(11),a(3),a(6),a(9),a(12))
    c=A(:,1:3);
    res=solve(det(c)==0);
    fprintf('a=%g\n',res)
end
    
         

