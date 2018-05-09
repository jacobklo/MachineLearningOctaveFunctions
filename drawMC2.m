function drawMC2 (XV, YV)
  figure(2);
  plot(XV(:,1),YV,'xr');
  hold on;
  fplot("x^2", [ 0 max(XV(:,1)) ]);
  xl = xlabel('X');
  yl = ylabel('Y');
  set(xl, "fontsize", 20);
  set(yl, "fontsize", 20);
  le = legend ({"data", "prediction"});
  set(le, "fontsize", 14);
  set(le, "location", "northwest");
  title('quadratic', "fontsize", 24);
  grid on;