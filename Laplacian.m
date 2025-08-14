

% Laplacian with weighted edges


%    .8
% 2 ---- 3 
% |      | \.9
% |.2 .7 |   5
% |      | /.1
% 1 ---- 4
%    .5

% adjacent matrix inlcudes weight and loops
A = [.1 .2 0 .5 0;
     .2 0 .8 0 0;
     0 .8 .2 .7 .9;
     .5 0 .7 0.9 .1;
     0 0 .9 .1 0.8];

% degree matrix
D = diag(sum(A,2));

%Laplacian

L = D - A;
disp("laplacian Matrix:")
disp(L)

%eignevalues and vectors
[V,D] = eig(L);

disp('diagonal matrix of eigenvalues:');
disp(diag(D));

disp('Eigenvectors:');
disp(V);


% Laplacian random walk test 

% L_rw = [1/2    -1/4     0      -1/4     0;
%        -3/20    3/10   -3/20    0       0;
%         0    -1/30     1/10  -1/30   -1/30;
%       -7/30     0     -7/30    7/10   -7/30;
%         0       0     -9/20  -9/20    9/10 ];
% 
% 
% disp(L_rw)
% 
% [V, D] = eig(L_f); 
% 
% disp('Eigenvalues:')
% disp(diag(D))
% 
% disp('Eigenvectors (columns):')
% disp(V)



