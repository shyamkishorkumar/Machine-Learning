clear ; close all; clc;

datas = load("input_dataSet.txt");

x = [datas( :,1) datas(:,2)] ;
y = [datas(:,3)];

m=length(y);
X = [ones(m,1) x];
theta = [0; 0; 0];
alpha = .01;
number_iterations=100000;

%plot3(datas(:,1),datas(:,2),datas(:,3))
theta = gradientDescent(X, y, theta, alpha, number_iterations)
disp("program completed !!!!")

pause