function [ output_args ] = judge_shuzhi_liantong( input_args )
%�жϸþ�����ֱ�����Ƿ���ͨ
%   ����һ��10*10�ľ���1����ڷ����жϺڷ����Ƿ�������ֱ������ͨ
n = input_args;

A = zeros(10);
b = randperm(100);
for i = 1:1:n %���ѭ���ǽ���Щ������ֶ�Ӧ�ķ�������ת��Ϊ1������Ϊ�㡣
    mid = b(i);
    j = ceil(mid/10);
    k = mod(mid,10);
    A(j,k+1) = 1;
end
N1 = judge_shuzhi_liantong(A);
N2 = judge_shuzhi_liantong(A');
Nmax = max(N1,N2);
output_args = Nmax;