function drawMC23D(gridSize, XV, YV, theta0Min, theta0Max, theta1Min, theta1Max)

  tx = linspace (theta0Min, theta0Max, gridSize)';
  ty = linspace (theta1Min, theta1Max, gridSize)';
  
  costs = zeros(gridSize,gridSize);
  for i = 1: length(tx)
    for j = 1: length(ty)
      currentTheta = [ 0; tx(i); ty(j)];
      costs(i,j) = costFunction(XV, YV, currentTheta);
    end
  end

  mesh (tx, ty, costs);
  xlabel ("θ_1");
  ylabel ("θ_2");
  zlabel ("J(θ_0, θ_1, θ_2)");
  title ("Cost Functions");

endfunction