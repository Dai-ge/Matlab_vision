close all;clear all;clc;
disp('����������A,B,C������ʽ�����ж�A��B����C���Ƿ����')
a=input('���������A')
b=input('���������B')
c=input('���������C')
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

