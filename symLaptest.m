% Laplacian with weighted edges


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
     .5 0 .7 0.9 .1;
     0 0 .9 .1 0];

f = [.5 0 0 0 0;
      0 .7 0 0 0;
      0 0 .9 0 0;
      0 0 0 .3 0;
      0 0 0 0 .1];
F = diag(f)

% degree matrix
D = diag(sum(A,2));
D_invsqrt = diag(1 ./ sqrt(D));
L = (eye(5) - D_invsqrt.*A.*D_invsqrt).*(eye(5)- F)

