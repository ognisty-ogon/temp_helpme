% Sieci neuronowej z progową funkcją bipolarną użyto do klasyfikacji punktów w przestrzeni R^2. Do klasy (decyzyjnej) "d = 1" należy punkt X. Zakładając, że:
% 
%  w0 = [-1, -2], bias b = -2 i X(1,3); (zaznaczony wariant)
% 
% Polecenia:
% a) wyznacz sygnał wyjściowy dla wektora wejściowego [1,2].
% b) używając perceptronowej reguły uczenia przeprowadź jeden cykl uczenia dla wektora [1,2].
% c) jaki jest błąd sieci przed i po uczeniu?

% --- ZADANIE 3 (Wariant E) ---

% Dane początkowe
w0 = [-1, -2];       % Wektor wag (jako wektor wierszowy)
b0 = -2;             % Bias początkowy
X = [1; 2];          % Badany wektor wejściowy (kolumnowy)
eta = 1;             % Współczynnik uczenia (domyślnie 1)
d = 1;               % Oczekiwana wartość wyjściowa (założenie)

% Progowa bipolarna funkcja aktywacji
% Jeśli v >= 0 zwraca 1, w przeciwnym razie -1
bipolar = @(v) (v >= 0) * 1 + (v < 0) * -1;

% a) Wyznacz sygnał wyjściowy przed uczeniem
v_przed = w0 * X + b0;
y_przed = bipolar(v_przed);

disp('--- ZADANIE 3 ---');
disp(['a) Sygnał wyjściowy dla X=[1,2]: y = ', num2str(y_przed)]);

% Obliczenie błędu przed uczeniem (potrzebne do b i c)
blad_przed = d - y_przed; 

% b) Jeden cykl uczenia regułą perceptronową
% Reguła: W_nowe = W_stare + eta * blad * X^T
w1 = w0 + eta * blad_przed * X';
b1 = b0 + eta * blad_przed;

disp('b) Nowe wagi i bias po jednym cyklu uczenia:');
disp(['   Wagi: ', num2str(w1)]);
disp(['   Bias: ', num2str(b1)]);

% c) Błąd sieci przed i po uczeniu
% Sprawdzamy odpowiedź sieci po aktualizacji wag
v_po = w1 * X + b1;
y_po = bipolar(v_po);
blad_po = d - y_po;

disp('c) Porównanie błędów:');
disp(['   Błąd PRZED uczeniem: ', num2str(blad_przed)]);
disp(['   Błąd PO uczeniu: ', num2str(blad_po)]);
