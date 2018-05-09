function drawMC23D(gridSize, XV, YV, theta0Min, theta0Max, theta1Min, theta1Max)

  tx = linspace (theta0Min, theta0Max, gridSize)';
  ty = linspace (theta1Min, theta1Max, gridSize)';
  
  costs = zeros(gridSize,gridSize);
  for i = 1: length(tx)
    for j = 1: length(ty)
      currentTheta = [ tx(i); ty(j)];
      costs(i,j) = costFunction(XV, YV, currentTheta);
    end
  end

  mesh (tx, ty, costs);
  xlabel ('{\fontsize{20}\Theta}_{\fontsize{10}0}');
  ylabel ('{\fontsize{20}\Theta}_{\fontsize{10}1}');
  zlabel ('{\fontsize{20}J(\Theta_{\fontsize{10}0}, \Theta_{\fontsize{10}1})}');
  title ("Cost Functions");

endfunction