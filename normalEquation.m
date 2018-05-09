function thetaV = normalEquation(XV, YV)
  XVTranspose = XV';
  inverse = pinv(XVTranspose * XV);
  thetaV = inverse * XVTranspose * YV;
  return;

endfunction