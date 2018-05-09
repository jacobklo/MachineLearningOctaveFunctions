function [ thetaV, J_history] = gradientDescent(XV, YV, thetaV, alpha, numIteration)
  m = size(XV)(1);
  J_history = zeros(numIteration, 1);

  for i = 1: numIteration
    meansquareErrorV = XV * thetaV - YV;
    current = XV' * meansquareErrorV * alpha / m;
    thetaV = thetaV - current;
    J_history(i) = costFunction(XV, YV, thetaV);
  end

  return;