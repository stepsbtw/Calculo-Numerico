function interpol = interpol(x,y) % x e y colunas!
  n = length(x)-1; % grau do polinomio
  V = ones(n,1);
  for i = 1:n
    V = horzcat(V, x.^i);
  end
  a = linsolve(V,y);
  interpol = flip(a); % coeficientes do maior pro menor
end
