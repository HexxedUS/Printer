use <../mcad/polyholes.scad>;

module ConnectorScrewTabs_Tabs(
  area = [10, 83, 10],
  tab = 5,
  margin = 6,
  kern = 0.8,
  cutout = false,
  only = 0,
) for(i = (only == 0 ? [
    margin + (cutout ? 0 : kern / 2),
    area[1] - margin - tab - (cutout ? kern : kern / 2)
  ] : (only == 2 ? [
    area[1] - margin - tab - (cutout ? kern : kern / 2)
  ] : (only == 1 ? [
    margin + (cutout ? 0 : kern / 2),
  ] : [])))
) translate([0, i, cutout ? -kern : 0]) cube([
  area[0],
  tab + (cutout ? kern : 0),
  area[2] + (cutout ? kern * 2 : 0)
]);

module ConnectorScrewTabs_Screws(
  area = [10, 83, 10],
  tab = 5,
  margin = 6,
  kern = 0.8,
  screw_diameter = 3,
  screw_length = 16,
  screw_cap_diameter = 5,
  screw_cap_depth = 3,
  cutout = false,
  only = 0,
) {
  _screw_length = margin * 2 + kern + tab;
  screw_length = screw_length < _screw_length ? _screw_length : screw_length;

  echo("SD: ", screw_diameter);
  echo("SCD: ", screw_cap_diameter);

  for(i = ((only == 0 || only == 3) ? [0, area[1] - screw_length] : (
           (only == 2 || only == 4) ? [area[1] - screw_length] : (
           (only == 1 || only == 5) ? [0] : [])))
  ) translate([area[0] / 2, i, area[2] / 2])
    rotate([-90, 0, 0]) union() {
    if(margin > screw_cap_depth) translate([0, 0, i == 0 ? -0.01 : screw_length - screw_cap_depth + 0.01])
      polyhole(screw_cap_depth, screw_cap_diameter + kern + 0.01);
    translate([0, 0, i==0 ? 0 : -kern]) polyhole(screw_length + kern, screw_diameter);
  }
};

module ConnectorScrewTabs(
  area = [10, 83, 10],
  tab = 5,
  margin = 6,
  kern = 0.8,
  screw_diameter = 3,
  screw_length = 16,
  screw_cap_diameter = 5,
  screw_cap_depth = 3,
  cutout = false,
  only = 0,
) {
  if(cutout) union() {
    ConnectorScrewTabs_Tabs(area, tab, margin, kern, cutout, only);
    ConnectorScrewTabs_Screws(area, tab, margin, kern, screw_diameter, screw_length, screw_cap_diameter, screw_cap_depth, cutout, only);
  };

  if(!cutout) difference() {
    ConnectorScrewTabs_Tabs(area, tab, margin, kern, cutout, only);
    ConnectorScrewTabs_Screws(area, tab, margin, kern, screw_diameter, screw_length, screw_cap_diameter, screw_cap_depth, cutout, only);
  };
}
