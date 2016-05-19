include <../patterns/hexagon.scad>;
include <../fonts/OpenDyslexicRegular.scad>;

module Logo(h=10, scale=20) render() rotate([90, 0, -90]) union() {
  translate([-22, 0, 0]) rotate([3/9, 3, 0])
    LogoBloom(h*6/9, scale);
  translate([2, 0, 0]) rotate([-6, 0, 0])
    LogoText(h*9/9, scale);
  translate([28, -8, 0]) rotate([-6, 0, 0])
    LogoText(h*9/9, scale*5/18, "Still Human");
};

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

module LogoText(h=1, scale=1, text="Hexxed") render() translate([0, 0, h/2]) scale([scale, scale, 1]) {
  scale([0.02, 0.02, 1]) OpenDyslexicRegular(text, center=true, height=h);
};
