function drawMC1 (featuresX, priceY)
	figure (1);
	plot(featuresX(:,1),priceY,'xr');
	hold on;
	fplot("x*2+1000", [ 0 max(featuresX(:,1)) ]);
	xl = xlabel('House size');
	yl = ylabel('price');
	set(xl, "fontsize", 20);
	set(yl, "fontsize", 20);
	le = legend ({"data", "prediction"});
	set(le, "fontsize", 14);
	set(le, "location", "northwest");
	title('Housing Prices', "fontsize", 24);
	grid on;

endfunction