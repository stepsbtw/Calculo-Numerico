function x = gauss_seidel (A, b)
  n = size(A,2); max_iters = 1000; epsilon = 10^(-8);

  # dominant diagonal is a good starting point. diag(A) -> 'pivots'
  x = b ./ diag(A);

  # convergence criteria : sassenfeld
  beta = zeros(n,1);
  for i = 1:n
    s = 0;
    for j = 1:n
      if i ~= j
        if j < i
          s = s + abs(A(i,j)) * beta(j);
        else
          s = s + abs(A(i,j));
        endif
      endif
    endfor
    beta(i) = s / abs(A(i,i));
  endfor

  if max(beta) < 1
    disp('Convergence criteria satisfied!')
  else
    disp('Convergence criteria NOT satisfied, but it can still converge.')
  endif

  for k = 0:max_iters

    for i = 1:n
      s = 0;
      for j = 1:n
        if i ~= j
          s = s + A(i,j) * x(j);
        endif
      endfor
      x(i) = (b(i) - s)/ A(i,i);
    endfor

    if norm(A*x-b, inf) < epsilon
      fprintf('Converged! In %d iterations.\n',k)
      disp(x)
      return
    endif

  endfor

  fprintf('Did not converge in %d iterations.\n',max_iters)

endfunction
