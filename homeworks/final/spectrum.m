figure();
im1 = rgb2gray(imread('image1.jpg'));
imagesc(im1); colormap gray

figure();
im2 = rgb2gray(imread('image2.jpg'));
imagesc(im2); colormap gray

figure();
im3 = rgb2gray(imread('image3.jpg'));
imagesc(im3); colormap gray

figure();
im4 = rgb2gray(imread('image4.jpg'));
imagesc(im4); colormap gray

im1 = double(im1);
im2 = double(im2);
im3 = double(im3);
im4 = double(im4);

% im1 = im1 - ones(size(im1,1),1)*mean(im1);
% im1 = im2 - ones(size(im1,1),1)*mean(im2);

im1 = im1 - mean(mean(im1));
im2 = im2 - mean(mean(im2));
im3 = im3 - mean(mean(im3));
im4 = im4 - mean(mean(im4));

s1 = svd(im1);
s1 = s1/max(s1);
s2 = svd(im2);
s2 = s2/max(s2);
s3 = svd(im3);
s3 = s3/max(s3);
s4 = svd(im4);
s4 = s4/max(s4);


t = 100;
figure();
plot(1:t,s3(1:t),'LineWidth',5)
hold();
plot(1:t,s2(1:t),'-.','LineWidth',5)
plot(1:t,s1(1:t),':','LineWidth',5)
% plot(1:t,s4(1:t),'LineWidth',5)
set(gca,'FontSize',20)
% set(gca, 'YScale', 'log')
ylabel('singular value $\sigma_i/\sigma_1$','FontSize',24,'interpreter','latex');
xlabel('singular value index $i$','FontSize',24,'interpreter','latex');
xlim([1,t]);
legend('$\mathbf{A}$''s eigenvalues','$\mathbf{B}$''s eigenvalues','$\mathbf{C}$''s eigenvalues','FontSize',24,'interpreter','latex')

figure();
plot(1:t,s2(1:t),'LineWidth',5)
set(gca,'FontSize',20)
% set(gca, 'YScale', 'log')
ylabel('singular value $\sigma_i$','FontSize',24,'interpreter','latex');
xlabel('singular value index $i$','FontSize',24,'interpreter','latex');
xlim([1,t]);

figure();
plot(1:t,s3(1:t),'LineWidth',5)
set(gca,'FontSize',20)
% set(gca, 'YScale', 'log')
ylabel('singular value $\sigma_i$','FontSize',24,'interpreter','latex');
xlabel('singular value index $i$','FontSize',24,'interpreter','latex');
xlim([1,t]);

figure();
plot(1:t,s4(1:t),'LineWidth',5)
set(gca,'FontSize',20)
% set(gca, 'YScale', 'log')
ylabel('singular value $\sigma_i$','FontSize',24,'interpreter','latex');
xlabel('singular value index $i$','FontSize',24,'interpreter','latex');
xlim([1,t]);