function nullstelle = Newton_Verfahren(x0, toleranz)
    % Funktion f(x) definieren
    f = @(x) x^3 + 3^x;
    % Ableitung von f(x) definieren
    f_prime = @(x) 3*x^2 + 3^x*log(3);
    fx=f(x0);
    % Newton-Verfahren durchführen
    while abs(fx) > toleranz
        fx=f(x0);
        x_next = x0 - fx / f_prime(x0);
        x0 = x_next;
    end
    nullstelle = x0;
end