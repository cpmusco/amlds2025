% logistic link
x = -10:.01:10;
y = 1./(1+exp(-x));
plot(x,y,'LineWidth',3);
xlabel('$x^Ty$','FontSize',30,'interpreter','latex');
ylabel('$\frac{1}{1 + e^{-x^T y}}$','FontSize',30,'interpreter','latex');

