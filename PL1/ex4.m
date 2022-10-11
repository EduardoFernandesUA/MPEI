espacoAmostragem = [20,40,100];
results = zeros(100,3);
fprintf("Start %d\n", size(espacoAmostragem,2))
for i = 1:size(espacoAmostragem,2)
    
    for j=1:espacoAmostragem(i)
        results(j,i) = probSimulacao(0.5,espacoAmostragem(i),j,1000);
    end
    
end

stem(results)

%prob20 = probSimulacao(0.5,15,8,1000)
%prob40 = probSimulacao(0.5,15,8,1000)