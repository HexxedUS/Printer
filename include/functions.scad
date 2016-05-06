function nkern(i = 1) = $kern * i;
function Inch2MM(i = 1) = 25.4 * i;

module unidiff(type = 0) {
  if(type == 0) children();

  if(type > 0) union() {
    children(0);
    children([1:$children-1]);
  };

  if(type < 0) difference() {
    children(0);
    children([1:$children-1]);
  };
};

module Part(name="Part") union() {
  echo("Part: ", name);
  difference() {
    union() {
      children(0);
    };
    children(1);
  };
  children(2);
};

module PartGroup(name="PartGroup") group() {
  echo("PartGroup: ", name)
  children();
};

function Vec3Sub(mat3=[0, 0, 0], sub=0) = [for(v=mat3) v - sub];
function Vec3Add(mat3=[0, 0, 0], add=0) = [for(v=mat3) v + add];

function ParametricKern(v=[0, 0, 0], a=[0, 0, 0], kern=$kern) = [
  v[0] + (a[0] > 0 ? +kern : (a[0] < 0 ? -kern : 0)),
  v[1] + (a[1] > 0 ? +kern : (a[1] < 0 ? -kern : 0)),
  v[2] + (a[2] > 0 ? +kern : (a[2] < 0 ? -kern : 0)),
];
