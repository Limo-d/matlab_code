% Schrittweite festlegen
h = 0.1;

% Auswertungspunkt
x0 = 0.6;



% Ausgabe der Loesung am Punkt x0
sol1 =(f(x0+h)-f(x0))/h;
sol2 = abs(sol1-df(x0));
function funktionswert= f(x)
   funktionwert = (x ./ (1 + x)).^5;
end

function ableitung = df(x)
   ableitung = (5 * x.^4) ./ (1 + x).^6;;
end