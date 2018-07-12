function J = computeCostMulti2(X , Y , theta)
  m = size(X,1);
  J = 0;
  h = zeros(m,1);
  h = 1./(1+e.^(-(X * theta))); % h(x) 目标函数
  %disp('h'),disp(h),disp('log(h)'),disp(log(h));
  J = -sum(Y.*log(h) + (1-Y).*log(1-h))/m; % J(theta) 损失函数
  disp('J'),disp(J);
endfunction
