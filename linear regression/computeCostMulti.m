function J = computeCostMulti(X , Y , theta)
  m = size(X,1);
  J = 0;
  h = zeros(m,1);
  h = X * theta; % h(x) Ŀ�꺯��
  J = sum((h-Y).^2)/(2*m); % J(theta) ��ʧ����
  disp('J'),disp(J);
endfunction
