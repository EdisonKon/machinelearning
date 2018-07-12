function J = computeCostMulti(X , Y , theta)
  m = size(X,1);
  J = 0;
  h = zeros(m,1);
  h = X * theta; % h(x) 目标函数
  J = sum((h-Y).^2)/(2*m); % J(theta) 损失函数
  disp('J'),disp(J);
endfunction
