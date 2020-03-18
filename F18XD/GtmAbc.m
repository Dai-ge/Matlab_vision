close all;clear all;clc;
disp('求矩阵A（3*3）或者(2*2)的逆')
i=input('矩阵A是3*3输入3，矩阵A是2*2输入2:');
if(i==3)
    A=input('请输入矩阵A（3*3）：')
    a=sym(inv(A))
    fprintf('<<%s|%s|%s>,<%s|%s|%s>,<%s|%s|%s>>\n',a(1),a(4),a(7),a(2),a(5),a(8),a(3),a(6),a(9))
else(i==2)
    A=input('请输入矩阵A（2*2）：')
    a=sym(inv(A))
    fprintf('<<%s|%s>,<%s|%s>>\n',a(1),a(3),a(2),a(4))
end
     
    
