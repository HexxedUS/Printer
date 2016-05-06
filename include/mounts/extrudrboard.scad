module ExtrudrboardMount(screws = false) {
	module ExtrudrboardMountCylinders(d = 7) {
		translate([3.85, 3.8, 2]) cylinder(10, d=d);
		translate([3.85, 60.9 - 3.8, 2]) cylinder(10, d=d);
		translate([40 - 3.85, 3.8, 2]) cylinder(10, d=d);
		translate([40 - 3.85, 60.9 - 3.8, 2]) cylinder(10, d=d);
	};

	module ExtrudrboardMountRisers() ExtrudrboardMountCylinders(7);
	module ExtrudrboardMountScrews() ExtrudrboardMountCylinders(3);

	if(screws == true) {
		translate([-40/2, -60.9/2, 0]) ExtrudrboardMountScrews();
	};

	if(screws == false) {
		difference() {
			union() {
				translate([0, 0, 7/2]) cube([40, 60.9, 7], center = true);
				translate([-40/2, -60.9/2, 0]) ExtrudrboardMountRisers();
			};

			translate([-40/2, -60.9/2, 0]) ExtrudrboardMountScrews();
		};
	};
};
