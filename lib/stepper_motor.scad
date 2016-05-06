use <mcad/utilities.scad>;
use <mcad/polyholes.scad>;
use <ISOThread.scad>;

module threadhole(h = 0, d = 0) {
	polyhole(h, d);
	//thread_out(d, h);
};

// The base of the motor mount
module motor_mount_base(
    height = 4,
) {
    cube([42, 42, height]);
};

// Adds the motor shaft hole
module motor_mount_hole_shaft(
    height = 4,
) {
    translate([21, 21, 0]) polyhole(height, 24);
};

// Adds the motor mounting holes
module motor_mount_hole_bolts(
    height = 4,
) for(vector = [
		[5.5, 5.5, 0],
		[36.5, 36.5, 0],
		[5.5, 36.5, 0],
		[36.5, 5.5, 0],
]) translate(vector) {
    cylinder(height, d=3, $fn=6);

		if(height > 3) {
				translate([0, 0, height - (height - 3)])
					cylinder(height - 3, d=5+($kern * 2), $fn=24);
		};
};

module motor_bearing_hole_bolts(
    height = 4,
) for(vector = [
		[1, 10, 0],
		[1, 32, 0],

]) translate(vector) cylinder(height, d=4, $fn=6);

module motor_mount_holes(height = 4) {
	motor_mount_hole_shaft(height);
  motor_mount_hole_bolts(height);
	motor_bearing_hole_bolts(height);
};

// Full part component
module motor_mount(
    height = 4,
) difference() {
    motor_mount_base(height);
    motor_mount_hole_shaft(height);
    motor_mount_hole_bolts(height);
};

motor_mount_holes(10);
