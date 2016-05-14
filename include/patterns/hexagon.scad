function HexagonX(x=0, d=8, s=0) =
  (((d * 3/4) + (s * 3/4)) * x);

function HexagonY(y=0, d=8, s=0) =
  ((((d/2) * (sqrt(3)/2)) + ((s/2) * (sqrt(3)/2))) * y);

module Hexagon(
  z=6, d=8, fn=$fnHex
) cylinder(h=z, d=d, $fn=fn);

module HexagonPattern(
  x=0, y=0, z=6,
  d=8, s=undef,
  fn=$fnHex
) render() {
  s = s == undef ? d * 1/8 : s;

  translate([-HexagonX(x, d, s), 0, 0]) for(x=[0:abs(x)], y=[0:abs(y)]) translate([
    HexagonX(x, d, s), HexagonY(x, d, s), 0
  ]) translate([
    HexagonX(y, d, s), -HexagonY(y, d, s), 0
  ]) Hexagon(z=z, d=d, fn=fn);
};

function BloomFunc(rowN=0) = rowN <= 0 ? 1 : pow(rowN, 2);

function HexagonAngle(row=0) = row <= 0 ? [0] : (
  row == 1 ? [for(i=[1:6]) [0, 360/6*i]] : (
  row % 2 > 0 ? [for(i=[1:6*row]) [i%2>0 ? 90*3/4 : 0, 360/(6*row)*i]] :
  [for(i=[1:6*row]) [i%2>0 ? 90 : 0, 360/(6*row)*i]]
));

module HexagonBloom(
  h=1, n=3,
  d=8, s=undef,
  fn=$fnHex
) {
  s = s == undef ? d * 1/8 : s;

  Hexagon(z=h, d=d, fn=fn);
  for(row=[1:n]) for(angle=HexagonAngle(row))
    rotate([0, 0, angle[1]]) translate(
      angle[0] > 0 ?
        [HexagonX(row, d, s)*7/8, HexagonY(row, d, s)*7/8, 0]
      : [HexagonX(row, d, s), HexagonY(row, d, s), 0]
    ) rotate([0, 0, angle[0]]) Hexagon(z=h, d=d, fn=fn);
}
