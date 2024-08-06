function genetic_algorithm()
% Kullanıcıya hangi veri setinin kullanılmasını istediğini sor
prompt = 'Kullanmak istediğiniz veri seti: (1) Kis Turizmi, (2) Doğa, (3) Tarihi Deger Turizmi, (4) Gastronomi Turizmi, (5) Termal Turizm: ';
user_input = input(prompt);

% Veri setini seç
if user_input == 1

    load('kis_turizmi.mat','data_set');

elseif user_input == 2

    load('doga.mat','data_set');
elseif user_input == 3
    data_set = [
        0.0     693.0   1508.0  1293.0  1348.0  1241.0  545.0   698.0   60.0    693.0   1574.0  147.0;
        693.0   0.0     1190.0  1001.0  1079.0  959.0   712.0   563.0   682.0   20.0    1383.0  534.0;
        1508.0  1190.0  0.0     193.0   178.0   280.0   1692.0  1659.0  1523.0  1512.0  444.0   1356.0;
        1293.0  1001.0  193.0   0.0     154.0   159.0   1502.0  1487.0  1248.0  1322.0  536.0   1166.0;
        1348.0  1079.0  178.0   154.0   0.0     154.0   1582.0  1574.0  1306.0  1402.0  397.0   1246.0;
        1241.0  959.0   280.0   159.0   154.0   0.0     1466.0  1453.0  1187.0  1286.0  513.0   1130.0;
        545.0   712.0   1692.0  1502.0  1582.0  1466.0  0.0     200.0   540.0   330.0   1883.0  491.0;
        698.0   563.0   1659.0  1487.0  1574.0  1453.0  200.0   0.0     654.0   180.0   1865.0  559.0;
        60.0    682.0   1523.0  1248.0  1306.0  1187.0  540.0   654.0   0.0     475.0   1699.0  281.0;
        693.0   20.0    1512.0  1322.0  1402.0  1286.0  330.0   180.0   475.0   0.0     1702.0  419.0;
        1574.0  1383.0  444.0   536.0   397.0   513.0   1883.0  1865.0  1699.0  1702.0  0.0     1517.0;
        147.0   534.0   1356.0  1166.0  1246.0  1130.0  491.0   559.0   281.0   419.0   1517.0  0.0
        ];
    % .mat dosyasına kaydet
    save('tarihi_deger.mat', 'data_set');
    load('tarihi_deger.mat','data_set');
elseif user_input == 4
    data_set = [
        0.0     161.0   310.0   898.0   330.0   151.0   749.0   822.0   656.0   1030.0  779.0;
        168.0   0.0     218.0   853.0   495.0   396.0   799.0   711.0   763.0   1128.0  519.0;
        252.0   216.0   0.0     703.0   346.0   394.0   893.0   627.0   856.0   979.0   456.0;
        770.0   724.0   570.0   0.0     495.0   911.0   1032.0  288.0   1133.0  293.0   215.0;
        330.0   400.0   324.0   497.0   0.0     682.0   578.0   569.0   632.0   664.0   304.0;
        151.0   323.0   394.0   912.0   474.0   0.0     670.0   964.0   491.0   1172.0  701.0;
        748.0   818.0   769.0   1027.0  549.0   666.0   0.0     1111.0  261.0   1129.0  846.0;
        822.0   776.0   623.0   284.0   567.0   964.0   1114.0  0.0     1200.0  549.0   266.0;
        622.0   764.0   865.0   1159.0  632.0   490.0   262.0   1198.0  0.0     1262.0  933.0;
        1032.0  986.0   833.0   293.0   667.0   1174.0  1121.0  548.0   1261.0  0.0     482.0
        ];
    % .mat dosyasına kaydet
    save('gastronomi.mat', 'data_set');
    load('gastronomi.mat','data_set');
elseif user_input == 5
    data_set = [
        0.0     274.0   276.0   488.0   337.0   614.0   484.0   161.0   494.0   529.0   544.0   397.0   657.0   380.0   184.0   307.0;
        274.0   0.0     199.0   145.0   318.0   368.0   249.0   244.0   381.0   721.0   311.0   206.0   489.0   573.0   114.0   251.0;
        276.0   199.0   0.0     372.0   144.0   437.0   366.0   169.0   226.0   756.0   414.0   152.0   397.0   638.0   99.0    429.0;
        488.0   145.0   372.0   0.0     497.0   257.0   6.0     479.0   371.0   868.0   98.0    232.0   450.0   736.0   341.0   395.0;
        337.0   318.0   144.0   497.0   0.0     426.0   496.0   192.0   209.0   841.0   546.0   267.0   386.0   720.0   201.0   530.0;
        614.0   368.0   437.0   257.0   426.0   0.0     241.0   563.0   297.0   1031.0  204.0   272.0   316.0   910.0   437.0   582.0;
        484.0   249.0   366.0   6.0     496.0   241.0   0.0     483.0   360.0   872.0   83.0    218.0   445.0   740.0   345.0   399.0;
        161.0   244.0   169.0   479.0   192.0   563.0   483.0   0.0     349.0   683.0   529.0   318.0   520.0   535.0   125.0   438.0;
        494.0   381.0   226.0   371.0   209.0   297.0   360.0   349.0   0.0     987.0   403.0   224.0   167.0   844.0   319.0   633.0;
        529.0   721.0   756.0   868.0   841.0   1031.0  872.0   683.0   987.0   0.0     947.0   886.0   1148.0  187.0   695.0   498.0;
        544.0   311.0   414.0   98.0    546.0   204.0   83.0    529.0   403.0   947.0   0.0     257.0   475.0   805.0   426.0   457.0;
        397.0   206.0   152.0   232.0   267.0   272.0   218.0   318.0   224.0   886.0   257.0   0.0     320.0   742.0   241.0   429.0;
        657.0   489.0   397.0   450.0   386.0   316.0    445.0   520.0   167.0   1148.0  475.0   320.0   0.0     1003.0  479.0   733.0;
        380.0   573.0   638.0   736.0   720.0   910.0   740.0   535.0   844.0   187.0   805.0   742.0   1003.0  0.0     562.0   357.0;
        184.0   114.0   99.0    341.0   201.0   437.0   345.0   125.0   319.0   695.0   426.0   241.0   479.0   562.0   0.0     360.0;
        307.0   251.0   429.0   395.0   530.0   582.0   399.0   438.0   633.0   498.0   457.0   429.0   733.0   357.0   360.0   0.0
        ];
    % .mat dosyasına kaydet
    save('termal.mat', 'data_set');
    load('termal.mat','data_set');

else
    disp('Geçersiz veri seti seçimi.');
    return;
end



% Genetik algoritma parametreleri
population_size =10;
num_generations = 50;
mutation_rate = 0.001;
tournament_size = 10;
elitism_rate = 0.1; % Elitizm oranı

% Popülasyonu başlat
population = initialize_population(population_size, size(data_set, 1));

% En iyi turu sakla
best_tour = [];
best_fitness = inf;


results = zeros(num_generations, 6); % [Nesil, En İyi Fitnes, Ortalama Fitnes, Standart Sapma, Min Fitnes, Max Fitnes]



% Nesil döngüsü
for generation = 1:num_generations
    % Fitnes hesapla
    fitness_values = calculate_fitness(population, data_set);

    % En iyi turu güncelle
    [min_fitness, min_index] = min(fitness_values);
    if min_fitness < best_fitness
        best_fitness = min_fitness;
        best_tour = population(min_index, :);
    end

    % Elitizm: En iyi bireyleri sakla
    num_elites = round(elitism_rate * population_size); % Elitizm oranını popülasyon boyutuyla çarp ve en yakın tam sayıya yuvarla
    [~, sorted_indices] = sort(fitness_values); % Fitnes değerlerini küçükten büyüğe sırala ve indisleri al
    elites = population(sorted_indices(1:num_elites), :); % En iyi bireyleri sakla: sıralanmış indislerden ilk num_elites kadarını al ve popülasyondan ilgili bireyleri seç

    % Yeni popülasyonu başlat
    new_population = zeros(size(population));

    % Elitizmi yeni popülasyona ekle
    new_population(1:num_elites, :) = elites;

    % Seçim, çaprazlama ve mutasyon
    for i = num_elites+1:2:population_size
        parent1 = selection(population, fitness_values, tournament_size); % Ebeveyn 1'i seç: Turnuva seçimi kullanarak birinci ebeveyni seç
        parent2 = selection(population, fitness_values, tournament_size); % Ebeveyn 2'yi seç: Turnuva seçimi kullanarak ikinci ebeveyni seç

        child1 = crossover(parent1, parent2); % Çaprazlama: İki ebeveyn arasında çaprazlama gerçekleştir ve ilk çocuğu oluştur
        child2 = crossover(parent2, parent1); % Çaprazlama: İki ebeveyn arasında çaprazlama gerçekleştir ve ikinci çocuğu oluştur

        child1 = mutate(child1, mutation_rate); % Mutasyon: Çocuğun genlerini mutasyona uğrat
        child2 = mutate(child2, mutation_rate); % Mutasyon: Çocuğun genlerini mutasyona uğrat

        new_population(i, :) = child1; % Yeni popülasyona ilk çocuğu ekle
        new_population(i+1, :) = child2; % Yeni popülasyona ikinci çocuğu ekle
    end


    % Yeni popülasyonu güncelle
    population = new_population;
    fitness_values = calculate_fitness(population, data_set);
% Fitnes değerlerini hesapla ve göster
        fitness_values = calculate_fitness(population, data_set);
        max_fitness = max(fitness_values);
        mean_fitness = mean(fitness_values);
        std_fitness = std(fitness_values);

        % Sonuçları kaydet
        results(generation, :) = [generation, min_fitness, mean_fitness, std_fitness, min(fitness_values), max(fitness_values)];

        % İterasyon bilgilerini göster
        disp(['Nesil: ', num2str(generation), ', En İyi Fitnes: ', num2str(min_fitness), ', Ortalama Fitnes: ', num2str(mean_fitness), ', Standart Sapma: ', num2str(std_fitness)]);
        disp(['Min Fitnes: ', num2str(min(fitness_values)), ', Max Fitnes: ', num2str(max(fitness_values))]);
    end

    % En iyi bireyi göster
    disp('En iyi birey:');
    disp(best_tour);
    disp(['En iyi bireyin fitnesi: ', num2str(best_fitness)]);

    % Sonuçları Excel dosyasına yaz
    filename = 'genetic_algorithm_results5.xlsx';
    headers = {'Generation', 'Best Fitness', 'Mean Fitness', 'Standard Deviation', 'Min Fitness', 'Max Fitness'};
    xlswrite(filename, headers, 1, 'A1');
    xlswrite(filename, results, 1, 'A2');
    disp(['Sonuçlar ', filename, ' dosyasına kaydedildi.']);
end