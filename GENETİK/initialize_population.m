% Başlangıç popülasyonunu oluşturma fonksiyonu
function population = initialize_population(population_size, num_locations)
    % Boş bir popülasyon matrisi oluştur
    population = zeros(population_size, num_locations);
    
    % Her bir birey için rastgele bir sıralama oluştur
    for i = 1:population_size
        population(i, :) = randperm(num_locations);
    end
end
