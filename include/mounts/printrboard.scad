module PrintrboardMount(screws = false) {
  module PrintrboardMountCylinders(d = 7) {
    translate([3.8, 3.85, 2]) cylinder(10, d=d);
    translate([3.8, 100 - 3.85, 2]) cylinder(10, d=d);
    translate([60.9 - 3.8, 100 - 3.85, 7]) cylinder(5, d=d);
    translate([60.9 - 3.8, 3.85, 2]) cylinder(10, d=d);
  }

  module PrintrboardMountRisers() PrintrboardMountCylinders(7);
  module PrintrboardMountScrews() PrintrboardMountCylinders(3);

	if(screws == true) {
		translate([-60.9/2, -100/2, 0]) PrintrboardMountScews();
	};

	if(screws == false) {
		difference() {
			union() {
				translate([0, 0, 7/2]) cube([60.9, 100, 7], center = true);
				translate([-60.9/2, -100/2, 0]) PrintrboardMountRisers();
			};

			translate([-60.9/2, -100/2, 0]) PrintrboardMountScrews();
		};
	};
};
