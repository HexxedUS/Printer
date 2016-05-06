use <../functions.scad>;
use <../patterns/hexagon.scad>;

//Power Supply 215x?x50

module BaseShellScrew(head=true) color("green") rotate([90, 0, 0]) {
  if(head) cylinder(3.5, d=5.5, $fn=$fnCircle);
  cylinder(20, d=3, $fn=$fnHex);
};

module BaseShellXSide(
  xyz=[$baseLength, $baseWidth, $baseHeight],
  alt=false
) mirror([alt ? 1 : 0, 0, 0])
  translate([-xyz[0]/2 - (10/2), 0, 0]) {

  cube([10, xyz[1]-12-nkern(2), xyz[2]], center=true);
  for(y=[0:1]) mirror([0, y, 0]) translate([0, xyz[1]/2 - 3, 0])
    cube([10, 6, xyz[2]], center=true);
};

module BaseShellZSide(
  xyz=[$baseLength, $baseWidth, $baseHeight],
  alt=false
) mirror([0, 0, alt ? 1 : 0])
  translate([0, 0, xyz[2]/2 +(alt ? -5 : -10)])
  cube([xyz[0], xyz[1]-12-nkern(2), 10], center=true);

module BaseShellYSide(
  xyz=[$baseLength, $baseWidth, $baseHeight],
  alt = false,
  hexagonOffset = [0, 0], // X&Z-Axis
  hexagonSize = 14,
  hexagonSpacing = undef,
  hexagonX = 8,
  hexagonY = 8
) mirror([0, alt ? 1 : 0, 0])
  translate([0, $chassisWidth/2-3, 0]) {

  difference() {
    cube([xyz[0], 6, xyz[2]], center = true);
    translate([hexagonOffset[0], 4, hexagonOffset[1]]) color("blue") rotate([90, 0, 0])
      HexagonPattern(hexagonX, hexagonY, 8, d=hexagonSize, s=hexagonSpacing);
  };

  translate([0, 0, (-xyz[2]/2) + 5]) cube([xyz[0], 6, 10], center=true);
  translate([0, 0, (xyz[2]/2) - (15/2)]) cube([xyz[0], 6, 15], center=true);
};

module BaseShellScrews(
  xyz=[$baseLength, $baseWidth, $baseHeight],
  alt = false,
  front = true,
  back = true,
  connectorFront = false,
  connectorBack = false,
  kern = $kern
) mirror([0, alt ? 1 : 0, 0])
  for(z=[0:1], x=[0:1]) mirror([x, 0, 0]) mirror([0, 0, z])
  translate([front && x == 1 || back && x == 0 ? +5 : -5, 0, 0])
  translate([xyz[0]/2, xyz[1]/2, xyz[2]/2 +(z > 0 ? -5 : -10)]) {

  BaseShellScrew();
  translate([10+kern, 0, 0]) BaseShellScrew();
};


module BaseShellConnector(
  xyz=[$baseLength, $baseWidth, $baseHeight],
  altY = false,
  altX = false,
  cutout = false,
  kern = $kern,
) mirror([0, altY ? 1 : 0, 0])
  mirror([altX ? 1 : 0, 0, 0])
  for(z=[0:1]) mirror([0, 0, z])
  translate([
    xyz[0]/2,
    ((xyz[1]-12-nkern(2))/2)-(7/2),
    (xyz[2]/2) +(z>0 ? -5 : -10)
  ]) cube([
    20 +kern,
    7 +(cutout ? 0 : -kern*2),
    10 +(cutout ? 0 : -kern*2)
  ], center=true);

module BaseShell(
  xyz=[71, $baseWidth, $baseHeight],
  front = false,
  back = false,
  top = true,
  bottom = true,
  left = true,
  right = true,
  screws = true,
  connectorFront = true,
  connectorBack = true,
  kern = $kern,
  hexagonX = 8,
  hexagonY = 8,
  hexagonSize = 14,
  hexagonSpacing = undef,
  hexagonOffset = [0, 0] // X&Z-Axis
) union() {
  difference() {
    group() {
      if(bottom) BaseShellZSide(xyz, true); // Z-
      if(top) BaseShellZSide(xyz, false); // Z+

      if(back) BaseShellXSide(xyz, true); // X+
      if(front) BaseShellXSide(xyz, false); // X-

      if(right) BaseShellYSide(
        xyz, true,
        hexagonOffset, hexagonSize,
        hexagonSpacing, hexagonX, hexagonY
      );

      if(left) BaseShellYSide(
        xyz, false,
        hexagonOffset, hexagonSize,
        hexagonSpacing, hexagonX, hexagonY
      );

      // Connectors
      if(connectorFront) BaseShellConnector(
        xyz, true, false, cutout=false, kern=kern
      );

      if(connectorBack) BaseShellConnector(
        xyz, false, true, cutout=false, kern=kern
      );

      // First Group
      children(0);
    };

    // Connectors
    if(connectorFront) BaseShellConnector(
      xyz, false, false, cutout=true, kern=kern
    );

    if(connectorBack) BaseShellConnector(
      xyz, true, true, cutout=true, kern=kern
    );

    // Screws
    if(screws) {
      if(right) BaseShellScrews(
        xyz, true, front, back,
        connectorFront, connectorBack,
        kern
      );

      if(left) BaseShellScrews(
        xyz, false, front, back,
        connectorFront, connectorBack,
        kern
      );
    };

    // Second Group
    children(1);
  };

  // Third Group
  children(2);
};
