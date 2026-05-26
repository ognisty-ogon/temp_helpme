% Na płaszczyźnie znajdują się punkty:
% A1(2,5), A2(3,10), A3(4,9) oraz B1(4,3), B2(5,6), B3(6,4), B4(7,7), B5(9,8)

% Polecenia:
% a) Narysuj ich rozmieszczenie na płaszczyźnie (matlab) i rozstrzygnij, czy punkty można sklasyfikować jednoznacznie za pomocą jednego perceptronu. Odpowiedź uzasadnij?
% b) Jeżeli punkty można sklasyfikować, zaprojektuj sieć, która dokona tej klasyfikacji i ustaw wartości wag i biasu (matlab).
% c) Narysuj linię decyzyjną sieci.

% --- ZADANIE 1 (Wariant C) ---

% Definiujemy zbiory punktów
% Klasa A (przyjmujemy wartość docelową / target = 1)
A = [2, 3, 4;
    5, 10, 9]; 

% Klasa B (przyjmujemy wartość docelową / target = 0)
B = [4, 5, 6, 7, 9;
    3, 6, 4, 7, 8];

% Łączymy zbiory do macierzy wejść (P) i wektora celów (T)
P = [A, B];
T = [ones(1, size(A,2)), zeros(1, size(B,2))];

% a) Narysuj ich rozmieszczenie na płaszczyźnie
figure;
plot(A(1,:), A(2,:), 'ro', 'MarkerFaceColor', 'r'); hold on;
plot(B(1,:), B(2,:), 'bo', 'MarkerFaceColor', 'b');
grid on;
title('Zadanie 1: Rozmieszczenie punktów i linia decyzyjna');
legend('Klasa A', 'Klasa B');
% Odp: Na wykresie będzie widać, że punkty są liniowo separowalne, 
% co uzasadnia użycie jednego perceptronu.

% b) Zaprojektuj sieć i ustaw wartości wag i biasu
net = perceptron;
net = configure(net, P, T);
net.trainParam.epochs = 100; % Ustawiamy maksymalną liczbę epok
net = train(net, P, T);      % Sieć sama uczy się optymalnych wag

w = net.IW{1,1}; % Wagi wyuczonej sieci
b = net.b{1};    % Bias wyuczonej sieci

disp('--- ZADANIE 1 ---');
disp('Wyuczone wartości:');
disp(['Wagi (w1, w2): ', num2str(w)]);
disp(['Bias (b): ', num2str(b)]);

% c) Narysuj linię decyzyjną
plotpc(w, b);
hold off;
