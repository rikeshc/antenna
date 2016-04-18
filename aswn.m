x = -11:0.1:11;
ax= exp(x/10);
ber = erfc(sqrt(2*ax));
%semilogy(x, ber);
%grid on;
reciv = zeros(size(x));
noise = zeros(size(x));
val = [-1, 1];
for n = 1:length(x)
    sigma = 1/(sqrt(2*x(n)));
    bit = val(randi(length(val)));
    noise(n) = sigma * randn;
    reciv(n) = bit + noise(n);
end
SNR = log(reciv ./ noise);
ber2 = erfc(sqrt(2*SNR));
semilogy(x, ber, x, ber2);
