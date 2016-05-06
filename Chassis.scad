use <lib/AcmeScrew/PrintrbotLeadScrew.scad>;
use <lib/connectors/screw_tabs.scad>;
use <lib/hexxed/logo.scad>;
use <lib/fonts/OpenDyslexicRegular.scad>;
use <printer/hexagon.scad>;
use <printer/shell.scad>;
use <printer/printrboard.scad>;
use <printer/extrudrboard.scad>;
use <lib/stepper_motor.scad>;

$fn = 6;
$kern = 0.6;

// ############### //
// Printer Chassis //
// ############### //

module LeadScrew() LeadScrew(
  100,
  Inch2MM(1/16),
  Inch2MM(1/4)/2
);

module LinearBearing(fn = 24) union() {
  translate([0, 0, -0.1]) cylinder(3, d=8+$kern, $fn = fn);
  translate([0, 0, 2.9]) cylinder(3.2, d=15.1, $fn = fn);
  translate([0, 0, 2.9 + 3.2]) cylinder(0.8, d=14.6, $fn = fn);
  translate([0, 0, 2.9 + 3.2 + 0.8]) cylinder(16.2, d=15.1, $fn = fn);
  translate([0, 0, 2.9 + 3.2 + 0.8 + 16.2]) cylinder(0.8, d=14.6, $fn = fn);
  translate([0, 0, 2.9 + 3.2 + 0.8 + 16.2 + 0.8]) cylinder(3.2, d=15.1, $fn = fn);
  translate([0, 0, 2.9 + 3.2 + 0.8 + 16.2 + 0.8 + 3.2]) cylinder(3, d=8+$kern, $fn = fn);
};

module LinearBearingCover(cutout = false, XYZKern = [0, 0, 0]) {
  unidiff(cutout ? 1 : -1) {
    translate([0, 0, 5]) cube(
      ParametricKern([30, 25, 10], XYZKern),
      center = true
    );

    translate([-15, 0, 10]) rotate([0, 90, 0])
      LinearBearing(24);

    for(x=[0:1], y=[0:1])
      mirror([x, y, 0]) translate([10, 10, 0]) {
      cylinder(20, d=3);
      cylinder(3, d=5.5);
    };
  };
};

module LinearBearingScrews(fn=24) union() {
  for(y=[4, 26], z=[30/5*1,30/5*2,30/5*3,30/5*4]) translate([0, y, z]) {
    rotate([0, 90, 0]) cylinder(10, d=3, $fn = 6);
    for(x=[0, 7]) translate([x, 0, 0])
      rotate([0, 90, 0]) cylinder(3, d=5.2, $fn = fn);
  };
}

module LinearBearingMount(fn=24) difference() {
  translate([0, 0, 0]) cube([10, 30, 30]);
  translate([10, 15, 0]) LinearBearing(fn);
  LinearBearingScrews(fn);
};

module ZRod(fn = 24) difference() {
  union() {
    cube([25, 125+($kern*2), 45]);
    cube([25 + 8, 125+($kern * 2), 10]);
  };

  // Top Mounts
  translate([17-$kern, 0, 40-$kern]) cube([9+$kern, 125 + ($kern * 2), 6]);
  for(i=[1:10]) translate([17 + (25 - 17) / 2, (125 + ($kern * 2)) / 11 * i, 25])
    cylinder(21, d=3, $fn=6);

  // Bot Mounts
  for(i=[1:10]) translate([25 + 4, (125 + ($kern * 2)) / 11 * i, -1])
    cylinder(21, d=3, $fn=6);

  // Vertical Linear Bearings
  for(y=[5, 125 + ($kern *2) - 35]) translate([0, y, 0]) {
    translate([0, -$kern, 0]) cube([10+$kern, 30+($kern*2), 30+$kern]);
    translate([10+$kern, 0, 0]) LinearBearingScrews(fn);
    translate([10, 15, 0]) {
      LinearBearing(fn);
      translate([0, 0, -0.5])cylinder(46, d=8+$kern, $fn = fn);
    }
  }
}

module ZRodA() ZRod();

module Base() {
  cube([61, 125 + ($kern * 2), 5]);
}

module Chassis() {
  translate([0, 5, 0])
    LinearBearingMount();
  translate([0, 125 + ($kern * 2) - 35, 0])
    LinearBearingMount();
  !translate([0, 0, 0]) ZRodA();
  //translate([20 + ($kern * 1), 0, 0]) Base();
  //translate([91 + ($kern * 2), 0, 0]) ZRodB();
};

Chassis();
