include <../include/variables.scad>;
include <../include/functions.scad>;
include <../include/parts/linear_bearing.scad>;
include <../include/parts/stepper_motor.scad>;
include <../lib/AcmeScrew/PrintrbotLeadScrew.scad>;


$baseWidth = 125 + nkern(2);

$chassisWidth = $baseWidth;
$chassisLength = 111 + nkern(2);
$chassisHeight = 75 + nkern(2);

$leadScrewLength = $chassisHeight;
$leadScrewDiameter = Inch2MM(1/4)/2;
$leadScrewTorque = Inch2MM(1/16);

$fnHex = 6;
$fnCircle = 24;

module ZRodsGroup() for(x=[0:1]) mirror([x, 0, 0]) {
  translate([$chassisLength/2 - 10, 0, 0])
    cube([20, $chassisWidth, $chassisHeight-12-nkern(2)], center = true);
  translate([$chassisLength/2 - 5, 0, 0])
    cube([10, $chassisWidth, $chassisHeight], center = true);
};

module ZRodsBearings(cutout = false) for(y=[0:1], z=[0:1])
  mirror([0, y, 0]) mirror([0, 0, z])
  translate([(-$chassisLength/2) + 10.01, 0, 0])
  translate([0, $chassisWidth/2-20, 0])
  translate([0, 0, 15])
  LinearBearingCover($fnCircle, $kern, cutout=cutout, center=true);

module ZRodsDifference() for(x=[0:1]) mirror([x, 0, 0]) {
  // Rods
  for(y=[0:1]) mirror([0, y, 0])
    translate([$chassisLength/2 - 10, 0, 0])
    translate([0, $chassisWidth/2-20, 0])
    translate([0, 0, -($chassisHeight + 1)/2])
    cylinder($chassisHeight + 1, d=8+nkern(2), $fn=$fnCircle);

  for(y=[0:1], z=[0:1], i=[30, 55]) mirror([0, y, 0]) mirror([0, 0, z])
    translate([81/2, i, $chassisHeight/2-10]) {
    cylinder(11, d=3, $fn=$fnHex);
    translate([0, 0, 10-3.5]) cylinder(4, d=5.5, $fn=$fnCircle);
  }

  ZRodsBearings(cutout=true);
};

module ZRodsUnion() for(x=[0:1]) mirror([x, 0, 0]) {
  ZRodsBearings(cutout=false);
};

module YRodsBearings(cutout = false) for(x=[0:1], z=[0:1])
  mirror([x, 0, 0]) mirror([0, 0, z])
  translate([20.5, 0, 0])
  translate([0, 24, 0])
  translate([0, 0, $chassisHeight/2-10.01])
  rotate([0, 90, 0]) LinearBearingCover($fnCircle, $kern, cutout=cutout, center=true);

module YRodsDifference() for(y=[0:1]) mirror([0, y, 0]) {
  // Rods
  for(z=[0:1]) mirror([0, 0, z])
    translate([($chassisLength+1)/2, 0, 0])
    translate([0, 24, 0])
    translate([0, 0, $chassisHeight/2-10])
    rotate([0, -90, 0]) cylinder($chassisLength + 1, d=8+nkern(2), $fn=$fnCircle);

  YRodsBearings(cutout=true);
};

module YRodsUnion() for(y=[0:1]) mirror([0, y, 0]) {
  YRodsBearings(cutout=false);
};

module BaseGroup() {
  //translate([-5, -$chassisWidth/2, -($chassisHeight-12-nkern(2))/2])cube([10, $chassisWidth, $chassisHeight-12-nkern(2)]);

  // Base
  for(z=[0:1]) mirror([0, 0, z]) {
    translate([0, 0, $chassisHeight/2 - 3])
      cube([$chassisLength - 20 - nkern(2), $chassisWidth, 6], center = true);
    translate([0, 0, $chassisHeight/2 - 10])
      cube([$chassisLength - 40 - nkern(2), $chassisWidth, 20], center = true);
  };
};

module ScrewScrews(n=6) for(i=[0:n-1])
  rotate([0, 0,360/n*i]) translate([14, 0, 0]) {
  cylinder(3+nkern(1), d=5+nkern(1), $fn=$fnCircle);
  cylinder(12, d=3, $fn=$fnHex);
};

module ScrewDifference() translate([0, 0, -$chassisHeight/2]) {
  cylinder(20, d=20+nkern(2), $fn=$fnCircle);
  cylinder(6, d=36, $fn=$fnCircle);
  LeadScrewCutout();
  ScrewScrews();
};

module LeadScrewCutout(
  length = $leadScrewLength,
  diameter = $leadScrewDiameter,
  torque = $leadScrewTorque,
) translate([0, 0, -0.5]) {
  translate([0, 0, 20]) cylinder(length + 1, d=diameter+4, $fn=24);
  import("ChassisScrew.stl");
};

module LeadScrewThreads(
  length = $leadScrewLength,
  diameter = $leadScrewDiameter,
  torque = $leadScrewTorque,
) translate([0, 0, -0.5])
  LeadScrew(length + 1, torque, diameter);

module ScrewUnion() translate([0, 0, -$chassisHeight/2]) difference() {
  group() {
    cylinder(20, d=20, $fn=$fnCircle);
    cylinder(6-nkern(1), d=36-nkern(2), $fn=$fnCircle);
  };

  import("ChassisScrew.stl");
  ScrewScrews();
};

module MotorDifference() translate([21+(71/2), 0, 0]) {
  cube(ParametricKern([42, 42, 46],[1, 1, 1],$kern*2), center=true);
  translate([0, 0, 46/2]) StepperMotor(cutout=true, center=true, fn=24, height=15, screws=true);
}

module Chassis() union() {
  difference() {
    group() {
      BaseGroup();
      ZRodsGroup();
    };

    YRodsDifference();
    ZRodsDifference();
    ScrewDifference();
    MotorDifference();
  };

  group() {
    //YRodsUnion();
    //ZRodsUnion();
    ScrewUnion();
    //LeadScrewThreads($chassisHeight);
  };
};

Chassis();
