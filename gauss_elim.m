# transforms matrix into upper matrix
function upper = gauss_elim (A)
  n = size(A,1);

  for j = 1:n-1 # every column but not last one
    for i = i+1:n # pivot from next line
      M = A(i,j)/A(j,j);
      for k = j:n # every element in line
        A(i,k) = A(i,k) - M(i,k) * A(j,k);

      endfor
    endfor
  endfor

  upper = A
endfunction
