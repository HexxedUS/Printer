module StepperMotorHoles(
  fn = $fn,
  kern = $kern,
  center = false,
  height = 5,
  cutout=false,
  screws=false
) render() translate([0, 0, -0.5]) {
  translate([21, 21, 0]) cylinder(height + 1, d=24+kern, $fn=fn);
  for(x=[5.5, 42 - 5.5], y=[5.5, 42 - 5.5]) {
    translate([x, y, 0]) cylinder(height + 1, d=3, $fn=6);
    if(screws) translate([x, y, 4]) cylinder(height-3, d=5.5, $fn=24);
  };
};

module StepperMotor(
  fn = 24,
  kern = $kern,
  center = false,
  height = 5,
  cutout=false,
  screws=false
) render() translate([center ? -21 : 0, center ? - 21 : 0, 0]) {
  if(cutout) {
    StepperMotorHoles(fn, kern, center, height, cutout, screws);
  };

  if(!cutout) difference() {
    cube([42, 42, height]);
    StepperMotorHoles(fn, kern, center, height, cutout, screws);
  };
};
