close all;clear all;clc;
disp('输入2个2*2矩阵A，B求一系列值')
A=input('请输入矩阵A：')
B=input('请输入矩阵B:')
r1=sym(A*B);
r2=sym((A*B)^2);
r3=sym(B*A);

fprintf('<<%s|%s>,<%s|%s>>\n',r1(1),r1(3),r1(2),r1(4))
fprintf('<<%s|%s>,<%s|%s>>\n',r2(1),r2(3),r2(2),r2(4))
fprintf('<<%s|%s>,<%s|%s>>\n',r3(1),r3(3),r3(2),r3(4))