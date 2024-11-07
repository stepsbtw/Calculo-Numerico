# compare convergence and iterations between methods.

% Ex 1
A = [3 -1 -1; 1  5  1; 1  1  7];
b = [-2; 14; 24];

disp('--EXAMPLE 1--')
disp('SEIDEL:')
gauss_seidel(A, b);
disp('JACOBI:')
gauss_jacobi(A, b);
disp('')


% Ex 2
A = [1  5  1; 0 -1 -1; 1  1  7];
b = [14; -2; 24];

disp('--EXAMPLE 2--')
disp('SEIDEL:')
gauss_seidel(A, b);
disp('JACOBI:')
gauss_jacobi(A, b);
disp('')

% Ex 3
A = [1  1; 1 -3];
b = [3; -3];

disp('--EXAMPLE 3--')
disp('SEIDEL:')
gauss_seidel(A, b);
disp('JACOBI:')
gauss_jacobi(A, b);
disp('')

% Ex 4
A = [7 4 3 5 8; 0 4 8 5 2; 6 9 9 4 6; 0 9 9 7 0; 9 9 8 0 3];
b = [84; 62; 97; 73; 66];

disp('--EXAMPLE 4--')
disp('SEIDEL:')
gauss_seidel(A, b);
disp('JACOBI:')
gauss_jacobi(A, b);
disp('')
