# transforms matrix into upper matrix
function upper = gauss_elim (A)
  n = size(A,1);

  for i = 1:n # every line
    for j = i:n # pivot
      M = A(i,j)/A(j,j);
      for k = j:n # every element in line
        A(i,k) = A(i,k) - M(i,k) * A(j,k);

      endfor
    endfor
  endfor

  upper = A
endfunction
