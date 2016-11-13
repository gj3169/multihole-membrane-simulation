function [ output_args ] = judge_shuzhi_liantong( input_args )
%判断该矩阵竖直方向是否联通
%   输入一个10*10的矩阵，1代表黑方格，判断黑方格是否能在竖直方向联通
n = input_args;

A = zeros(10);
b = randperm(100);
for i = 1:1:n %这个循环是将这些随机数字对应的方格数字转换为1，其余为零。
    mid = b(i);
    j = ceil(mid/10);
    k = mod(mid,10);
    A(j,k+1) = 1;
end
N1 = judge_shuzhi_liantong(A);
N2 = judge_shuzhi_liantong(A');
Nmax = max(N1,N2);
output_args = Nmax;