function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

##theta
##pinv(X)
##inv(X)
##y

##size(theta)
##size(X)
##size(y)

TH = theta;
TH(1) = 0; #exclude theta_zero from regularization!

##sum(lambda * (TH.^2))
##X
##y
##X*theta
##X*theta .- y

J = (1/(2*m)) * sum((X*theta - y).^2) + ((lambda/(2*m)) *sum(TH.^2));

##size(lambda*L)
##size((X' * X) + lambda*L)
##size(inv((X' * X) + lambda*L) )
##size(X' * y)

##sum(((X*theta)-y).*X)/m
##(TH * (lambda/m))

grad = sum(((X*theta)-y).*X)/m + transpose(TH * (lambda/m));



% =========================================================================

grad = grad(:);

end
