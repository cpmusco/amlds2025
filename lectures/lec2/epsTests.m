eps = 0:.01:1;
figure(); hold();
plot(eps, 1./(1+eps));
plot(eps, 1-eps);

eps = 0:.01:1;
figure(); hold();
plot(eps, 1./(1+eps), 'LineWidth', 3);
plot(eps, 1-eps, 'LineWidth', 3);
plot(eps, 1-eps/2, 'LineWidth', 3);
legend({'$\frac{1}{1+\epsilon}$','$1-\epsilon$','$1-\epsilon/2$'},'interpreter','latex', 'FontSize', 20)

eps = 0:.01:.6;
figure(); hold();
plot(eps, 1./(1-eps), 'LineWidth', 3);
plot(eps, 1+eps, 'LineWidth', 3);
plot(eps, 1+2*eps, 'LineWidth', 3);
legend({'$\frac{1}{1-\epsilon}$','$1+\epsilon$','$1+2\epsilon$'},'interpreter','latex', 'FontSize', 20, 'Location','northwest')

k = 1.1:.1:10;
figure(); hold();
plot(k, exp(-k.^2/2), 'LineWidth', 3);
plot(k, 1./(k.^2), 'LineWidth', 3);
legend({'$e^{-k^2/2}$ (Gaussian tail)','$1/k^2$ (Chebyshev inequality)'},'interpreter','latex', 'FontSize', 26,'Location','best')
ylabel('$Pr[|X - \mu| \geq k\sigma]$','interpreter','latex', 'FontSize', 26);
xlabel('k','interpreter','latex', 'FontSize', 26);
exportgraphics(gca,'standardScale.png','Resolution',600)

figure(); hold();
plot(k, exp(-k.^2/2), 'LineWidth', 3);
plot(k, 1./(k.^2), 'LineWidth', 3);
legend({'$e^{-k^2/2}$ (Gaussian tail)','$1/k^2$ (Chebyshev inequality)'},'interpreter','latex', 'FontSize', 26,'Location','best')
ylabel('$Pr[|X - \mu| \geq k\sigma]$','interpreter','latex', 'FontSize', 26);
xlabel('k','interpreter','latex', 'FontSize', 26);
set(gca, 'YScale', 'log')
exportgraphics(gca,'logScale.png','Resolution',600)


