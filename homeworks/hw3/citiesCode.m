UScities = csvread('UScities.csv')
D = UScities.^2;
for i = 1:20
    for j = i:20
        if(rand()<.1)
            D(i,j) = 0;
            D(j,i) = 0;
        end
    end
end

n = size(D,1);
normSum = sum(sum(D))/(2*n);
norms = (sum(D) - normSum)/n;
F = -.5*(D - ones(n,1)*norms - norms'*ones(1,n));
[U,S] = svds(F,2)
X = U*sqrt(S);

scatter(-X(:,1),-X(:,2))
L = {'Boston','Buffalo','Chicago','Dallas','Denver','Houston','Los Angeles','Memphis','Miami','Minneapolis', 'New York','Omaha','Phila','Phoenix','Pitt','St Louis', 'SLC', 'San Fran','Seattle','D.C.'};
dx = 0.1; dy = 0.1;
text(-X(:,1)+dx, -X(:,2)+dy, L);
xlim([-2000,2000])
ylim([-2000,2000])

X = rand(n,2)
for i = 1:n
    for j = 1:n
        D(i,j) = norm(X(i,:) - X(j,:))^2;
    end
end