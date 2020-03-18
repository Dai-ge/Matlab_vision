close all;clear all;clc
disp('lambda 1,2;eigenvecor 1,2 with matrix A(2*2)\n')
a=input('«Î ‰»Îæÿ’ÛA(2*2):')
[vec,val]=eig(a);
lambda1=val(1)
lambda2=val(4)
vec_res=vec';
v1=vec_res(1,:);
v2=vec_res(2,:);
v1=sym(v1);v2=sym(v2);
if (v1(1)~=1)&&(v1(1)~=0)
    v1(2)=v1(2)/v1(1);
    v1(1)=v1(1)/v1(1);
end
if (v2(1)~=1)&&(v2(1)~=0)
    v2(2)=v2(2)/v2(1);
    v2(1)=v2(1)/v2(1);
end
fprintf('v1=\n<%s,%s>\n\n',v1(1),v1(2))
fprintf('v2=\n<%s,%s>\n\n',v2(1),v2(2))