close all;clear all;clc;
disp('�����A��3*3������(2*2)����')
i=input('����A��3*3����3������A��2*2����2:');
if(i==3)
    A=input('���������A��3*3����')
    a=sym(inv(A))
    fprintf('<<%s|%s|%s>,<%s|%s|%s>,<%s|%s|%s>>\n',a(1),a(4),a(7),a(2),a(5),a(8),a(3),a(6),a(9))
else(i==2)
    A=input('���������A��2*2����')
    a=sym(inv(A))
    fprintf('<<%s|%s>,<%s|%s>>\n',a(1),a(3),a(2),a(4))
end
     
    
