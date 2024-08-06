function selected = selection(population, fitness_values, tournament_size)
% selection fonksiyonu, turnuva seçimi kullanarak bir ebeveyn seçer.
% population: Popülasyon matrisi. Her bir satır, bir turu temsil eder.
% fitness_values: Popülasyonun her bir bireyinin fitness değerlerini içeren sütun vektörü.
% tournament_size: Turnuva büyüklüğü, yani her bir turnuvada kaç bireyin yarışacağı.

% Turnuva boyutunda rastgele bir grup birey seç
tournament = randi(size(population, 1), tournament_size, 1);

% Seçilen turnuvanın fitness değerlerini alarak en iyi fitness değerine sahip bireyi bul
[~, best_index] = min(fitness_values(tournament));

% En iyi fitness değerine sahip bireyi seç
selected = population(tournament(best_index), :);
end
