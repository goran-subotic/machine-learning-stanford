function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

theta_count = length(theta)

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    #theta
    
    #h = X * theta;
    
    #diff = h - y;
    
    #diff 
    #X
    
    #diff' * X
    
    #suma = sum(diff' * X);
    #suma
    
    #theta = theta - (alpha/m) * sum(diff' * X);
    
    #theta
    
    
    theta_temp = theta;

    for theta_iter = 1:theta_count
      theta_temp(theta_iter) = theta_temp(theta_iter) - alpha/m * (sum((X*theta-y) .* X(:,theta_iter)))
    endfor


    theta = theta_temp;


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
