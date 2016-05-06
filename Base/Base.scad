include <../include/variables.scad>;
include <../include/functions.scad>;
include <../include/patterns/hexagon.scad>;
include <../include/templates/base_shell.scad>;
include <../include/mounts/extrudrboard.scad>;
include <../include/mounts/printrboard.scad>;
//include <../include/parts/linear_bearing.scad>;
include <../include/parts/stepper_motor.scad>;
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

module BaseSection1() BaseShell(
  [$BS1Length, $baseWidth, $BS5Height],
  connectorFront=true,
  connectorBack=true,
  cableTracks=true
);

$BS2Length=71;

module BaseSection2() BaseShell(
  [$BS2Length, $baseWidth, $BS5Height],
  connectorFront=true,
  connectorBack=true,
  cableTracks=true
);

$BS3Length=71;

module BaseSection3() BaseShell(
  [$BS3Length, $baseWidth, $BS5Height],
  connectorFront=true,
  connectorBack=true,
  cableTracks=true
);

$BS4Length=20;
$BS4Height=$baseHeight;

module BaseSection4() BaseShell(
  [$BS4Length, $baseWidth, $BS5Height],
  connectorFront=true,
  connectorBack=true,
  cableTracks=true
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

module BaseSection5() BaseShell(
  [$BS5Length, $baseWidth, $BS5Height],
  connectorFront=true,
  connectorBack=true,
  cableTracks=true
) {
  group() {
    // Z-Axis LeadScrew Motor
    translate([0, 0, $baseHeight/2-23/2-5])
      cube([42, 42, 23], center=true);

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

    // IEC Cable Connector
    translate([0, $baseWidth/2 - 6/2, -2.5])
      cube([27 + ($kern * 2), 10, 47 + ($kern * 2)], center = true);
    for(x=[0:1]) mirror([x, 0, 0])
      translate([-20, $baseWidth/2 + 1, -2.5])
      rotate([90, 0, 0]) cylinder(8, d=3);
  };
  group() {};
};


$BS6Length=$BS4Length;

module BaseSection6() BaseSection4();

$BS7Length=71;
$BS7Height=$baseHeight;

module BaseSection7() BaseShell(
  [$BS7Length, $baseWidth, $BS7Height],
  connectorFront=false,
  connectorBack=true,
  cableTracks=true,
  back=true,
  top=true,
  right=true
) {
  group() {
    translate([0, 0, -$BS7Height/2+4.5])
      PrintrboardMount(baseHeight=4, height=8);
    translate([0, -100/2+40/2, $BS7Height/2-9.5])
      rotate([0, 180, 090])
      ExtrudrboardMount(baseHeight=4, height=8);
  };
  group() {};
  group() {};
};

module Base(
  PowerSupply=true,
  ZAxis=true,
  Electronics=true,
) {
  //translate([0, 0, 0])
  //translate([0, 0, 0])

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
};

//translate([0, 0, 100]) import("../Chassis/Chassis.stl");
Base(PowerSupply=true);
