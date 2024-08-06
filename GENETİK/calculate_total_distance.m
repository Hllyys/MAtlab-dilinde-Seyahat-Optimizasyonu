function total_distance = calculate_total_distance(tour, distance_matrix)
% calculate_total_distance fonksiyonu, bir turun toplam mesafesini hesaplar.
% tour: Bir turu temsil eden vektör. Her bir eleman, bir şehrin indisini belirtir.
% distance_matrix: Şehirler arasındaki mesafeleri içeren matris.

num_cities = length(tour); % Turdaki şehir sayısı
total_distance = 0; % Toplam mesafeyi saklamak için değişken

% Tüm şehirler arasındaki mesafeyi hesapla
for i = 1:num_cities - 1
    city1 = tour(i); % Başlangıç şehri
    city2 = tour(i + 1); % Hedef şehir
    total_distance = total_distance + distance_matrix(city1, city2); % Şehirler arasındaki mesafeyi toplam mesafeye ekle
end

% Dairesel tur olduğu için ilk şehirden son şehre olan mesafeyi ekle
total_distance = total_distance + distance_matrix(tour(end), tour(1));

end
