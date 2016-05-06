include <../include/variables.scad>;
include <../include/functions.scad>;
include <../include/patterns/hexagon.scad>;
include <../include/templates/base_shell.scad>;
include <../include/mounts/extrudrboard.scad>;
//include <../include/parts/linear_bearing.scad>;
//include <../include/parts/stepper_motor.scad>;
//include <../lib/AcmeScrew/PrintrbotLeadScrew.scad>;

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

$BS1Length=71;

module BaseSection1() {
  BaseShell([
    $BS1Length, $baseWidth, $baseHeight
  ], front=true);
};

$BS2Length=71;

module BaseSection2() {
  BaseShell([$BS2Length, $baseWidth, $baseHeight]);
};

$BS3Length=71;

module BaseSection3() {
  BaseShell([$BS3Length, $baseWidth, $baseHeight]);
};

$BS4Length=20;

module BaseSection4()
  BaseShell([
    $BS4Length, $baseWidth, $baseHeight
  ], connectorFront=true, connectorBack=true) {

  // Group
  for(y=[0:1]) mirror([0, y, 0]) {
    translate([0, $baseWidth/2-20, -$baseHeight/2])
      cylinder($baseHeight, d=20, $fn=$fnCircle);
    translate([0, $baseWidth/2-12-nkern(2), 0])
      cube([20, 20-6-nkern(1), $baseHeight], center=true);
  };
  // Diff
  for(y=[0:1]) mirror([0, y, 0]) {
    translate([0, $baseWidth/2-20, 0])
      cylinder($baseHeight/2+1, d=8+nkern(1), $fn=$fnCircle);

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

$BS5Length=$chassisLength-40-nkern(2);

module BaseSection5() BaseShell([
  $BS5Length, $baseWidth, $baseHeight
], connectorFront=true, connectorBack=true) {
  translate([0, -28, -$baseHeight/2+6/2])
    rotate([0, 0, 90]) ExtrudrboardMount();
  group() {};
  group() {};
};


$BS6Length=$BS4Length;

module BaseSection6() BaseSection4();

module Base() {
  //translate([0, 0, 0])
  //translate([0, 0, 0])
  //translate([0, 0, 0])
  translate([
    +$BS5Length/2
    +$BS6Length/2
    +nkern(1),
    0, 0
  ]) BaseSection6();

  !translate([0, 0, 0])
    BaseSection5();

  translate([
    -$BS5Length/2
    -$BS4Length/2
    -nkern(1),
    0, 0
  ]) BaseSection4();

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

  translate([
    -$BS5Length/2
    -$BS4Length
    -$BS3Length
    -$BS2Length
    -$BS1Length/2
    -nkern(4),
    0, 0
  ]) BaseSection1();
};

//translate([0, 0, 100]) import("../Chassis/Chassis.stl");
Base();
