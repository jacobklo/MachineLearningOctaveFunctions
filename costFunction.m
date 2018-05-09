function JTheta = costFunction(XV, YV, thetaV)
  JTheta = 0;
  m = size(XV)(1);
  meansquareErrorV = XV * thetaV - YV;
  JTheta = meansquareErrorV' * meansquareErrorV;
  return;