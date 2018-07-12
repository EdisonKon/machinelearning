function price = myNormalEquations(yourx)
x = load('sx.txt');
y = load('jg.txt');

x = [ones(size(x,1),1) x];

theta = pinv(x'*x)*x'*y;
disp('theta'),disp(theta);

price = [ones(size(yourx,1),1) yourx] * theta;
end
