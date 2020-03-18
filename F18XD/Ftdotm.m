close all;clear all;clc;
disp('求三个矩阵A,B,C的行列式，并判断A，B（，C）是否可逆')
a=input('请输入矩阵A')
b=input('请输入矩阵B')
c=input('请输入矩阵C')
A_result=det(a)
B_result=det(b)
C_result=det(c)
judge(A_result,'A')
judge(B_result,'B')
judge(C_result,'C')
function judge(result,name)
if(result~=0)
    fprintf('%s:Yes\n',name)
else
    fprintf('%s:No\n',name)
end
end

