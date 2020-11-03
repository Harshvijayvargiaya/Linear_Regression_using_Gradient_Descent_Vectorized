% First step is to load in data
data = load('ex1data1.txt');
% Visualizing data by plotting it.
X = data(:, 1); y = data(:, 2);
% X is training data(Feature) and y is (target data) 
m = length(y);
plotData(X, y);
% Note we can use pause to pause script for until enter is pressed.
fprintf('Program is paused. Press enter to continue.\n');
pause;
% calculating cost and gradient descent.
X = [ones(m,1), data(:,1)]; % Add a coloumn of ones to x.
theta = zeros(2,1); % initialize fitting parameters.

% Gradient descent settings.
iterations = 1500;
alpha = 0.01;

J = costFunction(X, y, theta);
fprintf('with theta = [0;0]\ncost computed = %f\n',J);
fprintf('Expected cost value (approx.) 32.07\n');

% further testing of the cost function.
J = costFunction(X, y, [-1;2]);
fprintf('\nWith theta = [-1 ; 2]\nCost computed = %f\n', J);
fprintf('Expected cost value (approx) 54.24\n');

fprintf('Program paused. Press enter to continue.\n');
pause;

% Now running gradient descent.
theta = gradientdescent(X, y, theta, alpha, iterations);% print theta to screen
fprintf('Theta found by gradient descent:\n');
fprintf('%f\n', theta);
fprintf('Expected theta values (approx)\n');
fprintf(' -3.6303\n  1.1664\n\n');
% plot the linear fit.
hold on;
plot(X(:,2), X*theta, '-')
legend('Training data','Linear regression')
hold off;