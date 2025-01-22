n = 100;
A = zeros(n,n);
p = .1;
q = .01;
for i = 1:50
    for j = i:50
        A(i,j) = (rand < p);
        A(j,i) = A(i,j);
    end
    for j = 51:100
        A(i,j) = (rand < q);
        A(j,i) = A(i,j);
    end
end
for i = 51:100
    for j = i:100
        A(i,j) = (rand < p);
        A(j,i) = A(i,j);
    end
end
spy(A);

p = randperm(n);
spy(A(p,p));