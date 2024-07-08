clc;
clear all
close all

f = @(n) 0.5.^n;
n = [1 2.5 2.5 1 1.5];
x = f(n);
h = ones(1,10);

figure(1)
    subplot(3,1,1);
    stem(f(n));
    xlabel('n');
    ylabel('x(n)');
    grid on;
    
    subplot(3,1,2);
    stem(h);
    xlabel('n');
    ylabel('h(n)'); grid on;
    
    subplot(3,1,3);
    stem(dt_conv(x,h));
    xlabel('n');
    ylabel('y(n)');
    grid on;



