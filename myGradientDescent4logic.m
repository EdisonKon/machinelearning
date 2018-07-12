function [theta,J_history] = myGradientDescent4logic(X,Y,theta,alpha,num_iters)
  m = length(Y); %������
  J_history = zeros(num_iters,1); %��ʼ�� J(theta) Ϊ[��������*1]��ȫ0����
  x_len = size(X,2);%����theta�ĸ���
  
  for iter = 1:num_iters %����
    partial = zeros(x_len,1);
    h = zeros(m,1); % h(x) Ŀ�꺯��
    %disp('X'),disp(X);
    %disp('theta'),disp(theta);
    %disp('xxx'),disp(e.^(-(X * theta)));
    %disp('xxx2'),disp(1./(1+e.^(-(X * theta))));
    %J_history(iter) = computeCostMulti(X,Y,theta);%��ÿ�ε�J(theta)��ֵ,������ﵽ��С
    J_history(iter) = computeCostMulti2(X,Y,theta);%��ÿ�ε�J(theta)��ֵ,������ﵽ��С
    
    
    h = 1./(1+e.^(-(X * theta))); % h(x) Ŀ�꺯��
    
    for i = 1:m
      %����ƫ���ĺ�
      partial += (h(i)-Y(i)).*X(i,:)' ;
    end
    %disp('partial'),disp(partial);
    theta = theta - alpha * partial/m;
    %disp('theta'),disp(theta);
end
