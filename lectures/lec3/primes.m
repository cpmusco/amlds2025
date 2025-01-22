pivec = zeros(1,2000);
for i = 1:length(pivec)
    pivec(i) = length(primes(i));
end
figure(); hold();
xvals = 1:length(pivec);
plot(xvals, pivec, 'LineWidth', 3);
plot(xvals, xvals./log(xvals), 'LineWidth', 3);
legend({'$\pi(x)$','$x/\log(x)$'},'interpreter','latex', 'FontSize', 30,'Location','best')
xlabel('x','interpreter','latex', 'FontSize', 30);
exportgraphics(gca,'prime_number_theorem.png','Resolution',600)