# solves the upper triangular matrix
function x = solve_upper (U, b)
  n = length(b); x = zeros(n,1);

  for i= n:-1:1
    x(i) = b(i) / U(i,i);
    for j = i:-1:1
      x(j) = (b(j) - U(i,j) * x(i)) / U(i,i)

    endfor
  endfor

endfunction
