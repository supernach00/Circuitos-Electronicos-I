clc
% Rmin= 1k, y11=1E-3 // Rmax = 48k, y11= 20.83E-6
R_f = "max";
if R_f == "min"
    y11 = 1E-3;
elseif R_f == "max"
    y11 = 28E-6;  
end
Zout = 560;
Zin = 13.2E3;
Avla = -112.26;

% Calculando los valores necesarios
beta = -y11;
y22 = y11;
Azla = Avla * Zin;
Azcargado = Azla / ((1 + y22 * Zout) * (1 + y11 * Zin));
Zinc = paralelo(Zin, y11^-1);
Zinr = Zinc / (1 + (beta * Azcargado));
Azr = Azcargado / (1 + beta * Azcargado);
Avr = Azr / Zinr;
Avfinal = Avr*(paralelo(10,Zinr))/(100+paralelo(10,Zinr));

% Crear tabla con todas las variables incluyendo Avfinal
resultados = table(y11, Zout, Zin, Avla, beta, y22, Azla, Azcargado, Zinr, Azr, Avr, Avfinal, ...
    'VariableNames', {'y11', 'Zout', 'Zin', 'Avla', 'beta', 'y22', 'Azla', 'Azcargado', 'Zinr', 'Azr', 'Avr', 'Avfinal'});

% Mostrar tabla
disp(resultados);


