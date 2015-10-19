function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
	for i=1:length(theta)
			if i == 1
				temp_theta = theta;
			end

			J = 0;
			for j=1:m
				hypothesis = X(j,:)*theta;
				J = J + (hypothesis-y(j))*X(j,i);
			end
			temp_theta(i) = theta(i) - alpha*(1/m)*J;
			if i == length(theta)
				theta = temp_theta;
			end
	end 
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);


end

end
