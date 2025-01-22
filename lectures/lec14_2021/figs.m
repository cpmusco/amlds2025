% polynomials
x = 0:.01:1;
y = x.^50;
plot(x,y,'LineWidth',3);
xlabel('$z$','FontSize',30,'interpreter','latex');
ylabel('$z^q$','FontSize',30,'interpreter','latex');


x = 0:.001:1;
y = chebyshevT(20,x+.03);
plot(x,y,'LineWidth',3);
xlabel('$z$','FontSize',30,'interpreter','latex');
ylabel('$T_{q}(z)$','FontSize',30,'interpreter','latex');


A = round(randn(10,5)*diag([1000,1,100,10000,10]));


B = [1,.99;.99,1];
A = chol(B);



B = [1,.8, .9;.8,1,.8;.9,.8,1];
S = chol(B);
A = S*diag([5.8,3.1,5.8]);
cond(A'*A)
P = sqrt(inv(diag(diag(A'*A))));
cond(P*A'*A*P)