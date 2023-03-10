function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


% COST:
summ = 0;
for i=1:m
  summ += -y(i) * log(sigmoid(X(i,:)*theta)) - (1-y(i)) * log(1 - sigmoid(X(i,:)*theta));
endfor

reg_theta = theta;
reg_theta(1) = 0;

J = ((1/m) * summ) + ((lambda/(2*m)) * sum(reg_theta.^2));
                                    
% GRADIENT:
n = length(grad);
for j=1:n  
  sum=0;
  for i=1:m  
    sum += (sigmoid(X(i,:) * theta) - y(i)) * X(i,j);
    if(j==1)
      grad(j) = 1/m * sum;
    else
      grad(j) = 1/m * sum + (lambda/m)*theta(j);
    endif
  endfor
endfor



% =============================================================

end
