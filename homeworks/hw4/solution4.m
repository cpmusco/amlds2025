trials = 100;
s = 0;
for t= 1:trials

n = 900;
k = 30;
A = zeros(n,n);
for i = 1:n
    for j = i:n
        y = rand();
        if(y < .1)
            A(i,j) = 1;
            A(j,i) = 1;
        end
    end
end
A(1:30,1:30) = 1;
[v,lambda] = eigs(A,1);

[vals,ind] = sort(abs(v),'descend');
top = ind(1:30);
s = s + sum(top <= 30);
end
s/trials