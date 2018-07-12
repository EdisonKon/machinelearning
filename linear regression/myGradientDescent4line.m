function [theta,J_history] = myGradientDescent4line(X,Y,theta,alpha,num_iters)
  m = length(Y); %样本数
  J_history = zeros(num_iters,1); %初始化 J(theta) 为[迭代次数*1]的全0向量
  x_len = size(X,2);%参数theta的个数
  
  for iter = 1:num_iters %迭代
    partial = zeros(x_len,1);
    h = zeros(m,1); % h(x) 目标函数
    J_history(iter) = computeCostMulti(X,Y,theta);%求每次的J(theta)的值,以求其达到最小
    h = X * theta; % h(x) 目标函数
    
    for i = 1:m
      partial += (h(i)-Y(i)).*X(i,:)' ; %计算sum((hi-yi)*xi) 求偏导
    end
    theta = theta - alpha * partial/m;
    disp('theta'),disp(theta);
end
