 

% Laplacian with weighted edges


%    .8
% 2 ---- 3 
% |      | \.9
% |.2 .7 |   5
% |      | /.1
% 1 ---- 4
%    .5

% adjacent matrix includes weight and loops
A = [1 .2 0 .5 0;
     .2 0 .8 0 0;
     0 .8 1 .7 .9;
     .5 0 .7 0 .1;
     0 0 .9 .1 1];

% degree matrix
D = diag(sum(A));

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

% intial condition 

u0 = [0 0 1 0 0]';

% coefficients

n = length(u0);     
a = zeros(n, 1);

for j = 1:n 
v_j = V(:, j);

a(j) = dot(v_j, u0)/norm(v_j)^2;

end

t = linspace(0,1,100);
u_t = zeros(n,length(t));

for j = 1:length(t)
    u_sum = zeros(n,1);  
    
    for k = 1:n
        lambda_k = D(k,k);
        v_k = V(:,k);
        u_sum = u_sum + a(k) * exp(-lambda_k * t(j)) * v_k;
    end

    u_t(:,j) = u_sum;  % Store result
end

figure;
hold on;

for i = 1:n
    plot(t, u_t(i,:));
end
