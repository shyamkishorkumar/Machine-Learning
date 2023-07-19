function [J] = computeCost( X , y , theta1 )
  
  m = length(y);
  hypo = X * theta1;
  error1 = hypo .- y;
  square_Error = error1 .^2;
  sum_square_Error = sum(square_Error);
  J = (1/(2*m))*sum_square_Error;

end