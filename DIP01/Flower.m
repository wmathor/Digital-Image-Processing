theta = -pi:0.01:pi;
rho(1,:) = 2 * sin(5 * theta).^2;
rho(2,:) = cos(10 * theta).^3;
rho(3,:) = sin(theta).^2;
for i = 1 : 3
   subplot(1,3,i);
   polar(rho(i,:));
end