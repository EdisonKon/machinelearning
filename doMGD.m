function price = doMGD (x , y , yourx)
  x = [ones(size(x,1),1) x];
  theta = zeros(size(x,2),1);
  alpha = 0.0001;
  num_iters = 3000;
  %[theta,J_history] = myGradientDescent4line(x,y,theta,alpha,num_iters);
  [theta,J_history] = myGradientDescent4logic(x,y,theta,alpha,num_iters);
  
  % Plot the convergence graph
  figure;
  plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
  xlabel('Number of iterations');
  ylabel('Cost J')
  %plot(1:numel(h), h, '-b', 'LineWidth', 2);
  %price = [ones(size(yourx,1),1) yourx] * theta;
  yourx = [ones(size(yourx,1),1) yourx]
  price = 1./(1+e.^-( yourx * theta));
endfunction
