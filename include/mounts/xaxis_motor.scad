module XAxisMotor() render() translate([-$BS2Length/2+($BS2Length-46-nkern(1))/2, 0, $baseHeight/2-2]) difference() {
  cube([$BS2Length-46-nkern(1), 57, 42+nkern(1)], center=true);

  translate([-($BS2Length-46-nkern(1))/2, 0, 0]) rotate([0, 90, 0]) StepperMotor(
    center=true, height=$BS2Length-46-nkern(1), cutout=true
  );

  translate([0, 0, (42+nkern(1))/2-(24/2)]) cube([7, 57, 24], center=true);

  for(y=[5.5, 42 - 5.5], z=[5.5, 42 - 5.5]) {
    translate([-($BS2Length-46-nkern(1))/2, -42/2+y, -42/2+z])
    rotate([0, 90, 0]) cylinder(($BS2Length-46-nkern(1))/4*3, d=5.5, $fn=$fnCircle);
  };

  for(y=[0:1]) mirror([0, y, 0]) translate([
    -($BS2Length-46-nkern(1))/2, 20, 5
  ]) rotate([0, 90, 0]) {
    cylinder(($BS2Length-46-nkern(1))/4*3, d=4, $fn=$fnCircle);
    cylinder(($BS2Length-46-nkern(1))/4, d=6.5, $fn=$fnCircle);
  };
};
