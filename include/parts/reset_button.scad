module ResetButton(cutout = false) render() {
  if(!cutout) translate([0, 0, 0]) ResetButtonBottom();
  translate([0, 0, 35+nkern(1)]) ResetButtonTop(cutout);
};

module ResetButtonBottom() render() difference() {
  union() {
    translate([-5, 0, 5/2]) cube([10, 10, 5], center=true);
    cylinder(35, d1=10, d2=8-($kern * 2), $fn=$fnCircle);
  };

  translate([0, 0, 25]) cylinder(11, d=3, $fn=$fnHex);
};

module ResetButtonTop(cutout = false) render() difference() {
  union() {
    translate([
      0, 0,
      4+nkern(2)+(6-nkern(cutout ? 0 : 1))/2,
    ]) cube([
      10-nkern(cutout ? 0 : 2),
      10-nkern(cutout ? 0 : 2),
      6-nkern(cutout ? 0 : 1)
    ], center=true);

    cylinder(4+nkern(2), d=8-nkern(cutout ? 0 : 1), $fn=$fnCircle);
  };

  if(!cutout) {
    translate([0, 0, 4+nkern(1)+6-3.5]) cylinder(3.5, d=5.5, $fn=$fnCircle);
    cylinder(10+nkern(1), d=3, $fn=$fnHex);
  };
};
