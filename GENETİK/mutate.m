function mutated_child = mutate(child, mutation_rate)
    % Mutasyon oranıyla karşılaştırılmak üzere çocuk turunu kopyala
    mutated_child = child;
    
    % Çocuk turunun her bir elemanı için döngü
    for i = 1:length(child)
        % Rastgele bir sayı oluştur ve mutasyon oranı ile karşılaştır
        if rand < mutation_rate
            % Eğer mutasyon oranından küçükse, o zaman mutasyon uygula
            
            % Mutasyon uygulanacak indis
            j = randi(length(child));
            
            % İlgili indislerdeki değerleri birbirleriyle yer değiştir
            temp = mutated_child(i);
            mutated_child(i) = mutated_child(j);
            mutated_child(j) = temp;
        end
    end
end
