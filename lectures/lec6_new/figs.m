% tunable jaccard similarity
v = 0:.01:1;
plot(v, v, 'LineWidth',3);
hold();
plot(v, v.^2, 'LineWidth',3);
plot(v, v.^5, 'LineWidth',3);
xlabel('Jaccard similarity $v$','FontSize',20,'interpreter','latex');
ylabel('collision probability','FontSize',20,'interpreter','latex');
legend('$s = 1$','$s=2$', '$s = 5$','FontSize',20,'interpreter','latex');


% s-curve
s = 5;
t = 5;
v = 0:.01:1;
plot(v, 1 - (1-v.^s).^t,'LineWidth',3);
xlabel('Jaccard similarity $v$','FontSize',20,'interpreter','latex');
ylabel('collision probability','FontSize',20,'interpreter','latex');
hold();
s = 5;
t = 40;
plot(v, 1 - (1-v.^s).^t,'LineWidth',3);
s = 40;
t = 5;
plot(v, 1 - (1-v.^s).^t,'LineWidth',3);

% s-curve
s = 5;
t = 5;
v = 0:.01:1;
plot(v, 1 - (1-v.^s).^t,'LineWidth',3);
xlabel('Jaccard similarity $v$','FontSize',20,'interpreter','latex');
ylabel('collision probability','FontSize',20,'interpreter','latex');
hold();
s = 10;
t = 40;
plot(v, 1 - (1-v.^s).^t,'LineWidth',3);
s = 14;
t = 200;
plot(v, 1 - (1-v.^s).^t,'LineWidth',3);

s = 40;
t = 40;
v = 0:.01:1;
figure();
plot(v, 1 - (1-v.^s).^t,'LineWidth',3);
xlabel('Jaccard similarity $v$','FontSize',20,'interpreter','latex');
ylabel('collision probability','FontSize',20,'interpreter','latex');

% simhash
plot(theta, 1 - theta./pi, theta, (cos(theta)+1)/2,'LineWidth',3);
xlabel('$\theta$','FontSize',20,'interpreter','latex');
ylabel('collision probability','FontSize',20,'interpreter','latex');
legend('$1-\frac{\theta}{\Pi}$','$\frac{\cos(\theta) + 1}{2}$','FontSize',20,'interpreter','latex');

% simhash
theta = 0:.01:pi;
plot(cos(theta), 1 - theta./pi,'LineWidth',3);
xlabel('cosine similarity','FontSize',20,'interpreter','latex');
ylabel('collision probability','FontSize',20,'interpreter','latex');
exportgraphics(gca,'cosine_sim.png','Resolution',600) 

% legend('$1-\frac{\theta}{\Pi}$','$\frac{\cos(\theta) + 1}{2}$','FontSize',20,'interpreter','latex');