%% Eulers Method with (i+1) iterations: Example 
clearvars
tic

N = 200000000;
h = 0.001;
x = zeros(1,N);
t = zeros(1,N);
x(1) = -1;
y = 5;
a = 0.1;
b = 2.2;

for i = 1:N-1
    t(i+1) = t(i)+h;
    x(i+1) = x(i)+(a*x(i)+b*y)*h; 
end 
toc
figure(1)
plot(t, x)
title('Eulers with (i+1)');
fprintf('Eulers:')
%% Eulers Method without (i+1) iterations: Example 
clearvars
tic

N = 200000000;
h = 0.001;
t = 0;
x = -1;
y = 5;
a = 0.1;
b = 2.2;

X = zeros(1,N);
T = zeros(1,N);

for i = 1:N
    t = t+h;
    x = x+(a*x+b*y)*h;
    X(i) = x;
    T(i) = t;
end 
toc
figure(2)
plot(T, X)
title('Eulers without (i+1)');
fprintf('Eulers:')