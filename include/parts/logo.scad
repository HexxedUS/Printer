include <../patterns/hexagon.scad>;
include <../fonts/OpenDyslexicRegular.scad>;

module Logo(h=1, scale=1) render() union() {
  LogoBloom(h*7/8, scale);
  translate([2, 0, 0]) rotate([-5, 0, 0])
    LogoText(h*9/8, scale);
}

module LogoBloom(h=1, scale=1) render() scale([scale, scale, 1])
  for(vector=[
    [0, 0, 0],
    [HexagonX(1, 1, 1/8), HexagonY(1, 1, 1/8), 0],
    [0, HexagonY(2, 1, 1/8), 0],
    [HexagonX(1, 1, 1/8), -HexagonY(1, 1, 1/8), 0],
    [-HexagonX(1, 1, 1/8), HexagonY(1, 1, 1/8), 0],
    [0, -HexagonY(2, 1, 1/8), 0],
    [-HexagonX(1, 1, 1/8), -HexagonY(1, 1, 1/8), 0]
  ]) translate(vector) cylinder(h, d=1, fn=6);

module LogoText(h=1, scale=1, text="Hexxed") render() translate([0, 0, h/2]) scale([scale, scale, h]) {
  scale([0.02, 0.02, 1]) OpenDyslexicRegular(text, center=true, height=h);
};
