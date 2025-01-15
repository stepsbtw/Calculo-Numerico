function zero = zero_bissec(f, a, b, tol)
  % tol -> limitante do erro
  if f(a)*f(b) >= 0
    fprintf("os limites nao possuem sinais opostos, nao posso garantir que existe zero da funcao entre eles.")
    return
  end

  while((b-a)/2 > tol)
    m = (a+b)/2;

    if abs(f(m)) < tol
      break;
    endif

    if f(m)*f(a) < 0
      b = m; % o zero esta entre [a,m]
    elseif f(m)*f(b) < 0
      a = m; % o zero esta entre [m,b]
    endif

  end
  zero = (a+b)/2;
  fprintf("a raíz aproximada da funcao é: %.6f\n",zero);
end
