

% Laplacian with weighted edges and loops at node 1 2 4 and 5 of edge
% weights 1


%    .8
% 2 ---- 3 
% |      | \.9
% |.2 .7 |   5
% |      | /.1
% 1 ---- 4
%    .5

% adjacent matrix inlcudes weight and loops
A = [0 .2 0 .5 0;
     .2 0 .8 0 0;
     0 .8 0 .7 .9;
     .5 0 .7 0 .1;
     0 0 .9 .1 0];

% degree matrix
D = diag(sum(A))

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
P = inv(D)*A;
I = eye(5);
L = I - P;

disp(L)

