function integral = simpson_integral(f, a, b, tol)
    n = 2; % somente subintervalos pares
    erro = inf;
    I_ant = 0;
    
    while erro > tol
        h = (b - a) / n;
        x = a:h:b;
        I = h/3 * (y(a) + 4 * sum(y(2:2:end-1)) + 2 * sum(y(3:2:end-2)) + y(b));

        erro = abs(I - I_ant) / 15;
        I_ant = I; 
        n = n * 2; 
    end
end
