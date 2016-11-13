results = zeros(1,100);
n = 5000000;
for input = 1:1:100;    
    sum = 0;
    for i = 1:1:n
        sum = sum + xuxin_membrane_with_hole(input);
    end
    chance = sum/n;
    results(1,input) = chance;
    input
end
plot(results)