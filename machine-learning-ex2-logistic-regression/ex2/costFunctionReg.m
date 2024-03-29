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

for i=1:m
	hypothesis = sigmoid(X(i,:)*theta);
	J = J + -y(i)*log(hypothesis)-(1-y(i))*log(1-hypothesis);
	for j=1:length(theta)
		grad(j) = grad(j) + (hypothesis-y(i))*X(i,j);
	end
end
sumLam = 0;
for k=1:length(theta)
	if k == 1
		grad(k) = (1/m)*grad(k);
	else
		grad(k) = (1/m)*grad(k) + (lambda/m)*theta(k);
		sumLam = sumLam + theta(k)^2;
	end
end
J = abs((1/m)*J+(lambda/(2*m))*sumLam);



% =============================================================

end
