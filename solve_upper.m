# solves the upper triangular matrix
function x = solve_upper (U, b)
  n = length(b); x = zeros(n,1);

  for i= n:-1:1 # from last line to first
    x(i) = b(i);
    for j = i+1:-1:n # from next column
      x(j) = x(i) - U(i,j) * x(j);
    endfor
    x(i) = x(i) / U(i,i) # divide by "pivot"
  endfor

endfunction
