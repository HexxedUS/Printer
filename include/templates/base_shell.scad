use <../functions.scad>;
use <../patterns/hexagon.scad>;

//Power Supply 215x?x50

module BaseShellScrew(head=true) render() color("green") rotate([90, 0, 0]) {
  if(head) translate([0, 0, -0.5]) cylinder(4, d=5.5, $fn=$fnCircle);
  cylinder(20, d=3, $fn=$fnHex);
};

module BaseShellXSide(
  xyz=[$baseLength, $baseWidth, $baseHeight],
  alt=false
) render() mirror([alt ? 1 : 0, 0, 0]) {
  translate([-xyz[0]/2 - 5 - nkern(1), 0, 0])
    cube([10, xyz[1]-12-nkern(2), xyz[2]], center=true);
  for(y=[0:1]) mirror([0, y, 0])
    translate([-xyz[0]/2 - (10+nkern(1))/2, xyz[1]/2 - 3, 0])
    cube([10+nkern(1), 6, xyz[2]], center=true);
};

module BaseShellZSideDiff(
  xyz=[$baseLength, $baseWidth, $baseHeight],
  alt=false
) render() if(!alt) for(y=[0:1]) mirror([0, y, 0])
  translate([0, -xyz[1]/2+6+(3+nkern(1))/2, xyz[2]/2 -15+3/2])
  cube([xyz[0]+25, 3+nkern(1), 3+nkern(2)], center=true);

module BaseShellZSide(
  xyz=[$baseLength, $baseWidth, $baseHeight],
  alt=false
) render() mirror([0, 0, alt ? 1 : 0])
  translate([0, 0, xyz[2]/2 +(alt ? -5 : -10)])
  cube([xyz[0], xyz[1]-12-nkern(2), 10], center=true);

module BaseShellYSideUnion(
  xyz=[$baseLength, $baseWidth, $baseHeight],
  alt=false
) render() if(!alt) for(y=[0:1]) mirror([0, y, 0])
  translate([0, -xyz[1]/2 +9/2, xyz[2]/2 -15+(3/2)])
  cube([xyz[0], 9, 3], center=true);

module BaseShellYSide(
  xyz=[$baseLength, $baseWidth, $baseHeight],
  alt = false,
  hexagonOffset = [0, 0], // X&Z-Axis
  hexagonSize = 14,
  hexagonSpacing = undef,
  hexagonX = 8,
  hexagonY = 8
) render() mirror([0, alt ? 1 : 0, 0])
  translate([0, xyz[1]/2-3, 0]) {

  difference() {
    cube([xyz[0], 6, xyz[2]], center = true);
    translate([hexagonOffset[0], 4, hexagonOffset[1]]) color("blue") rotate([90, 0, 0])
      HexagonPattern(hexagonX, hexagonY, 8, d=hexagonSize, s=hexagonSpacing);
  };

  translate([0, 0, (-xyz[2]/2) + 5]) cube([xyz[0], 6, 10], center=true);
  translate([0, 0, (xyz[2]/2) - (15/2)]) cube([xyz[0], 6, 15], center=true);
  translate([0, -3/2, (xyz[2]/2) - 15 +(3/2)]) cube([xyz[0], 9, 3], center=true);
};

module BaseShellScrews(
  xyz=[$baseLength, $baseWidth, $baseHeight],
  alt = false,
  front = true,
  back = true,
  connectorFront = false,
  connectorBack = false,
  kern = $kern
) render() mirror([0, alt ? 1 : 0, 0])
  for(z=[0:1], x=[0:1]) mirror([x, 0, 0]) mirror([0, 0, z])
  translate([front && x == 1 || back && x == 0 ? +5+nkern(0.5) : -5-nkern(0.5), 0, 0])
  translate([xyz[0]/2, xyz[1]/2, xyz[2]/2 +(z > 0 ? -5 : -10)]) {

  BaseShellScrew();
  translate([10+kern, 0, 0]) BaseShellScrew();
};

module BaseShellCableTrayDiff(
  xyz=[$baseLength, $baseWidth, $baseHeight],
  alt = false,
) render() mirror([0, 0, alt ? 1 : 0])
  for(y=[30, 0, -30])
  translate([0, y, xyz[2]/2 +(alt ? -5 : -10)]) difference() {

  union() {
    cube([xyz[0]+1, 22, 4], center=true);
    translate([0, 0, -5/2]) cube([xyz[0]+1, 3, 5], center=true);
  };

  for(y=[0:1]) mirror([0, y, 0])
    translate([0, 2.5, -5/2])
    cube([xyz[0]+1, 2, 4], center=true);
};

module BaseShellConnector(
  xyz=[$baseLength, $baseWidth, $baseHeight],
  altY = false,
  altX = false,
  cutout = false,
  trans=[0, 0, 0],
  kern = $kern,
) render() mirror([0, altY ? 1 : 0, 0])
  mirror([altX ? 1 : 0, 0, 0])
  for(z=[0:1]) mirror([0, 0, z])
  translate([
    xyz[0]/2,
    ((xyz[1]-12-nkern(2))/2)-(7/2),
    (xyz[2]/2) +(z>0 ? -5 : -10)
  ]+trans) cube([
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
  trans = [0, 0, 0],
  cableTracksTop=false,
  cableTracksBottom=false,
  hexagonX = 10,
  hexagonY = 10,
  hexagonSize = 14,
  hexagonSpacing = undef,
  hexagonOffset = [0, 0] // X&Z-Axis
) translate(trans) union() {
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
      if($children > 0) children(0);
    };

    if(top) BaseShellZSideDiff(xyz, false);

    if(top && cableTracksTop)
      BaseShellCableTrayDiff(xyz, false);
    if(bottom && cableTracksBottom)
      BaseShellCableTrayDiff(xyz, true);

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
    if($children > 1) children(1);
  };

  difference() {
    group() {
      if(right) BaseShellYSideUnion(xyz, false);
      if(left) BaseShellYSideUnion(xyz, true);
    };

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
  };

  // Third Group
  if($children > 2) children(2);
};
