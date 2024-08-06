function [child1, child2] = crossover(parent1, parent2)
    % Ebeveynlerin uzunluğunu al
    len = length(parent1);

    % Rastgele iki çaprazlama noktası seç
    point1 = randi(len-1);
    point2 = randi([point1+1, len]);

    % Çocuklar için boş diziler oluştur
    child1 = zeros(1, len);
    child2 = zeros(1, len);

    % Çocukların ortasına ebeveynlerden segment kopyala
    child1(point1:point2) = parent1(point1:point2);
    child2(point1:point2) = parent2(point1:point2);

    % Kalan genleri ekle
    child1 = fillOX(child1, parent2, point1, point2);
    child2 = fillOX(child2, parent1, point1, point2);
end

function child = fillOX(child, parent, point1, point2)%point1 ve point2: OX yönteminde kullanılan iki kesme noktasını belirten indisler.
    len = length(child);
    % Kalan genleri eklemek için indeks bul
    current_index = mod(point2, len) + 1;
    
    for i = 1:len
        % Ebeveynin genini kontrol et
        gene = parent(mod(point2 + i - 1, len) + 1);
        % Gen zaten çocukta yoksa ekle
        if ~ismember(gene, child)
            child(current_index) = gene;
            current_index = mod(current_index, len) + 1;
        end
    end
end
