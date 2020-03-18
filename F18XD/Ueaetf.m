close all;clear all;clc
disp('给出了两个微分方程求特征值，特征向量以及通解')
A=input('请写出由微分方程构造出来的矩阵(2*2)：')
[vec,val]=eig(A);
vec_res=vec';
v1=vec_res(1,:);
v2=vec_res(2,:);
sym(v1);sym(v2);
if (v1(1)~=1)&&(v1(1)~=0)
    v1(2)=v1(2)/v1(1);
    v1(1)=v1(1)/v1(1);
end
if (v2(1)~=1)&&(v2(1)~=0)
    v2(2)=v2(2)/v2(1);
    v2(1)=v2(1)/v2(1);
end
v1=sym(v1);v2=sym(v2);
fprintf('λ1=%g\n\n',val(1))
fprintf('λ2=%g\n\n',val(4))
fprintf('v1=\n<%s,%s>\n\n',v1(1),v1(2))
fprintf('v2=\n<%s,%s>\n\n',v2(1),v2(2))

fprintf('C1->\n<%s,%s>*exp(%g*t)\n\nC2-->\n<%s,%s>*exp(%g*t)\n',v1(1),v1(2),val(1),v2(1),v2(2),val(4))
