module HexxedLogo(raised = false) {
  module hexagon(size, height) {
    boxWidth = size/1.75;
    for (r = [-60, 0, 60]) rotate([0,0,r]) cube([boxWidth, size, height], true);
  }

  color("gold") {
      translate([-0.25, 0, 0]) hexagon(6, raised ? 5 : 3);
      translate([5, 4, 0]) hexagon(6, raised ? 5 : 3);
      translate([-1, 6.5, 0]) hexagon(6, raised ? 5 : 3);
  };

  color("black") {
      translate([4.25, 10.5, 0]) hexagon(6, 3);
      translate([10.25, 7.75, 0]) hexagon(6, 3);
      translate([11, 1, 0]) hexagon(6, 3);
      translate([5.75, -3, 0]) hexagon(6, 3);
  };
}
