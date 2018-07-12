function [theta,J_history] = myGradientDescent4line(X,Y,theta,alpha,num_iters)
  m = length(Y); %������
  J_history = zeros(num_iters,1); %��ʼ�� J(theta) Ϊ[��������*1]��ȫ0����
  x_len = size(X,2);%����theta�ĸ���
  
  for iter = 1:num_iters %����
    partial = zeros(x_len,1);
    h = zeros(m,1); % h(x) Ŀ�꺯��
    J_history(iter) = computeCostMulti(X,Y,theta);%��ÿ�ε�J(theta)��ֵ,������ﵽ��С
    h = X * theta; % h(x) Ŀ�꺯��
    
    for i = 1:m
      partial += (h(i)-Y(i)).*X(i,:)' ; %����sum((hi-yi)*xi) ��ƫ��
    end
    theta = theta - alpha * partial/m;
    disp('theta'),disp(theta);
end
