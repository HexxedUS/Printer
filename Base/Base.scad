include <../include/variables.scad>;
include <../include/functions.scad>;
include <../include/patterns/hexagon.scad>;
include <../include/templates/base_shell.scad>;
include <../include/mounts/extrudrboard.scad>;
include <../include/mounts/printrboard.scad>;
include <../include/mounts/xaxis_motor.scad>;
include <../include/parts/stepper_motor.scad>;
include <../include/parts/reset_button.scad>;
include <../include/parts/logo.scad>;

$baseWidth = 125 + nkern(2);
$baseLength = 336 + nkern(6);
$baseHeight = 75 + 10; // + 10 is for a bottom

$chassisWidth = $baseWidth;
$chassisLength = 111 + nkern(2);
$chassisHeight = 75 + nkern(2);

$leadScrewLength = $chassisHeight;
$leadScrewDiameter = Inch2MM(1/4)/2;
$leadScrewTorque = Inch2MM(1/16);

$fnHex = 6;
$fnCircle = 24;

$BS1Length=(225+nkern(2))/3;

module BaseSection1() union() BaseShell(
  [$BS1Length, $baseWidth, $baseHeight],
  connectorFront=true,
  connectorBack=false,
  cableTracksTop=true,
  front=true
) {
  group(){};
  group() {
    // Front Logo Diff
    translate([-$BS1Length/2-7.25, 0, -5/2])
      cube([7, $baseWidth-12-nkern(2)-8, $baseHeight-25], center=true);

    // Bottom Screw Holes
    translate([-5+$BS1Length, 0, -$baseHeight/2]) {
      color("green") for(v=[
        [-97.5, 47.5, 0],
        [-97.5, -47.5, 0]
      ]) translate(v) {
        cylinder(10, d=3, $fn=$fnHex);
        cylinder(3.5, d=5.5, $fn=$fnCircle);
      };
    };
  };
  translate([-$BS1Length/2-3, 0, -5/2]) Logo();
};

$BS2Length=$BS1Length;

module BaseSection2() BaseShell(
  [$BS2Length, $baseWidth, $baseHeight],
  connectorFront=true,
  connectorBack=true,
  cableTracksTop=true
) {
  group() {
    /*translate([-5, 0, -$baseHeight/2+50/2+10+nkern(1)]) color("red")
      cube([215, 115, 50], center=true);*/

    translate([$BS2Length/2-(46+nkern(1))/2, 0, $baseHeight/2-2]) cube([
      46+nkern(1), 57, 42+nkern(1)
    ], center=true);
  };

  group() {
    translate([-5, 0, -$baseHeight/2]) {
      color("green") for(v=[
        [-10.5, -7.5, 0]
      ]) translate(v) {
        cylinder(10, d=3, $fn=$fnHex);
        cylinder(3.5, d=5.5, $fn=$fnCircle);
      };
    };

    translate([0, 0, $baseHeight/2-2]) cube([
      $BS2Length+1, 42+nkern(1), 42+nkern(1)
    ], center=true);
  };

  group() {
    difference() {
      translate([$BS2Length/2-(46+nkern(1))/2, 0, $baseHeight/2-2]) cube([
        46+nkern(1), 57, 42+nkern(1)
      ], center=true);

      translate([0, 0, $baseHeight/2-2]) cube([
        $BS2Length+1, 42+nkern(1), 42+nkern(1)
      ], center=true);
    };

    XAxisMotor();
  };
};

$BS3Length=$BS1Length;

module BaseSection3() BaseShell(
  [$BS3Length, $baseWidth, $baseHeight],
  connectorFront=true,
  connectorBack=true,
  cableTracksTop=true
) {
  group(){};
  group(){
    translate([
      $BS3Length/2-10/2, 0,
      -$baseHeight/2+7-nkern(0.5)
    ]) cube([10, 82, 7], center=true);

    translate([-5-$BS3Length, 0, -$baseHeight/2]) {
      color("green") for(v=[
        [79.5, 47.5, 0],
        [79.5, -47.5, 0]
      ]) translate(v) {
        cylinder(10, d=3, $fn=$fnHex);
        cylinder(3.5, d=5.5, $fn=$fnCircle);
      };
    };
  };
};

$BS4Length=20;

module BaseSection4() union() BaseShell(
  [$BS4Length, $baseWidth, $baseHeight],
  connectorFront=true,
  connectorBack=true,
  cableTracksTop=true,
  cableTracksBottom=true
) {
  // Group
  for(y=[0:1]) mirror([0, y, 0]) {
    translate([0, $baseWidth/2-20, -$baseHeight/2])
      cylinder($baseHeight, d=20, $fn=$fnCircle);
    translate([0, $baseWidth/2-12-nkern(2), 0])
      cube([20, 20-6-nkern(1), $baseHeight], center=true);
  };
  // Diff
  for(y=[0:1]) mirror([0, y, 0]) {
    translate([0, $baseWidth/2-20, -$baseHeight/2+10])
      cylinder($baseHeight+1, d=8+nkern(1), $fn=$fnCircle);

    // Screws
    for(z=[5, 22]) translate([0, $baseWidth/2-6-nkern(1), z])
      rotate([90, 0, 0]) {

      cylinder(20-6-nkern(1), d=3, $fn=$fnHex);
      cylinder(6, d=5.5, $fn=$fnCircle);
    };
  };
  // Union
  for(y=[0:1]) mirror([0, y, 0]) {

  };
};

$BS5Length=71;
$BS5Height=$baseHeight;

module BaseSection5() union() BaseShell(
  [$BS5Length, $baseWidth, $BS5Height],
  connectorFront=true,
  connectorBack=true,
  cableTracksTop=true,
  cableTracksBottom=true
) {
  group() {
    // Z-Axis LeadScrew Motor
    translate([0, 0, $baseHeight/2-23/2-5])
      cube([42, 42, 23], center=true);

    // TEMP
    /*translate([0, 0, $baseHeight/2-5])
      cube([42, 42, 3], center = true);*/

    // IEC Cable Connector
    translate([0, $baseWidth/2 - 6/2, -2.5])
      cube([40 + ($kern * 2) + 10, 6, 47 + ($kern * 2) + 10], center = true);
  };
  group() {
    // Z-Axis LeadScrew Motor
    #translate([0, 0, -$baseHeight/2+46/2+10+nkern(1)])
      cube([42, 42, 46], center=true);
    translate([0, 0, $baseHeight/2-23-5])
      StepperMotor(height=23, center=true, cutout=true, screws=true);

    // Z-Axis LeadScrewMount Cover
    translate([0, 0, $baseHeight/2-5-3])
      cube([42, 82, 8], center = true);
    translate([0, 0, $baseHeight/2-6.5])
      cube([42, 94, 3], center = true);
    // Z-Axis LeadScrewMount Cover Screw Holes...
    for(x=[0:1], y=[0:1]) mirror([x, 0, 0]) mirror([0, y, 0])
      translate([(42/2)-5, (94/2)-(12/4), ($baseHeight/2)-5-7]) cylinder(10, d=3);

    // IEC Cable Connector
    translate([0, $baseWidth/2 - 6/2, -2.5])
      cube([27 + ($kern * 2), 10, 47 + ($kern * 2)], center = true);
    for(x=[0:1]) mirror([x, 0, 0])
      translate([-20, $baseWidth/2 + 1, -2.5])
      rotate([90, 0, 0]) cylinder(8, d=3);
  };
  group() {
    // Z-Axis LeadScrewMount Cover
    difference() {
      translate([0, 0, $baseHeight/2-5-((3-nkern(1))/2)])
        cube([42-nkern(2), 94-nkern(2), 3-nkern(1)], center = true);

      for(x=[0:1], y=[0:1]) mirror([x, 0, 0]) mirror([0, y, 0])
        translate([(42/2)-5, (94/2)-(12/4), ($baseHeight/2)-5-7]) cylinder(10, d=3);
      translate([0, 0, ($baseHeight/2)-5-7]) cylinder(10, d=20, $fn=$fnCircle);
      translate([42/2-5/2, 0, ($baseHeight/2)-7]) cube([5, 10, 4], center = true);
    };
  };
};


$BS6Length=$BS4Length;

module BaseSection6() union() BaseSection4();

$BS7Length=71;
$BS7Height=$baseHeight;

module BaseSection7() union() BaseShell(
  [$BS7Length, $baseWidth, $BS7Height],
  connectorFront=false,
  connectorBack=true,
  cableTracksTop=true,
  cableTracksBottom=true,
  back=true,
  top=true,
  right=true,
  left=true
) {
  group() {
    translate([0, 0, -$BS7Height/2+4.5])
      PrintrboardMount(baseHeight=4, height=8);
    translate([0, -100/2+40/2, $BS7Height/2-9.5])
      rotate([0, 180, 90])
      ExtrudrboardMount(baseHeight=4, height=8);
  };
  group() {
    // Hexagon Pattern (on back)
    translate([$BS7Length/2+6, 0, 5]) intersection() {
      translate([-6.75, 0, 0]) rotate([90, 0, 90]) HexagonPattern(13, 13, 12);
      #cube([12, $baseWidth-12-nkern(2), $BS7Height-40], center=true);
    };

    // USB/SD Slot Cutout
    translate([$BS7Length/2+6+nkern(1), 0, -$BS7Height/2+15])
      cube([9, $baseWidth-12-nkern(2), 10], center=true);
    translate([$BS7Length/2, 50, -$BS7Height/2+12]) {
      translate([0, -21, 0]) cube([8, 14, 4]);
      translate([0, -92, 0]) cube([8, 10, 6]);
    };

    // Bootloader Switch
    translate([$BS7Length/2-12.5, 15, $BS7Height/2-15])
      for(y=[0:1]) mirror([0, y, 0]) translate([0, 5, 0])
      cylinder(8, d=2, $fn=$fnHex);

    // Reset button Hole
    translate([
      $BS7Length/2-10,
      $baseWidth/2-6-nkern(1)-10,
      -10+nkern(1)
    ]) ResetButton(true);
  };
  group() {
    // Rear Text
    translate([$BS7Length/2+3+nkern(1), 0, -$BS7Height/2+12+nkern(1)]) render() {
      translate([0, -20, 0]) rotate([90, 0, 90]) scale([0.1, 0.1, 1]) OpenDyslexicRegular("USB", center=true, height=5);
      translate([0, 20, 0]) rotate([90, 0, 90]) scale([0.1, 0.1, 1]) OpenDyslexicRegular("SD", center=true, height=5);
    };

    // Reset button
    translate([
      $BS7Length/2-10,
      $baseWidth/2-6-nkern(1)-10,
      -10+nkern(2)
    ]) ResetButton(false);
  };
};

module Base(
  PowerSupply=true,
  ZAxis=true,
  Electronics=true,
) {
  if(Electronics) {
    translate([
      +$BS5Length/2
      +$BS6Length
      +$BS7Length/2
      +nkern(2),
      0, 0
    ]) BaseSection7();
  }

  if(ZAxis) {
    translate([
      +$BS5Length/2
      +$BS6Length/2
      +nkern(1),
      0, 0
    ]) BaseSection6();

    translate([0, 0, 0])
      BaseSection5();

    translate([
      -$BS5Length/2
      -$BS4Length/2
      -nkern(1),
      0, 0
    ]) BaseSection4();
  };

  if(PowerSupply) {
    translate([
      -$BS5Length/2
      -$BS4Length
      -$BS3Length/2
      -nkern(2),
      0, 0
    ]) BaseSection3();

    translate([
      -$BS5Length/2
      -$BS4Length
      -$BS3Length
      -$BS2Length/2
      -nkern(3),
      0, 0
    ]) BaseSection2();

    !translate([
      -$BS5Length/2
      -$BS4Length
      -$BS3Length
      -$BS2Length
      -$BS1Length/2
      -nkern(4),
      0, 0
    ]) BaseSection1();
  };
};

//translate([0, 0, 100]) import("../Chassis/Chassis.stl");
Base(PowerSupply=true, ZAxis=false, Electronics=false);
