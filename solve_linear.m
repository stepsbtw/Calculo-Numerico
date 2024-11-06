# solves Ax = b
function x = solve_linear (A, b)
  U = gauss_elim(A)
  x = solve_upper(U, b)
endfunction
