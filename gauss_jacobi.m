function x = gauss_jacobi (A, b)
  n = size(A,2); max_iters = 1000; epsilon = 10^(-8);

  # dominant diagonal is a good starting point. diag(A) -> 'pivots'
  x = b ./ diag(A);

  # convergence criteria of the lines : jacobi
  greater = 0;
  for i = 1:n
    s = 0;
    for j = 1:n
      if i ~= j
        s = s + abs(A(i,j));
      endif
    endfor
    alpha = s / abs(A(i,i));
    greater = max(greater,alpha);
  endfor

  if max(alpha) < 1
    disp('Convergence criteria satisfied!')
  else
    disp('Convergence criteria NOT satisfied, but it can still converge.')
  endif

  for k = 1:max_iters

    aux = x;
    for i = 1:n
      s = 0;
      for j = 1:n
        if i ~= j
          s = s + A(i,j) * aux(j);
        endif
      endfor
      x(i) = (b(i) - s)/ A(i,i);
    endfor

    if norm(x - aux, inf) < epsilon
      fprintf('Converged in %d iterations.\n',k)
      disp(x);
      return;
    endif

  endfor
  fprintf('Did not converge in %d iterations.\n',max_iters)

endfunction
