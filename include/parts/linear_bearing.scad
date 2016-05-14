module LinearBearing(fn = $fn, kern = $kern, center = false) render() translate([0, 0, center ? -15 : 0]) union() {
  translate([0, 0, -0.1]) cylinder(3, d=8+kern, $fn = fn);
  translate([0, 0, 2.9]) cylinder(3.2, d=15.1, $fn = fn);
  translate([0, 0, 2.9 + 3.2]) cylinder(0.8, d=14.6, $fn = fn);
  translate([0, 0, 2.9 + 3.2 + 0.8]) cylinder(16.2, d=15.1, $fn = fn);
  translate([0, 0, 2.9 + 3.2 + 0.8 + 16.2]) cylinder(0.8, d=14.6, $fn = fn);
  translate([0, 0, 2.9 + 3.2 + 0.8 + 16.2 + 0.8]) cylinder(3.2, d=15.1, $fn = fn);
  translate([0, 0, 2.9 + 3.2 + 0.8 + 16.2 + 0.8 + 3.2]) cylinder(3, d=8+kern, $fn = fn);
};

module LinearBearingCoverScrews() render() translate([10, 0, 15]) for(y=[0:1], z=[0:1])
  mirror([0, y, 0]) mirror([0, 0, z]) rotate([0, -90, 0])
  translate([30/4, 10, 0]) {
  cylinder(18, d=3, $fn=6);
  cylinder(3+kern, d=5+kern, $fn=24);
};

module LinearBearingCover(
  fn = $fn,
  kern = $kern,
  center = false,
  cutout = false,
  screws = true
) render() translate([0, 0, center ? -15 : 0]) {
  if(cutout) union() {
    translate([0, -14, 0])
      cube([10, 28, 30]);
    LinearBearing(fn, kern, false);
    if(screws) LinearBearingCoverScrews();
  };

  if(!cutout) difference() {
    translate([kern, -14+kern, kern])
      cube([10-kern, 28-(kern*2), 30-(kern*2)]);
    LinearBearing(fn, kern, false);
    if(screws) LinearBearingCoverScrews();
  };
};
