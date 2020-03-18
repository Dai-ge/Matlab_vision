close all;clear all;clc;
disp('两个矩阵C，D想乘')
c=input('请输入矩阵C(3*3)：')
d=input('请输入矩阵D(3*2)：')
res=c*d;
row1=res(1,:);
row2=res(2,:);
row3=res(3,:);
fprintf('<<%g|%g>,<%g|%g>,<%g|%g>>\n',row1(1),row1(2),row2(1),row2(2),row3(1),row3(2))
