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
) {
  s = s == undef ? d * 1/8 : s;

  translate([-HexagonX(x, d, s), 0, 0]) for(x=[0:abs(x)], y=[0:abs(y)]) translate([
    HexagonX(x, d, s), HexagonY(x, d, s), 0
  ]) translate([
    HexagonX(y, d, s), -HexagonY(y, d, s), 0
  ]) Hexagon(z=z, d=d, fn=fn);
};
