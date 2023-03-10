function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).




% Goran: To calculate sigmoid for vector or matrix we calculate sigmoid on EACH 
% element of vector or matrix



rows=size(g,1);
cols=size(g,2);

for i=1:rows
  for j=1:cols
    zet = z(i,j);
    g(i,j) = 1 / (1+(e^-zet));
  endfor  
endfor


% =============================================================

end
