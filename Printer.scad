use <lib/AcmeScrew/PrintrbotLeadScrew.scad>;
use <lib/connectors/screw_tabs.scad>;
use <lib/hexxed/logo.scad>;
use <lib/fonts/OpenDyslexicRegular.scad>;
use <include/patterns/hexagon.scad>;
use <include/templates/base_shell.scad>;
use <include/mounts/printrboard.scad>;
use <include/mounts//extrudrboard.scad>;
use <include/parts/stepper_motor.scad>;


$fn = 6;
$kern = 0.6;

module PowerSupplyA() difference() {
  union() {
    translate([-5, 0, 61.1]) cube([76, 113 + 6 + 6 + ($kern * 2), 10]);

    difference() {
      translate([-10, 0, 0]) cube([10, 113 + 6 + 6 + ($kern * 2), 75]);
      translate([-11, 6, 6]) cube([6, 113 + ($kern * 2), 64]);
    };

    translate([-7, 98, 53]) scale(3) rotate([-72 ,0,0])rotate([0,90,0]) HexxedLogo();
    translate([-9, 105, 40]) scale([3, 1, 1]) scale(0.4) rotate([88,-3,-90]) OpenDyslexicRegular("Hexxed");

    translate([71, 0, 61.1]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10]);
    for(y=[0, 113 + 6 + ($kern * 2)]) translate([0, y, 0]) union() {
      translate([-5, 0, 0]) cube([5, 6, 70]);
      translate([-5, 0, 69]) cube([76, 6, 6]);

      difference() {
        cube([71, 6, 75]);
        translate([-14 * 3/4 * 2, 6.5, 5.5]) rotate([90, 0, 0]) Hexagon(14, 7, 5, grid=[3,3]);
        translate([32.5, -1, 11.5]) rotate([-90, 0, 0]) cylinder(8, d=3.2);
        translate([32.5, y == 0 ? -1 : 3, 11.5]) rotate([-90, 0, 0]) cylinder(4, d=5.2, $fn=24);
      };
    };
  };

  translate([-$kern, 6, 0]) color("blue") cube([71+$kern, 113 + ($kern * 2), 61.1]);

  for(x=[1:2], y=[1:6])translate([
    (71 / 3) * x,
    ((113 + 6 + 6 + ($kern * 2))/7) * y,
    60.1,
  ]) cylinder(12, d=3);
};

module PowerSupplyB() difference() {
  union() {
    translate([0, 0, 61.1]) cube([71, 113 + 6 + 6 + ($kern * 2), 10]);


    translate([71, 0, 61.1]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10]);
    for(y=[0, 113 + 6 + ($kern * 2)]) translate([0, y, 0]) union() {
      translate([0, 0, 69]) cube([71, 6, 6]);

      difference() {
        cube([71, 6, 75]);
        translate([-10 * 3/4, 6.5, 5.5]) rotate([90, 0, 0]) Hexagon(14, 7, 5, grid=[3,3]);
      };
    };

  };

  translate([71/2, (113 + 6 + 6 + ($kern * 2)) / 2, 61]) cube([42 + ($kern * 2), 42 + ($kern * 2), 40], center = true);
  translate([0, 0, 61.1]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10], cutout=true);


  translate([-$kern, 6, 0]) color("blue") cube([71+$kern, 113 + ($kern * 2), 61.1]);

  for(x=[1:2], y=[1:4])translate([
    (71 / 3) * x,
    ((113 + 6 + 6 + ($kern * 2))/5) * y,
    60.1,
  ]) cylinder(12, d=3);
};

module PowerSupplyC() difference() {
  union() {
    translate([0, 0, 61.1]) cube([71, 113 + 6 + 6 + ($kern * 2), 10]);

    translate([71, 0, 61.1]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10]);
    for(y=[0, 113 + 6 + ($kern * 2)]) translate([0, y, 0]) union() {
      translate([0, 0, 69]) cube([71, 6, 6]);

      difference() {
        union() {
          difference() {
            cube([71, 6, 75]);
            translate([-15 * 3/4 * 2, 6.5, 5.5]) rotate([90, 0, 0]) Hexagon(14, 7, 5, grid=[3,3]);
          };

          translate([71-37, 0, 0]) cube([15, 6, 20]);
        };

        translate([71-33, -1, 11.5]) rotate([-90, 0, 0]) cylinder(8, d=3);
        translate([71-33, y == 0 ? -1 : 3, 11.5]) rotate([-90, 0, 0]) cylinder(4, d=5.2, $fn=24);
      };
    };
  };

  translate([0, 0, 61.1]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10], cutout=true);
  translate([-$kern, 6, 0]) color("blue") cube([71+$kern, 113 + ($kern * 2), 61.1]);

  for(x=[1:2], y=[1:6])translate([
    (71 / 3) * x,
    ((113 + 6 + 6 + ($kern * 2))/7) * y,
    60.1,
  ]) cylinder(12, d=3);
};

module ZRod(height = 80) union() {
    cylinder(height, d=20, $fn=24);
    translate([-10, -20, 0]) cube([20, 20, height]);
};

module ZRodDiff(height = 80, screws = true)  {
  translate([0, 0, 0]) cylinder(height, d=8+($kern*2), $fn=24);
  if(screws) translate([0, 0, height - 10]) rotate([90, 0, 0]) cylinder(20, d=3);
  if(screws) translate([0, -10, height - 10]) rotate([90, 0, 0]) cylinder(15, d=5+$kern, $fn=24);
}

module ZRodMountDiff() {
  translate([0, 0, 40]) ZRodDiff(40);
  translate([-10, -10, 45]) cube([20, 20, 16]);
};

module ZRodA() difference() {
  union() {
    HexShell(tabs=true, cutout=true, length=32);
    translate([22, 20, 0]) ZRod();
    translate([22, 93 + 6 + 6 + ($kern * 2), 0]) rotate([0, 0, 180]) ZRod();
    translate([32, 0, 0]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10]);
  };

  translate([22, 20, 0]) ZRodMountDiff();
  translate([22, 93 + 6 + 6 + ($kern * 2), 0]) rotate([0, 0, 180]) ZRodMountDiff();
};

module ZRodB() difference() {
  union() {
    HexShell(tabs=true, cutout=true, length=20);
    translate([10, 20, 0]) ZRod();
    translate([10, 93 + 6 + 6 + ($kern * 2), 0]) rotate([0, 0, 180]) ZRod();
    translate([-10, 0, 0]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10]);
    translate([20, 0, 0]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10]);
    translate([-10, 0, 61.1]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10]);
  };

  translate([10, 20, 0]) ZRodMountDiff();
  translate([10, 93 + 6 + 6 + ($kern * 2), 0]) rotate([0, 0, 180]) ZRodMountDiff();
};

module ZMotor() !difference() {
  union() {
    HexShell(cutout=true, length=71);
    translate([71/2, (113 + 6 + 6 + ($kern * 2)) / 2, 45 + (25/2)]) cube([
      42 + ($kern * 2) + (5 * 2),
      42 + ($kern * 2) + (5 * 2),
    25,
    ], center = true);

    translate([0, 0, 0]) cube([71, 6, 10]);
    translate([0, 113 + 6 + ($kern * 2), 0]) cube([71, 6, 10]);

    // Power
    !translate([71/2, (113 + 6 + 6 + ($kern * 2)) - 6/2, 10 + 51.1/2]) cube([40 + ($kern * 2) + 10, 6, 47 + ($kern * 2) + 10], center = true);
  };

  // Power
  translate([71/2, (113 + 6 + 6 + ($kern * 2)) - 6/2, 10 + 51.1/2]) cube([27 + ($kern * 2), 10, 47 + ($kern * 2)], center = true);
  translate([71/2 + 20, (113 + 6 + 6 + ($kern * 2)) + 1, 10 + 51.1/2]) rotate([90, 0, 0]) cylinder(8, d=3);
  translate([71/2 - 20, (113 + 6 + 6 + ($kern * 2)) + 1, 10 + 51.1/2]) rotate([90, 0, 0]) cylinder(8, d=3);


  // Motor
  translate([71/2, (113 + 6 + 6 + ($kern * 2)) / 2, 50 + 46/2]) cube([42 + ($kern * 2), 42 + ($kern * 2), 46], center = true);
  translate([71/2+8, (113 + 6 + 6 + ($kern * 2)) / 2, 49]) cube([38 + ($kern * 2), 22 + ($kern * 2), 50], center = true);

  ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10], cutout = true);
  translate([61, 0, 0]) {
    ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10], cutout = true);
    translate([0, 0, 61.1]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10], cutout = true);
  };

  for(x=[1:2], y=[1:4]) translate([
    (71 / 3) * x,
    ((113 + 6 + 6 + ($kern * 2))/5) * y,
    60.1,
  ]) cylinder(12, d=3);
};

module ChainMount(male=false) {
  module ChainMountFemale(alt=false) translate([0, 2, 0]) rotate([90, 0, 0]) difference() {
    union() {
      translate([-5, 0, 0]) cube([10, 5, 2]);
      translate([0, 5, 0]) cylinder(2, d=10, $fn = 24);
    };

    translate([0, 5, alt ? 2 - 1.2 : -0.1]) cylinder(1.3, d=6, $fn = 24);
  };

  if(!male) {
    translate([0, 18]) ChainMountFemale();
    translate([0, 3, 0]) ChainMountFemale(true);
  };
};

module CableChains() difference() {
  union() {
    HexShell(length=71);
    translate([0, 0, 0]) cube([71, 6, 10]);
    translate([0, 113 + 6 + ($kern * 2), 0]) cube([71, 6, 10]);

    // Back Panel
    translate([61, 0, 0]) cube([10, 6, 75]);
    translate([61, (113 + 6 + 6 + ($kern * 2))-6, 0]) cube([10, 6, 75]);
    translate([65, 0, 59]) cube([6, 113 + 6 + 6 + ($kern * 2), 75-59]);

    difference() {
      translate([67, 0, 10+$kern]) cube([4, (113 + 6 + 6 + ($kern * 2)), 65-$kern]);
      translate([70, 6+$kern, 10+$kern]) cube([2, 113, 15]);
      translate([65, 0, 30]) rotate([90, 0, 0]) rotate([0, 90, 0]) Hexagon(14, 7, 5, grid=[4,2]);
      translate([65, ((113 + (6 * 2) + ($kern * 2))/2)+50, 15]) {
        translate([0, -21, 0]) cube([8, 14, 4]);
        translate([0, -92, 0]) cube([8, 10, 6]);
      };
    };
  };

  translate([0, 0, 0]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10], cutout = true);
  translate([0, 0, 61.1]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10], cutout = true);
  translate([61, 0, 0]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10], cutout = true);
  translate([-1, 6, 0]) cube([22, 113 + ($kern * 2), 35]);

  // Reset Button
  translate([71-6-12, 113+6-12, 60]) {
    translate([0, 0, 6]) cube([10, 10, 20]);
    translate([5, 5, 0]) cylinder(20, d=8, $fn=24);
  }

  // Chain Mounts
  translate([20, 20, 60]) cylinder(12, d=3);
  translate([20, 43, 60]) cylinder(12, d=3);
  translate([20, (113 + 6 + 6 + ($kern * 2)) - 23 - 20, 60]) cylinder(12, d=3);
  translate([20, (113 + 6 + 6 + ($kern * 2)) - 20, 60]) cylinder(12, d=3);

  // Cable Holes
  translate([15.5, 25, 61]) cube([9, 13, 10.2]);
  translate([15.5, (113 + 6 + 6 + ($kern * 2)) - 25 - 13, 61]) cube([9, 13, 10.2]);
}

module Extrudrboard() difference() {
  union() {
    translate([0, 6 + $kern, 0]) cube([71, 113, 10]);
    translate([71/2, 35, 3]) rotate([0, 0, 90])
      ExtrudrboardMount();
  };

  ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10], cutout = true);
  translate([61, 0, 0]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10], cutout = true);
  translate([71/2, (113 + (6 * 2) + ($kern * 2))/2, 3]) ExtrudrboardMount(true);
};

module Printrboard() difference() {
  union() {
    translate([0, 6 + $kern, 0]) cube([71, 113, 10]);
    translate([71/2, (113 + (6 * 2) + ($kern * 2))/2, 3])
      PrintrboardMount();
  };

  translate([61, 0, 0]) ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10], cutout = true, only=3);
  ConnectorScrewTabs([10, 113 + 6 + 6 + ($kern * 2), 10], cutout = true);
};

module CableChainMounts() difference() {
  union() {
    translate([13, 20 - 5, 0]) cube([14, 33, 6]);
    translate([20, 20, 6]) ChainMount();
    translate([13, (113 + 6 + 6 + ($kern * 2)) - 23 - 20 - 5, 0]) cube([14, 33, 6]);
    translate([20, (113 + 6 + 6 + ($kern * 2)) - 23 - 20, 6]) ChainMount();

    // Reset Button
    translate([71-6-12, 113+6-12, 0]) union() {
      translate([0, 0, 0]) cube([9, 9, 5]);
      translate([9/2, 9/2, 5]) cylinder(7, d=8-($kern * 2), $fn=24);
      translate([0, 20, 0]) cube([10, 10, 5]);
      translate([5, 20, 0]) cylinder(35, d1=10, d2=8-($kern * 2), $fn=24);
    }
  };

  translate([15.5, 25, -0.5]) cube([9, 13, 7]);
  translate([15.5, (113 + 6 + 6 + ($kern * 2)) - 25 - 13, -0.5]) cube([9, 13, 7]);
  translate([20, 20, -0.5]) cylinder(7, d=3);
  translate([20, 20, 2]) cylinder(7, d=5, $fn=24);
  translate([20, 43, -0.5]) cylinder(7, d=3);
  translate([20, 43, 2]) cylinder(7, d=5, $fn=24);
  translate([20, (113 + 6 + 6 + ($kern * 2)) - 23 - 20, -0.5]) cylinder(7, d=3);
  translate([20, (113 + 6 + 6 + ($kern * 2)) - 23 - 20, 2]) cylinder(7, d=5, $fn=24);
  translate([20, (113 + 6 + 6 + ($kern * 2)) - 20, -0.5]) cylinder(7, d=3);
  translate([20, (113 + 6 + 6 + ($kern * 2)) - 20, 2]) cylinder(7, d=5, $fn=24);

  // Reset Button
  translate([71-6-12, 113+6-12, 0]) union() {
    translate([9/2, 9/2, 0]) cylinder(13, d=3);
    translate([9/2, 9/2, 0]) cylinder(3.5, d=5, $fn=24);
    translate([5, 20, 25]) cylinder(11, d=3);
  }
};

module PrinterBase() {
  translate([0  + ($kern * 0), 0, 0]) PowerSupplyA();
  translate([71 + ($kern * 1), 0, 0]) PowerSupplyB();
  translate([(71 * 2) + ($kern * 2), 0, 0]) PowerSupplyC();
  translate([(71 * 3) + ($kern * 3), 0, 0]) ZRodA();
  translate([(71 * 3) + 32 + ($kern * 4), 0, 0]) ZMotor();
  translate([(71 * 3) + 32 + ($kern * 4), 0, 0]) Extrudrboard();
  translate([(71 * 4) + 32 + ($kern * 5), 0, 0]) ZRodB();
  translate([(71 * 4) + 32 + 20 + ($kern * 6), 0, 0]) CableChains();
  translate([(71 * 4) + 32 + 20 + ($kern * 6), 0, 71.1+$kern]) CableChainMounts();
  translate([(71 * 4) + 32 + 20 + ($kern * 6), 0, 0]) Printrboard();
};

module Printer() {
  translate([0, 0, 0]) PrinterBase();
};

Printer();
