function [ thetaV, J_History ] = gradientDescent(XV, yV, thetaV, alpha, numIteration)
  m = length(yV);
  J_History = zeros(numIteration, 1);

  for iter = 1: numIteration
    meansquareErrorV = XV * thetaV - yV;
    current = XV' * meansquareErrorV * alpha / m;
    thetaV = thetaV - current;
    J_History(iter) = costFunction(XV, yV, thetaV);
    if (mod(iter,10) == 0)
     disp(thetaV);
    endif
  end

  return;

endfunction