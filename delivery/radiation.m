
%% Calculations
% For l/lambda = 1, ie. l = lambda, k0*l = 2*pi
% For l/lambda = 3, ie. l = 3*lambda, k0*l = 6*pi
theta = 0:0.001:2*pi;
U1 = zeros(size(theta)); % for l = lambda
U2 = zeros(size(theta)); % for L = 3*lambda

for i = 1: length(theta)
    %Etheta(i) = sin(2*2*pi*sin(theta(i)/2)^2)/tan(theta(i)/2); 
    U1(i) = (sin(2*2*pi*sin(theta(i)/2)^2)/tan(theta(i)/2))^2;
    U2(i) = (sin(2*6*pi*sin(theta(i)/2)^2)/tan(theta(i)/2))^2;
end
U1n = U1/max(U1);
U2n = U2/max(U2);
%%plotting
subplot(1, 2, 1);
plot(theta, U1n);
title('Radiation pattern for l = \lambda');
subplot(1, 2, 2);
plot(theta, U2n);
title('Radiation pattern for l = 3\lambda');