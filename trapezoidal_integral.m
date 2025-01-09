function [integral, n] = trapezoidal_integral(f, a, b, tol)
    n = 1;
    h = (b - a);
    integral_old = h * (f(a) + f(b)) / 2;
    iterations = 0;
    error = inf; % começando bem

    while error > tol
        n = n * 2;
        h = (b - a) / n;
        x = a + h * (1:2:n-1); % pulando de dois em dois (pontos médios)

        integral = integral_old / 2 + h * sum(f(x)); % x é uma lista

        error = abs(integral - integral_old);
        integral_old = integral;
   end 
end
