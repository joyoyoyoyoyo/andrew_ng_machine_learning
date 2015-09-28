function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% hypthosis - h_theta(x) = g(theta'*x)

% For optimization, I should considering using an element wise power operator instead of a for loop
if length(g) > 1
	for i=1:length(z)
		g(i) = 1/(1+e^(-z(i)));
	end
else
	g = 1/(1+e^(-z));
end
% g needs to operate with vectors, scalars, or matrices

% =============================================================

end
