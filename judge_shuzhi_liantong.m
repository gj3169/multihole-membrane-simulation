function [ output_args ] = judge_shuzhi_liantong( input_args )
%�жϸþ�����ֱ�����Ƿ���ͨ
%   ����һ��10*10�ľ���1����ڷ����жϺڷ����Ƿ�������ֱ������ͨ
A = input_args;
B = A(1,:);
for i = 1:1:9 %����ÿ�з��������ĺڷ���Ҳ���ǡ�1����λ�ã�����B��һ���м�����
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