union()
{
	color("cyan") linear_extrude(height = 600, center = false, convexity = 20, twist = 1000, slices = 500)
	{
		translate([-14, 0, 0])
			square(6);
		translate([14, 0, 0])
			square(6);
	}

	color("red")
		for(i=[1:66])
		{
			rotate(a=[0,90,-15*i])
				translate([-9*i, 3, -9])
				 	cylinder(h = 24, r=2);
		}
}
