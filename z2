% Dana jest sieć neuronowa z sigmoidalną funkcją aktywacji. Wyznacz (matlab) sygnały wyjściowe, jeżeli wektor wejściowy ma postać:
% 
% X = [1 2]^T oraz b11 = -2; b12 = 3 
% 
% (Do zadania dołączony jest schemat sieci. Warstwa wejściowa ma 2 wezły x1, x2. Warstwa ukryta ma 2 neurony. Warstwa wyjściowa ma 3 neurony y1, y2, y3. Wagi są przypisane do odpowiednich połączeń, a biasy do neuronów wyjściowych).


% --- ZADANIE 2 (Wariant A) ---

% Wektor wejściowy
X = [1; 2];

% Wektory biasów (podane w wariancie A oraz odczytane dla warstwy 2)
b11 = -2;
b12 = 3;
B1 = [b11; b12];     % Warstwa ukryta
B2 = [-1; 2; -1];    % Warstwa wyjściowa

% Macierze wag (odczytane z rysunku grafu)
W1 = [1.5, 0.5;      % Do neuronu górnego
    -2.0, 2.0];     % Do neuronu dolnego

W2 = [-1,  2;        % Do y1
    -1,  0;        % Do y2
    0,  3];       % Do y3

% Definicja sigmoidalnej funkcji aktywacji (unipolarna)
% Matlab ma wbudowaną funkcję logsig(), ale możemy napisać własną anonimową:
sigmoid = @(v) 1 ./ (1 + exp(-v));

% Obliczenia dla warstwy ukrytej (potencjał V1 i wyjście U)
V1 = W1 * X + B1;
U = sigmoid(V1);

% Obliczenia dla warstwy wyjściowej (potencjał V2 i ostateczne wyjście Y)
V2 = W2 * U + B2;
Y = sigmoid(V2);

disp('--- ZADANIE 2 ---');
disp('Sygnały wyjściowe (y1, y2, y3):');
disp(Y);
