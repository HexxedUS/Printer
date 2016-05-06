module PrintrboardMount(screws = false, baseHeight=7, height=12) {
  module PrintrboardMountCylinders(d = 7, h=12) {
    translate([3.8, 3.85, 2]) cylinder(h-2, d=d);
    translate([3.8, 100 - 3.85, 2]) cylinder(h-2, d=d);
    translate([60.9 - 3.8, 100 - 3.85, 2]) cylinder(h-2, d=d);
    translate([60.9 - 3.8, 3.85, 2]) cylinder(h-2, d=d);
  }

  module PrintrboardMountRisers() PrintrboardMountCylinders(7, height);
  module PrintrboardMountScrews() PrintrboardMountCylinders(3, height);

	if(screws == true) {
		translate([-60.9/2, -100/2, 0]) PrintrboardMountScews();
	};

	if(screws == false) {
		difference() {
			union() {
				translate([0, 0, 7/2]) cube([60.9, 100, baseHeight], center = true);
				translate([-60.9/2, -100/2, 0]) PrintrboardMountRisers();
			};

			translate([-60.9/2, -100/2, 0]) PrintrboardMountScrews();
		};
	};
};
