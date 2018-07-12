function [theta,J_history] = myGradientDescent4logic(X,Y,theta,alpha,num_iters)
  m = length(Y); %样本数
  J_history = zeros(num_iters,1); %初始化 J(theta) 为[迭代次数*1]的全0向量
  x_len = size(X,2);%参数theta的个数
  
  for iter = 1:num_iters %迭代
    partial = zeros(x_len,1);
    h = zeros(m,1); % h(x) 目标函数
    %disp('X'),disp(X);
    %disp('theta'),disp(theta);
    %disp('xxx'),disp(e.^(-(X * theta)));
    %disp('xxx2'),disp(1./(1+e.^(-(X * theta))));
    %J_history(iter) = computeCostMulti(X,Y,theta);%求每次的J(theta)的值,以求其达到最小
    J_history(iter) = computeCostMulti2(X,Y,theta);%求每次的J(theta)的值,以求其达到最小
    
    
    h = 1./(1+e.^(-(X * theta))); % h(x) 目标函数
    
    for i = 1:m
      %计算偏导的和
      partial += (h(i)-Y(i)).*X(i,:)' ;
    end
    %disp('partial'),disp(partial);
    theta = theta - alpha * partial/m;
    %disp('theta'),disp(theta);
end
