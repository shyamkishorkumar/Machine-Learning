function[theta] = computeGradient( X1, y, theta, alpha, iterations)
	X_column1 = X1(:,1);
	X_column2 = X1(:,2);
	X_column3 = X1(:,3);
	m = length(y);

	cost_table = ones(iterations,2);
	cost_table(1,1) = computeCost(X1, y, theta);
  
	for iter = 1:iterations
		hypo = X1 * theta;
		error= hypo .- y;
		trans_error = error';
    
		temp_theta0 = theta(1,1) - (1/m)*(alpha)*(trans_error * X_column1);
		temp_theta1 = theta(2,1) - (1/m)*(alpha)*(trans_error * X_column2);
		temp_theta2 = theta(3,1) - (1/m)*(alpha)*(trans_error * X_column3);
		
    theta(1,1) = temp_theta0;
		theta(2,1) = temp_theta1;
		theta(3,1) = temp_theta2;
		
		cost_table(iter,2)= computeCost(X1,y,theta);
		cost_table((iter+1),1)= cost_table(iter,2);
    
	end
	
	save costTable.txt cost_table -ascii;

end