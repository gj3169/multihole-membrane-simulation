function [ output_args ] = judge_shuzhi_liantong( input_args )
%判断该矩阵竖直方向是否联通
%   输入一个10*10的矩阵，1代表黑方格，判断黑方格是否能在竖直方向联通
A = input_args;
B = A(1,:);
for i = 1:1:9 %查找每行符合条件的黑方格也就是“1”的位置，其中B是一个中间向量
    B = B.*A(i+1,:);
    temp = find(B==1);
    for j = 1:1:length(temp) 
        mid = temp(j);
        while mid>1
            if A(i+1,mid-1) == 1
                B(mid-1) = 1;
                mid = mid - 1;
            else
                mid = 1;
            end            
        end
        mid = temp(j);
        while mid<10
            if A(i+1,mid+1) == 1
                B(mid+1) = 1;
                mid = mid + 1;
            else
                mid = 10;
            end
        end
    end
end
output_args = norm(B,inf);