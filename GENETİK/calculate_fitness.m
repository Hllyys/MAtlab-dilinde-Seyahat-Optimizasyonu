function fitness = calculate_fitness(population, distance_matrix)
% calculate_fitness fonksiyonu, her bir popülasyon bireyinin fitness değerini hesaplar.
% population: Popülasyon matrisi. Her bir satır, bir turu temsil eder.
% distance_matrix: Şehirler arası mesafe matrisi.
% fitness: Popülasyonun her bir bireyinin fitness değerlerini içeren bir sütun vektörü.

% Popülasyon boyutunu al
pop_size = size(population, 1);

% Fitness değerlerini tutmak için bir sütun vektörü oluştur
fitness = zeros(pop_size, 1);

% Her bir birey için fitness değerini hesapla
for i = 1:pop_size
    % İlgili turu al
    tour = population(i, :);
    
    % Turun başlangıçından bitişine kadar olan mesafeyi hesapla
    tour_distance = 0;
    for j = 1:length(tour) - 1
        % Şu anki şehirden bir sonraki şehre olan mesafeyi topla
        tour_distance = tour_distance + distance_matrix(tour(j), tour(j+1));
    end
    
    % Son şehirden başlangıç şehrine olan mesafeyi ekle (döngüyü tamamla)
    tour_distance = tour_distance + distance_matrix(tour(end), tour(1));
    
    % Bu turun fitness değerini atayın
    fitness(i) = tour_distance;
end
end
