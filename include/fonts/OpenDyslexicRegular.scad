module OpenDyslexicRegular_contour00x21_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 8], [5, 10], [7, 10], 
		[9.5, 10.0], [12, 10], [13, 10], 
		[13.0, 9.5], [13, 9], [14, 8], 
		[14.0, 5.0], [14, 2], [14, 0], 
		[12, 0], [9.5, 0.0], [7, 0], 
		[5, 0], [5, 2], [5.0, 5.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 8], [5, 10], [7, 10], 
		[9.5, 10.0], [12, 10], [13, 10], 
		[13.0, 9.5], [13, 9], [14, 8], 
		[14.0, 5.0], [14, 2], [14, 0], 
		[12, 0], [9.5, 0.0], [7, 0], 
		[5, 0], [5, 2], [5.0, 5.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x21_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([13.0, 9.5], [13, 9], [14, 8],steps,height);
}
}

module OpenDyslexicRegular_contour00x21_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 8], [5, 10], [7, 10],steps,height);
	BezConic([12, 10], [13, 10], [13.0, 9.5],steps,height);
	BezConic([14, 2], [14, 0], [12, 0],steps,height);
	BezConic([7, 0], [5, 0], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x21(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x21_skeleton(height);
			OpenDyslexicRegular_contour00x21_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x21_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x21_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 43], [6.0, 53.5], [6, 64], 
		[6, 64], [6.5, 64.5], [7, 65], 
		[8, 65], [9.5, 65.5], [11, 66], 
		[12, 66], [12.0, 65.5], [12, 65], 
		[12, 64], [12.5, 53.5], [13, 43], 
		[13.5, 31.0], [14, 19], [14, 18], 
		[13, 18], [9.5, 18.0], [6, 18], 
		[5, 18], [5, 19], [5.5, 31.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 43], [6.0, 53.5], [6, 64], 
		[6, 64], [6.5, 64.5], [7, 65], 
		[8, 65], [9.5, 65.5], [11, 66], 
		[12, 66], [12.0, 65.5], [12, 65], 
		[12, 64], [12.5, 53.5], [13, 43], 
		[13.5, 31.0], [14, 19], [14, 18], 
		[13, 18], [9.5, 18.0], [6, 18], 
		[5, 18], [5, 19], [5.5, 31.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour10x21_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 64], [6, 64], [6.5, 64.5],steps,height);
	BezConic([12.0, 65.5], [12, 65], [12, 64],steps,height);
}
}

module OpenDyslexicRegular_contour10x21_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6.5, 64.5], [7, 65], [8, 65],steps,height);
	BezConic([11, 66], [12, 66], [12.0, 65.5],steps,height);
	BezConic([14, 19], [14, 18], [13, 18],steps,height);
	BezConic([6, 18], [5, 18], [5, 19],steps,height);
}
}

module OpenDyslexicRegular_contour10x21(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x21_skeleton(height);
			OpenDyslexicRegular_contour10x21_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x21_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x21(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x21(steps, height);
		
	}
}

module OpenDyslexicRegular_chunk20x21(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x21(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x21=[[5, 0], [14, 66]];

module OpenDyslexicRegular_letter0x21(steps=2, height) {
	OpenDyslexicRegular_chunk10x21(steps, height);
	OpenDyslexicRegular_chunk20x21(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x22_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[23, 66], [24, 66], [24, 64], 
		[24.5, 56.5], [25, 49], [25, 48], 
		[23, 48], [21.0, 48.0], [19, 48], 
		[18, 48], [18, 49], [18.0, 56.5], 
		[18, 64], [18, 66], [20, 66], 
		[21.5, 66.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[23, 66], [24, 66], [24, 64], 
		[24.5, 56.5], [25, 49], [25, 48], 
		[23, 48], [21.0, 48.0], [19, 48], 
		[18, 48], [18, 49], [18.0, 56.5], 
		[18, 64], [18, 66], [20, 66], 
		[21.5, 66.0], ]);
}}}

module OpenDyslexicRegular_contour00x22_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x22_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([23, 66], [24, 66], [24, 64],steps,height);
	BezConic([25, 49], [25, 48], [23, 48],steps,height);
	BezConic([19, 48], [18, 48], [18, 49],steps,height);
	BezConic([18, 64], [18, 66], [20, 66],steps,height);
}
}

module OpenDyslexicRegular_contour00x22(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x22_skeleton(height);
			OpenDyslexicRegular_contour00x22_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x22_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x22_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 66], [11, 66], [11, 64], 
		[11.5, 56.5], [12, 49], [12, 48], 
		[10, 48], [8.0, 48.0], [6, 48], 
		[5, 48], [5, 49], [5.0, 56.5], 
		[5, 64], [5, 66], [7, 66], 
		[8.5, 66.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 66], [11, 66], [11, 64], 
		[11.5, 56.5], [12, 49], [12, 48], 
		[10, 48], [8.0, 48.0], [6, 48], 
		[5, 48], [5, 49], [5.0, 56.5], 
		[5, 64], [5, 66], [7, 66], 
		[8.5, 66.0], ]);
}}}

module OpenDyslexicRegular_contour10x22_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x22_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([10, 66], [11, 66], [11, 64],steps,height);
	BezConic([12, 49], [12, 48], [10, 48],steps,height);
	BezConic([6, 48], [5, 48], [5, 49],steps,height);
	BezConic([5, 64], [5, 66], [7, 66],steps,height);
}
}

module OpenDyslexicRegular_contour10x22(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x22_skeleton(height);
			OpenDyslexicRegular_contour10x22_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x22_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x22(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x22(steps, height);
		
	}
}

module OpenDyslexicRegular_chunk20x22(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x22(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x22=[[5, 48], [25, 66]];

module OpenDyslexicRegular_letter0x22(steps=2, height) {
	OpenDyslexicRegular_chunk10x22(steps, height);
	OpenDyslexicRegular_chunk20x22(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x23_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[31, 25], [31, 26], [30.5, 26.0], 
		[30, 26], [30, 26], [26.0, 26.0], 
		[22, 26], [22, 26], [21.5, 26.0], 
		[21, 26], [21, 25], [21.0, 22.0], 
		[21, 19], [21, 19], [21.0, 18.5], 
		[21, 18], [22, 18], [25.5, 18.0], 
		[29, 18], [30, 18], [30.5, 18.0], 
		[31, 18], [31, 19], [31.0, 22.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[31, 25], [31, 26], [30.5, 26.0], 
		[30, 26], [30, 26], [26.0, 26.0], 
		[22, 26], [22, 26], [21.5, 26.0], 
		[21, 26], [21, 25], [21.0, 22.0], 
		[21, 19], [21, 19], [21.0, 18.5], 
		[21, 18], [22, 18], [25.5, 18.0], 
		[29, 18], [30, 18], [30.5, 18.0], 
		[31, 18], [31, 19], [31.0, 22.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x23_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([31, 25], [31, 26], [30.5, 26.0],steps,height);
	BezConic([30.5, 26.0], [30, 26], [30, 26],steps,height);
	BezConic([22, 26], [22, 26], [21.5, 26.0],steps,height);
	BezConic([21.5, 26.0], [21, 26], [21, 25],steps,height);
	BezConic([21.0, 18.5], [21, 18], [22, 18],steps,height);
	BezConic([29, 18], [30, 18], [30.5, 18.0],steps,height);
	BezConic([30.5, 18.0], [31, 18], [31, 19],steps,height);
}
}

module OpenDyslexicRegular_contour00x23_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21, 19], [21, 19], [21.0, 18.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x23(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x23_skeleton(height);
			OpenDyslexicRegular_contour00x23_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x23_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x23_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 46], [20, 46], [20.0, 45.5], 
		[20, 45], [20, 44], [20.0, 39.5], 
		[20, 35], [20, 34], [20.5, 33.5], 
		[21, 33], [22, 33], [25.5, 33.0], 
		[29, 33], [30, 33], [30.5, 33.5], 
		[31, 34], [31, 34], [31.0, 39.5], 
		[31, 45], [31, 45], [31.5, 45.5], 
		[32, 46], [33, 46], [34.0, 46.0], 
		[35, 46], [36, 46], [36.5, 45.5], 
		[37, 45], [37, 44], [37.0, 39.5], 
		[37, 35], [37, 34], [37.0, 33.5], 
		[37, 33], [38, 33], [41.5, 33.0], 
		[45, 33], [46, 33], [46, 31], 
		[46.0, 29.5], [46, 28], [46, 27], 
		[45, 27], [42.0, 27.0], [39, 27], 
		[38, 27], [37.5, 26.5], [37, 26], 
		[37, 26], [37.0, 23.0], [37, 20], 
		[37, 19], [37.0, 18.5], [37, 18], 
		[38, 18], [41.5, 18.0], [45, 18], 
		[46, 18], [46, 16], [46.0, 14.5], 
		[46, 13], [46, 11], [45, 11], 
		[42.0, 11.0], [39, 11], [38, 11], 
		[37.5, 10.5], [37, 10], [37, 10], 
		[37.0, 5.5], [37, 1], [37, 1], 
		[36.5, 0.5], [36, 0], [35, 0], 
		[33.5, 0.0], [32, 0], [31, 0], 
		[31.0, 0.5], [31, 1], [31, 2], 
		[31.0, 5.5], [31, 9], [31, 10], 
		[31.0, 10.5], [31, 11], [30, 11], 
		[26.5, 11.0], [23, 11], [20, 11], 
		[20, 10], [20.0, 5.5], [20, 1], 
		[20, 1], [19.5, 0.5], [19, 0], 
		[19, 0], [17.5, 0.0], [16, 0], 
		[15, 0], [15.0, 0.5], [15, 1], 
		[15, 2], [15.0, 5.5], [15, 9], 
		[15, 10], [14.5, 10.5], [14, 11], 
		[13, 11], [9.5, 11.0], [6, 11], 
		[5, 11], [5, 13], [5.0, 14.5], 
		[5, 16], [5, 18], [6, 18], 
		[9.5, 18.0], [13, 18], [14, 18], 
		[14.5, 18.0], [15, 18], [15, 19], 
		[15.0, 22.0], [15, 25], [15, 26], 
		[14.5, 26.5], [14, 27], [13, 27], 
		[9.5, 27.0], [6, 27], [5, 27], 
		[5, 28], [5.0, 29.5], [5, 31], 
		[5, 33], [6, 33], [9.5, 33.0], 
		[13, 33], [14, 33], [14.5, 33.5], 
		[15, 34], [15, 34], [15.0, 39.5], 
		[15, 45], [15, 45], [15.5, 45.5], 
		[16, 46], [16, 46], [17.5, 46.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 46], [20, 46], [20.0, 45.5], 
		[20, 45], [20, 44], [20.0, 39.5], 
		[20, 35], [20, 34], [20.5, 33.5], 
		[21, 33], [22, 33], [25.5, 33.0], 
		[29, 33], [30, 33], [30.5, 33.5], 
		[31, 34], [31, 34], [31.0, 39.5], 
		[31, 45], [31, 45], [31.5, 45.5], 
		[32, 46], [33, 46], [34.0, 46.0], 
		[35, 46], [36, 46], [36.5, 45.5], 
		[37, 45], [37, 44], [37.0, 39.5], 
		[37, 35], [37, 34], [37.0, 33.5], 
		[37, 33], [38, 33], [41.5, 33.0], 
		[45, 33], [46, 33], [46, 31], 
		[46.0, 29.5], [46, 28], [46, 27], 
		[45, 27], [42.0, 27.0], [39, 27], 
		[38, 27], [37.5, 26.5], [37, 26], 
		[37, 26], [37.0, 23.0], [37, 20], 
		[37, 19], [37.0, 18.5], [37, 18], 
		[38, 18], [41.5, 18.0], [45, 18], 
		[46, 18], [46, 16], [46.0, 14.5], 
		[46, 13], [46, 11], [45, 11], 
		[42.0, 11.0], [39, 11], [38, 11], 
		[37.5, 10.5], [37, 10], [37, 10], 
		[37.0, 5.5], [37, 1], [37, 1], 
		[36.5, 0.5], [36, 0], [35, 0], 
		[33.5, 0.0], [32, 0], [31, 0], 
		[31.0, 0.5], [31, 1], [31, 2], 
		[31.0, 5.5], [31, 9], [31, 10], 
		[31.0, 10.5], [31, 11], [30, 11], 
		[26.5, 11.0], [23, 11], [20, 11], 
		[20, 10], [20.0, 5.5], [20, 1], 
		[20, 1], [19.5, 0.5], [19, 0], 
		[19, 0], [17.5, 0.0], [16, 0], 
		[15, 0], [15.0, 0.5], [15, 1], 
		[15, 2], [15.0, 5.5], [15, 9], 
		[15, 10], [14.5, 10.5], [14, 11], 
		[13, 11], [9.5, 11.0], [6, 11], 
		[5, 11], [5, 13], [5.0, 14.5], 
		[5, 16], [5, 18], [6, 18], 
		[9.5, 18.0], [13, 18], [14, 18], 
		[14.5, 18.0], [15, 18], [15, 19], 
		[15.0, 22.0], [15, 25], [15, 26], 
		[14.5, 26.5], [14, 27], [13, 27], 
		[9.5, 27.0], [6, 27], [5, 27], 
		[5, 28], [5.0, 29.5], [5, 31], 
		[5, 33], [6, 33], [9.5, 33.0], 
		[13, 33], [14, 33], [14.5, 33.5], 
		[15, 34], [15, 34], [15.0, 39.5], 
		[15, 45], [15, 45], [15.5, 45.5], 
		[16, 46], [16, 46], [17.5, 46.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour10x23_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20.0, 45.5], [20, 45], [20, 44],steps,height);
	BezConic([20, 35], [20, 34], [20.5, 33.5],steps,height);
	BezConic([20.5, 33.5], [21, 33], [22, 33],steps,height);
	BezConic([29, 33], [30, 33], [30.5, 33.5],steps,height);
	BezConic([30.5, 33.5], [31, 34], [31, 34],steps,height);
	BezConic([31, 45], [31, 45], [31.5, 45.5],steps,height);
	BezConic([37, 35], [37, 34], [37.0, 33.5],steps,height);
	BezConic([37.0, 33.5], [37, 33], [38, 33],steps,height);
	BezConic([39, 27], [38, 27], [37.5, 26.5],steps,height);
	BezConic([37.5, 26.5], [37, 26], [37, 26],steps,height);
	BezConic([37, 20], [37, 19], [37.0, 18.5],steps,height);
	BezConic([37.0, 18.5], [37, 18], [38, 18],steps,height);
	BezConic([39, 11], [38, 11], [37.5, 10.5],steps,height);
	BezConic([37.5, 10.5], [37, 10], [37, 10],steps,height);
	BezConic([31.0, 0.5], [31, 1], [31, 2],steps,height);
	BezConic([31, 9], [31, 10], [31.0, 10.5],steps,height);
	BezConic([31.0, 10.5], [31, 11], [30, 11],steps,height);
	BezConic([23, 11], [20, 11], [20, 10],steps,height);
	BezConic([19.5, 0.5], [19, 0], [19, 0],steps,height);
	BezConic([15.0, 0.5], [15, 1], [15, 2],steps,height);
	BezConic([15, 9], [15, 10], [14.5, 10.5],steps,height);
	BezConic([14.5, 10.5], [14, 11], [13, 11],steps,height);
	BezConic([13, 18], [14, 18], [14.5, 18.0],steps,height);
	BezConic([14.5, 18.0], [15, 18], [15, 19],steps,height);
	BezConic([15, 25], [15, 26], [14.5, 26.5],steps,height);
	BezConic([14.5, 26.5], [14, 27], [13, 27],steps,height);
	BezConic([13, 33], [14, 33], [14.5, 33.5],steps,height);
	BezConic([14.5, 33.5], [15, 34], [15, 34],steps,height);
	BezConic([15, 45], [15, 45], [15.5, 45.5],steps,height);
	BezConic([15.5, 45.5], [16, 46], [16, 46],steps,height);
}
}

module OpenDyslexicRegular_contour10x23_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([19, 46], [20, 46], [20.0, 45.5],steps,height);
	BezConic([31.5, 45.5], [32, 46], [33, 46],steps,height);
	BezConic([35, 46], [36, 46], [36.5, 45.5],steps,height);
	BezConic([36.5, 45.5], [37, 45], [37, 44],steps,height);
	BezConic([45, 33], [46, 33], [46, 31],steps,height);
	BezConic([46, 28], [46, 27], [45, 27],steps,height);
	BezConic([45, 18], [46, 18], [46, 16],steps,height);
	BezConic([46, 13], [46, 11], [45, 11],steps,height);
	BezConic([37, 1], [37, 1], [36.5, 0.5],steps,height);
	BezConic([36.5, 0.5], [36, 0], [35, 0],steps,height);
	BezConic([32, 0], [31, 0], [31.0, 0.5],steps,height);
	BezConic([20, 1], [20, 1], [19.5, 0.5],steps,height);
	BezConic([16, 0], [15, 0], [15.0, 0.5],steps,height);
	BezConic([6, 11], [5, 11], [5, 13],steps,height);
	BezConic([5, 16], [5, 18], [6, 18],steps,height);
	BezConic([6, 27], [5, 27], [5, 28],steps,height);
	BezConic([5, 31], [5, 33], [6, 33],steps,height);
}
}

module OpenDyslexicRegular_contour10x23(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x23_skeleton(height);
			OpenDyslexicRegular_contour10x23_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x23_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x23(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x23(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x23(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x23(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x23=[[5, 0], [46, 46]];

module OpenDyslexicRegular_letter0x23(steps=2, height) {
	OpenDyslexicRegular_chunk00x23(steps, height);
	OpenDyslexicRegular_chunk10x23(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x24_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[24, 12], [24, 10], [26, 11], 
		[28, 11], [29.0, 11.5], [30, 12], 
		[31.0, 12.5], [32, 13], [32.5, 14.0], 
		[33, 15], [33, 16], [33, 22], 
		[26, 24], [25, 24], [24.5, 23.5], 
		[24, 23], [24, 22], [24.0, 17.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[24, 12], [24, 10], [26, 11], 
		[28, 11], [29.0, 11.5], [30, 12], 
		[31.0, 12.5], [32, 13], [32.5, 14.0], 
		[33, 15], [33, 16], [33, 22], 
		[26, 24], [25, 24], [24.5, 23.5], 
		[24, 23], [24, 22], [24.0, 17.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x24_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 12], [24, 10], [26, 11],steps,height);
	BezConic([26, 11], [28, 11], [29.0, 11.5],steps,height);
	BezConic([29.0, 11.5], [30, 12], [31.0, 12.5],steps,height);
	BezConic([31.0, 12.5], [32, 13], [32.5, 14.0],steps,height);
	BezConic([32.5, 14.0], [33, 15], [33, 16],steps,height);
	BezConic([33, 16], [33, 22], [26, 24],steps,height);
	BezConic([26, 24], [25, 24], [24.5, 23.5],steps,height);
	BezConic([24.5, 23.5], [24, 23], [24, 22],steps,height);
}
}

module OpenDyslexicRegular_contour00x24_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x24(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x24_skeleton(height);
			OpenDyslexicRegular_contour00x24_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x24_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x24_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[20, 46], [20, 47], [19.5, 47.5], 
		[19, 48], [18, 48], [15, 47], 
		[12.5, 44.5], [10, 42], [10, 39], 
		[10, 36], [12.0, 34.0], [14, 32], 
		[18, 31], [19, 31], [19.5, 31.5], 
		[20, 32], [20, 33], [20.0, 39.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[20, 46], [20, 47], [19.5, 47.5], 
		[19, 48], [18, 48], [15, 47], 
		[12.5, 44.5], [10, 42], [10, 39], 
		[10, 36], [12.0, 34.0], [14, 32], 
		[18, 31], [19, 31], [19.5, 31.5], 
		[20, 32], [20, 33], [20.0, 39.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour10x24_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20, 46], [20, 47], [19.5, 47.5],steps,height);
	BezConic([19.5, 47.5], [19, 48], [18, 48],steps,height);
	BezConic([18, 48], [15, 47], [12.5, 44.5],steps,height);
	BezConic([12.5, 44.5], [10, 42], [10, 39],steps,height);
	BezConic([10, 39], [10, 36], [12.0, 34.0],steps,height);
	BezConic([12.0, 34.0], [14, 32], [18, 31],steps,height);
	BezConic([18, 31], [19, 31], [19.5, 31.5],steps,height);
	BezConic([19.5, 31.5], [20, 32], [20, 33],steps,height);
}
}

module OpenDyslexicRegular_contour10x24_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x24(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x24_skeleton(height);
			OpenDyslexicRegular_contour10x24_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x24_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour20x24_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[25, -7], [25, -9], [24, -9], 
		[22.5, -9.0], [21, -9], [19, -9], 
		[19, -7], [19.5, -3.5], [20, 0], 
		[20, 2], [18, 2], [15, 2], 
		[12.0, 3.0], [9, 4], [6, 5], 
		[5, 5], [5, 7], [5.0, 10.0], 
		[5, 13], [5, 14], [5.5, 14.5], 
		[6, 15], [7, 15], [10, 13], 
		[12.5, 12.0], [15, 11], [18, 11], 
		[20, 11], [20, 13], [20.0, 18.5], 
		[20, 24], [20, 25], [18, 26], 
		[12, 27], [8.5, 30.5], [5, 34], 
		[5, 39], [5, 45], [8.5, 48.5], 
		[12, 52], [19, 53], [21, 53], 
		[21, 55], [21.0, 57.5], [21, 60], 
		[21, 60], [21.5, 60.5], [22, 61], 
		[23, 61], [24, 61], [24.5, 60.5], 
		[25, 60], [25, 60], [25.0, 57.5], 
		[25, 55], [25, 53], [26, 53], 
		[31, 52], [36, 51], [38, 50], 
		[38, 49], [38.0, 48.0], [38, 47], 
		[37, 45], [35, 46], [33, 47], 
		[31.0, 47.5], [29, 48], [26, 48], 
		[25, 48], [25, 46], [24.5, 39.0], 
		[24, 32], [24, 30], [26, 30], 
		[30, 29], [32.5, 28.0], [35, 27], 
		[37.0, 25.5], [39, 24], [39.5, 22.0], 
		[40, 20], [40, 17], [41, 13], 
		[40.0, 10.0], [39, 7], [37.0, 5.5], 
		[35, 4], [32.5, 3.0], [30, 2], 
		[27, 2], [25, 2], [25, 0], 
		[25.0, -3.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[25, -7], [25, -9], [24, -9], 
		[22.5, -9.0], [21, -9], [19, -9], 
		[19, -7], [19.5, -3.5], [20, 0], 
		[20, 2], [18, 2], [15, 2], 
		[12.0, 3.0], [9, 4], [6, 5], 
		[5, 5], [5, 7], [5.0, 10.0], 
		[5, 13], [5, 14], [5.5, 14.5], 
		[6, 15], [7, 15], [10, 13], 
		[12.5, 12.0], [15, 11], [18, 11], 
		[20, 11], [20, 13], [20.0, 18.5], 
		[20, 24], [20, 25], [18, 26], 
		[12, 27], [8.5, 30.5], [5, 34], 
		[5, 39], [5, 45], [8.5, 48.5], 
		[12, 52], [19, 53], [21, 53], 
		[21, 55], [21.0, 57.5], [21, 60], 
		[21, 60], [21.5, 60.5], [22, 61], 
		[23, 61], [24, 61], [24.5, 60.5], 
		[25, 60], [25, 60], [25.0, 57.5], 
		[25, 55], [25, 53], [26, 53], 
		[31, 52], [36, 51], [38, 50], 
		[38, 49], [38.0, 48.0], [38, 47], 
		[37, 45], [35, 46], [33, 47], 
		[31.0, 47.5], [29, 48], [26, 48], 
		[25, 48], [25, 46], [24.5, 39.0], 
		[24, 32], [24, 30], [26, 30], 
		[30, 29], [32.5, 28.0], [35, 27], 
		[37.0, 25.5], [39, 24], [39.5, 22.0], 
		[40, 20], [40, 17], [41, 13], 
		[40.0, 10.0], [39, 7], [37.0, 5.5], 
		[35, 4], [32.5, 3.0], [30, 2], 
		[27, 2], [25, 2], [25, 0], 
		[25.0, -3.5], ]);
}}}

module OpenDyslexicRegular_contour20x24_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20, 0], [20, 2], [18, 2],steps,height);
	BezConic([12.0, 3.0], [9, 4], [6, 5],steps,height);
	BezConic([7, 15], [10, 13], [12.5, 12.0],steps,height);
	BezConic([12.5, 12.0], [15, 11], [18, 11],steps,height);
	BezConic([18, 11], [20, 11], [20, 13],steps,height);
	BezConic([20, 24], [20, 25], [18, 26],steps,height);
	BezConic([19, 53], [21, 53], [21, 55],steps,height);
	BezConic([21, 60], [21, 60], [21.5, 60.5],steps,height);
	BezConic([24.5, 60.5], [25, 60], [25, 60],steps,height);
	BezConic([25, 55], [25, 53], [26, 53],steps,height);
	BezConic([26, 53], [31, 52], [36, 51],steps,height);
	BezConic([35, 46], [33, 47], [31.0, 47.5],steps,height);
	BezConic([31.0, 47.5], [29, 48], [26, 48],steps,height);
	BezConic([26, 48], [25, 48], [25, 46],steps,height);
	BezConic([24, 32], [24, 30], [26, 30],steps,height);
	BezConic([27, 2], [25, 2], [25, 0],steps,height);
}
}

module OpenDyslexicRegular_contour20x24_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, -7], [25, -9], [24, -9],steps,height);
	BezConic([21, -9], [19, -9], [19, -7],steps,height);
	BezConic([18, 2], [15, 2], [12.0, 3.0],steps,height);
	BezConic([6, 5], [5, 5], [5, 7],steps,height);
	BezConic([5, 13], [5, 14], [5.5, 14.5],steps,height);
	BezConic([5.5, 14.5], [6, 15], [7, 15],steps,height);
	BezConic([18, 26], [12, 27], [8.5, 30.5],steps,height);
	BezConic([8.5, 30.5], [5, 34], [5, 39],steps,height);
	BezConic([5, 39], [5, 45], [8.5, 48.5],steps,height);
	BezConic([8.5, 48.5], [12, 52], [19, 53],steps,height);
	BezConic([21.5, 60.5], [22, 61], [23, 61],steps,height);
	BezConic([23, 61], [24, 61], [24.5, 60.5],steps,height);
	BezConic([36, 51], [38, 50], [38, 49],steps,height);
	BezConic([38, 47], [37, 45], [35, 46],steps,height);
	BezConic([26, 30], [30, 29], [32.5, 28.0],steps,height);
	BezConic([32.5, 28.0], [35, 27], [37.0, 25.5],steps,height);
	BezConic([37.0, 25.5], [39, 24], [39.5, 22.0],steps,height);
	BezConic([39.5, 22.0], [40, 20], [40, 17],steps,height);
	BezConic([40, 17], [41, 13], [40.0, 10.0],steps,height);
	BezConic([40.0, 10.0], [39, 7], [37.0, 5.5],steps,height);
	BezConic([37.0, 5.5], [35, 4], [32.5, 3.0],steps,height);
	BezConic([32.5, 3.0], [30, 2], [27, 2],steps,height);
}
}

module OpenDyslexicRegular_contour20x24(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour20x24_skeleton(height);
			OpenDyslexicRegular_contour20x24_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour20x24_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x24(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x24(steps, height);
	translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x24(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x24(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour20x24(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x24=[[5, -9], [41, 61]];

module OpenDyslexicRegular_letter0x24(steps=2, height) {
	OpenDyslexicRegular_chunk00x24(steps, height);
	OpenDyslexicRegular_chunk10x24(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[35, 19], [33, 19], [31.5, 16.5], 
		[30, 14], [30, 10], [30, 8], 
		[31.5, 7.0], [33, 6], [35, 6], 
		[38, 6], [39.5, 7.0], [41, 8], 
		[41, 10], [41, 14], [39.5, 16.5], 
		[38, 19], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[35, 19], [33, 19], [31.5, 16.5], 
		[30, 14], [30, 10], [30, 8], 
		[31.5, 7.0], [33, 6], [35, 6], 
		[38, 6], [39.5, 7.0], [41, 8], 
		[41, 10], [41, 14], [39.5, 16.5], 
		[38, 19], ]);
}}}

module OpenDyslexicRegular_contour00x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([35, 19], [33, 19], [31.5, 16.5],steps,height);
	BezConic([31.5, 16.5], [30, 14], [30, 10],steps,height);
	BezConic([30, 10], [30, 8], [31.5, 7.0],steps,height);
	BezConic([31.5, 7.0], [33, 6], [35, 6],steps,height);
	BezConic([35, 6], [38, 6], [39.5, 7.0],steps,height);
	BezConic([39.5, 7.0], [41, 8], [41, 10],steps,height);
	BezConic([41, 10], [41, 14], [39.5, 16.5],steps,height);
	BezConic([39.5, 16.5], [38, 19], [35, 19],steps,height);
}
}

module OpenDyslexicRegular_contour00x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x25(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x25_skeleton(height);
			OpenDyslexicRegular_contour00x25_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x25_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[35, 23], [40, 23], [43.0, 19.5], 
		[46, 16], [46, 10], [46, 4], 
		[43.0, 0.5], [40, -3], [35, -3], 
		[30, -3], [27.0, 0.5], [24, 4], 
		[24, 10], [24, 16], [27.0, 19.5], 
		[30, 23], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[35, 23], [40, 23], [43.0, 19.5], 
		[46, 16], [46, 10], [46, 4], 
		[43.0, 0.5], [40, -3], [35, -3], 
		[30, -3], [27.0, 0.5], [24, 4], 
		[24, 10], [24, 16], [27.0, 19.5], 
		[30, 23], ]);
}}}

module OpenDyslexicRegular_contour10x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([35, 23], [40, 23], [43.0, 19.5],steps,height);
	BezConic([43.0, 19.5], [46, 16], [46, 10],steps,height);
	BezConic([46, 10], [46, 4], [43.0, 0.5],steps,height);
	BezConic([43.0, 0.5], [40, -3], [35, -3],steps,height);
	BezConic([35, -3], [30, -3], [27.0, 0.5],steps,height);
	BezConic([27.0, 0.5], [24, 4], [24, 10],steps,height);
	BezConic([24, 10], [24, 16], [27.0, 19.5],steps,height);
	BezConic([27.0, 19.5], [30, 23], [35, 23],steps,height);
}
}

module OpenDyslexicRegular_contour10x25(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x25_skeleton(height);
			OpenDyslexicRegular_contour10x25_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x25_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour20x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[15, 52], [13, 52], [11.5, 50.0], 
		[10, 48], [10, 44], [10, 41], 
		[11.5, 39.5], [13, 38], [15, 38], 
		[18, 38], [19.5, 39.5], [21, 41], 
		[21, 44], [21, 48], [19.5, 50.0], 
		[18, 52], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[15, 52], [13, 52], [11.5, 50.0], 
		[10, 48], [10, 44], [10, 41], 
		[11.5, 39.5], [13, 38], [15, 38], 
		[18, 38], [19.5, 39.5], [21, 41], 
		[21, 44], [21, 48], [19.5, 50.0], 
		[18, 52], ]);
}}}

module OpenDyslexicRegular_contour20x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 52], [13, 52], [11.5, 50.0],steps,height);
	BezConic([11.5, 50.0], [10, 48], [10, 44],steps,height);
	BezConic([10, 44], [10, 41], [11.5, 39.5],steps,height);
	BezConic([11.5, 39.5], [13, 38], [15, 38],steps,height);
	BezConic([15, 38], [18, 38], [19.5, 39.5],steps,height);
	BezConic([19.5, 39.5], [21, 41], [21, 44],steps,height);
	BezConic([21, 44], [21, 48], [19.5, 50.0],steps,height);
	BezConic([19.5, 50.0], [18, 52], [15, 52],steps,height);
}
}

module OpenDyslexicRegular_contour20x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour20x25(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour20x25_skeleton(height);
			OpenDyslexicRegular_contour20x25_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour20x25_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour30x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[15, 56], [20, 56], [23.0, 52.5], 
		[26, 49], [26, 44], [26, 38], 
		[23.0, 34.5], [20, 31], [15, 31], 
		[10, 31], [7.5, 34.5], [5, 38], 
		[5, 44], [5, 49], [7.5, 52.5], 
		[10, 56], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[15, 56], [20, 56], [23.0, 52.5], 
		[26, 49], [26, 44], [26, 38], 
		[23.0, 34.5], [20, 31], [15, 31], 
		[10, 31], [7.5, 34.5], [5, 38], 
		[5, 44], [5, 49], [7.5, 52.5], 
		[10, 56], ]);
}}}

module OpenDyslexicRegular_contour30x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour30x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 56], [20, 56], [23.0, 52.5],steps,height);
	BezConic([23.0, 52.5], [26, 49], [26, 44],steps,height);
	BezConic([26, 44], [26, 38], [23.0, 34.5],steps,height);
	BezConic([23.0, 34.5], [20, 31], [15, 31],steps,height);
	BezConic([15, 31], [10, 31], [7.5, 34.5],steps,height);
	BezConic([7.5, 34.5], [5, 38], [5, 44],steps,height);
	BezConic([5, 44], [5, 49], [7.5, 52.5],steps,height);
	BezConic([7.5, 52.5], [10, 56], [15, 56],steps,height);
}
}

module OpenDyslexicRegular_contour30x25(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour30x25_skeleton(height);
			OpenDyslexicRegular_contour30x25_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour30x25_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour40x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[35, 55], [35, 56], [36, 56], 
		[37.0, 56.0], [38, 56], [39, 56], 
		[39.5, 55.5], [40, 55], [39, 55], 
		[27.5, 25.5], [16, -4], [16, -5], 
		[14, -5], [12.0, -5.0], [10, -5], 
		[9, -5], [9, -3], [22.0, 26.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[35, 55], [35, 56], [36, 56], 
		[37.0, 56.0], [38, 56], [39, 56], 
		[39.5, 55.5], [40, 55], [39, 55], 
		[27.5, 25.5], [16, -4], [16, -5], 
		[14, -5], [12.0, -5.0], [10, -5], 
		[9, -5], [9, -3], [22.0, 26.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour40x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour40x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([35, 55], [35, 56], [36, 56],steps,height);
	BezConic([38, 56], [39, 56], [39.5, 55.5],steps,height);
	BezConic([39.5, 55.5], [40, 55], [39, 55],steps,height);
	BezConic([16, -4], [16, -5], [14, -5],steps,height);
	BezConic([10, -5], [9, -5], [9, -3],steps,height);
}
}

module OpenDyslexicRegular_contour40x25(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour40x25_skeleton(height);
			OpenDyslexicRegular_contour40x25_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour40x25_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x25(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x25(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x25(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x25(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour20x25(steps, height);
	}
}

module OpenDyslexicRegular_chunk20x25(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour30x25(steps, height);
		
	}
}

module OpenDyslexicRegular_chunk30x25(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour40x25(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x25=[[5, -5], [46, 56]];

module OpenDyslexicRegular_letter0x25(steps=2, height) {
	OpenDyslexicRegular_chunk00x25(steps, height);
	OpenDyslexicRegular_chunk10x25(steps, height);
	OpenDyslexicRegular_chunk20x25(steps, height);
	OpenDyslexicRegular_chunk30x25(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x26_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[31, 12], [32, 13], [31, 15], 
		[24.5, 22.5], [18, 30], [18, 31], 
		[16, 30], [16.0, 30.0], [16, 30], 
		[13, 27], [12.0, 24.5], [11, 22], 
		[11, 19], [11, 18], [11.0, 17.0], 
		[11, 16], [12.0, 14.5], [13, 13], 
		[15.0, 12.0], [17, 11], [21, 11], 
		[22, 11], [23.5, 11.0], [25, 11], 
		[26.5, 11.0], [28, 11], [29.0, 11.5], 
		[30, 12], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[31, 12], [32, 13], [31, 15], 
		[24.5, 22.5], [18, 30], [18, 31], 
		[16, 30], [16.0, 30.0], [16, 30], 
		[13, 27], [12.0, 24.5], [11, 22], 
		[11, 19], [11, 18], [11.0, 17.0], 
		[11, 16], [12.0, 14.5], [13, 13], 
		[15.0, 12.0], [17, 11], [21, 11], 
		[22, 11], [23.5, 11.0], [25, 11], 
		[26.5, 11.0], [28, 11], [29.0, 11.5], 
		[30, 12], ]);
}}}

module OpenDyslexicRegular_contour00x26_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([31, 12], [32, 13], [31, 15],steps,height);
	BezConic([18, 30], [18, 31], [16, 30],steps,height);
	BezConic([16, 30], [13, 27], [12.0, 24.5],steps,height);
	BezConic([12.0, 24.5], [11, 22], [11, 19],steps,height);
	BezConic([11, 19], [11, 18], [11.0, 17.0],steps,height);
	BezConic([11.0, 17.0], [11, 16], [12.0, 14.5],steps,height);
	BezConic([12.0, 14.5], [13, 13], [15.0, 12.0],steps,height);
	BezConic([15.0, 12.0], [17, 11], [21, 11],steps,height);
	BezConic([21, 11], [22, 11], [23.5, 11.0],steps,height);
	BezConic([23.5, 11.0], [25, 11], [26.5, 11.0],steps,height);
	BezConic([26.5, 11.0], [28, 11], [29.0, 11.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x26_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29.0, 11.5], [30, 12], [31, 12],steps,height);
}
}

module OpenDyslexicRegular_contour00x26(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x26_skeleton(height);
			OpenDyslexicRegular_contour00x26_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x26_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x26_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[28, 52], [27, 53], [25.0, 53.5], 
		[23, 54], [21.5, 53.5], [20, 53], 
		[18.5, 51.5], [17, 50], [16.0, 48.0], 
		[15, 46], [15.0, 44.0], [15, 42], 
		[16, 41], [17, 40], [17.5, 39.5], 
		[18, 39], [19, 38], [19, 37], 
		[21, 38], [26, 43], [28.0, 46.0], 
		[30, 49], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[28, 52], [27, 53], [25.0, 53.5], 
		[23, 54], [21.5, 53.5], [20, 53], 
		[18.5, 51.5], [17, 50], [16.0, 48.0], 
		[15, 46], [15.0, 44.0], [15, 42], 
		[16, 41], [17, 40], [17.5, 39.5], 
		[18, 39], [19, 38], [19, 37], 
		[21, 38], [26, 43], [28.0, 46.0], 
		[30, 49], ]);
}}}

module OpenDyslexicRegular_contour10x26_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([28, 52], [27, 53], [25.0, 53.5],steps,height);
	BezConic([25.0, 53.5], [23, 54], [21.5, 53.5],steps,height);
	BezConic([21.5, 53.5], [20, 53], [18.5, 51.5],steps,height);
	BezConic([18.5, 51.5], [17, 50], [16.0, 48.0],steps,height);
	BezConic([16.0, 48.0], [15, 46], [15.0, 44.0],steps,height);
	BezConic([15.0, 44.0], [15, 42], [16, 41],steps,height);
	BezConic([16, 41], [17, 40], [17.5, 39.5],steps,height);
	BezConic([17.5, 39.5], [18, 39], [19, 38],steps,height);
	BezConic([19, 38], [19, 37], [21, 38],steps,height);
	BezConic([21, 38], [26, 43], [28.0, 46.0],steps,height);
	BezConic([28.0, 46.0], [30, 49], [28, 52],steps,height);
}
}

module OpenDyslexicRegular_contour10x26_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x26(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x26_skeleton(height);
			OpenDyslexicRegular_contour10x26_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x26_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour20x26_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[51, 2], [51, 1], [51.0, 0.5], 
		[51, 0], [50, 0], [47.5, 0.0], 
		[45, 0], [43, 0], [42, 1], 
		[41.0, 2.5], [40, 4], [39, 5], 
		[38.5, 5.0], [38, 5], [37, 4], 
		[35, 2], [33.5, 1.0], [32, 0], 
		[30.5, -0.5], [29, -1], [27.5, -1.0], 
		[26, -1], [25, -1], [19, -1], 
		[15.5, 0.5], [12, 2], [9.5, 4.5], 
		[7, 7], [6.0, 10.5], [5, 14], 
		[5, 17], [5, 26], [13, 33], 
		[14, 34], [14, 35], [11, 39], 
		[11, 43], [11, 46], [12.0, 48.5], 
		[13, 51], [15.0, 53.0], [17, 55], 
		[20.0, 56.0], [23, 57], [26, 56], 
		[28, 56], [30.0, 54.5], [32, 53], 
		[32.5, 51.0], [33, 49], [33.0, 46.5], 
		[33, 44], [31, 42], [29, 41], 
		[27.0, 39.0], [25, 37], [23, 35], 
		[22, 34], [22, 34], [29.0, 26.5], 
		[36, 19], [36, 18], [37.0, 18.0], 
		[38, 18], [38, 19], [40, 21], 
		[40.5, 23.5], [41, 26], [41, 28], 
		[42, 29], [43, 29], [45.0, 29.0], 
		[47, 29], [49, 29], [49, 28], 
		[49, 23], [48.0, 19.5], [47, 16], 
		[44, 12], [44, 11], [44.0, 10.5], 
		[44, 10], [44, 9], [47.5, 5.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[51, 2], [51, 1], [51.0, 0.5], 
		[51, 0], [50, 0], [47.5, 0.0], 
		[45, 0], [43, 0], [42, 1], 
		[41.0, 2.5], [40, 4], [39, 5], 
		[38.5, 5.0], [38, 5], [37, 4], 
		[35, 2], [33.5, 1.0], [32, 0], 
		[30.5, -0.5], [29, -1], [27.5, -1.0], 
		[26, -1], [25, -1], [19, -1], 
		[15.5, 0.5], [12, 2], [9.5, 4.5], 
		[7, 7], [6.0, 10.5], [5, 14], 
		[5, 17], [5, 26], [13, 33], 
		[14, 34], [14, 35], [11, 39], 
		[11, 43], [11, 46], [12.0, 48.5], 
		[13, 51], [15.0, 53.0], [17, 55], 
		[20.0, 56.0], [23, 57], [26, 56], 
		[28, 56], [30.0, 54.5], [32, 53], 
		[32.5, 51.0], [33, 49], [33.0, 46.5], 
		[33, 44], [31, 42], [29, 41], 
		[27.0, 39.0], [25, 37], [23, 35], 
		[22, 34], [22, 34], [29.0, 26.5], 
		[36, 19], [36, 18], [37.0, 18.0], 
		[38, 18], [38, 19], [40, 21], 
		[40.5, 23.5], [41, 26], [41, 28], 
		[42, 29], [43, 29], [45.0, 29.0], 
		[47, 29], [49, 29], [49, 28], 
		[49, 23], [48.0, 19.5], [47, 16], 
		[44, 12], [44, 11], [44.0, 10.5], 
		[44, 10], [44, 9], [47.5, 5.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour20x26_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([51, 2], [51, 1], [51.0, 0.5],steps,height);
	BezConic([40, 4], [39, 5], [38.5, 5.0],steps,height);
	BezConic([38.5, 5.0], [38, 5], [37, 4],steps,height);
	BezConic([27.5, -1.0], [26, -1], [25, -1],steps,height);
	BezConic([13, 33], [14, 34], [14, 35],steps,height);
	BezConic([31, 42], [29, 41], [27.0, 39.0],steps,height);
	BezConic([27.0, 39.0], [25, 37], [23, 35],steps,height);
	BezConic([23, 35], [22, 34], [22, 34],steps,height);
	BezConic([36, 19], [36, 18], [37.0, 18.0],steps,height);
	BezConic([37.0, 18.0], [38, 18], [38, 19],steps,height);
	BezConic([38, 19], [40, 21], [40.5, 23.5],steps,height);
	BezConic([40.5, 23.5], [41, 26], [41, 28],steps,height);
	BezConic([44, 12], [44, 11], [44.0, 10.5],steps,height);
	BezConic([44.0, 10.5], [44, 10], [44, 9],steps,height);
}
}

module OpenDyslexicRegular_contour20x26_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([51.0, 0.5], [51, 0], [50, 0],steps,height);
	BezConic([45, 0], [43, 0], [42, 1],steps,height);
	BezConic([37, 4], [35, 2], [33.5, 1.0],steps,height);
	BezConic([33.5, 1.0], [32, 0], [30.5, -0.5],steps,height);
	BezConic([30.5, -0.5], [29, -1], [27.5, -1.0],steps,height);
	BezConic([25, -1], [19, -1], [15.5, 0.5],steps,height);
	BezConic([15.5, 0.5], [12, 2], [9.5, 4.5],steps,height);
	BezConic([9.5, 4.5], [7, 7], [6.0, 10.5],steps,height);
	BezConic([6.0, 10.5], [5, 14], [5, 17],steps,height);
	BezConic([5, 17], [5, 26], [13, 33],steps,height);
	BezConic([14, 35], [11, 39], [11, 43],steps,height);
	BezConic([11, 43], [11, 46], [12.0, 48.5],steps,height);
	BezConic([12.0, 48.5], [13, 51], [15.0, 53.0],steps,height);
	BezConic([15.0, 53.0], [17, 55], [20.0, 56.0],steps,height);
	BezConic([20.0, 56.0], [23, 57], [26, 56],steps,height);
	BezConic([26, 56], [28, 56], [30.0, 54.5],steps,height);
	BezConic([30.0, 54.5], [32, 53], [32.5, 51.0],steps,height);
	BezConic([32.5, 51.0], [33, 49], [33.0, 46.5],steps,height);
	BezConic([33.0, 46.5], [33, 44], [31, 42],steps,height);
	BezConic([41, 28], [42, 29], [43, 29],steps,height);
	BezConic([47, 29], [49, 29], [49, 28],steps,height);
	BezConic([49, 28], [49, 23], [48.0, 19.5],steps,height);
	BezConic([48.0, 19.5], [47, 16], [44, 12],steps,height);
}
}

module OpenDyslexicRegular_contour20x26(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour20x26_skeleton(height);
			OpenDyslexicRegular_contour20x26_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour20x26_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x26(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x26(steps, height);
	translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x26(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x26(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour20x26(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x26=[[5, -1], [51, 57]];

module OpenDyslexicRegular_letter0x26(steps=2, height) {
	OpenDyslexicRegular_chunk00x26(steps, height);
	OpenDyslexicRegular_chunk10x26(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x27_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[11, 65], [12, 65], [12, 64], 
		[11.0, 56.0], [10, 48], [10, 47], 
		[9, 47], [7.5, 47.0], [6, 47], 
		[5, 47], [5, 48], [6.0, 56.0], 
		[7, 64], [7, 65], [8, 65], 
		[9.5, 65.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[11, 65], [12, 65], [12, 64], 
		[11.0, 56.0], [10, 48], [10, 47], 
		[9, 47], [7.5, 47.0], [6, 47], 
		[5, 47], [5, 48], [6.0, 56.0], 
		[7, 64], [7, 65], [8, 65], 
		[9.5, 65.0], ]);
}}}

module OpenDyslexicRegular_contour00x27_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x27_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([11, 65], [12, 65], [12, 64],steps,height);
	BezConic([10, 48], [10, 47], [9, 47],steps,height);
	BezConic([6, 47], [5, 47], [5, 48],steps,height);
	BezConic([7, 64], [7, 65], [8, 65],steps,height);
}
}

module OpenDyslexicRegular_contour00x27(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x27_skeleton(height);
			OpenDyslexicRegular_contour00x27_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x27_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x27(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x27(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x27=[[5, 47], [12, 65]];

module OpenDyslexicRegular_letter0x27(steps=2, height) {
	OpenDyslexicRegular_chunk10x27(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x28_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[23, 58], [24, 58], [24.5, 57.5], 
		[25, 57], [24, 56], [18, 48], 
		[15.0, 40.5], [12, 33], [11.5, 25.5], 
		[11, 18], [12.5, 10.5], [14, 3], 
		[16, -6], [16, -7], [16.0, -8.0], 
		[16, -9], [15, -8], [12.0, -8.0], 
		[9, -8], [9, -8], [8.0, -7.5], 
		[7, -7], [7, -6], [6, 2], 
		[5.0, 10.5], [4, 19], [5.0, 27.5], 
		[6, 36], [9.0, 43.5], [12, 51], 
		[18, 58], [19, 59], [20, 59], 
		[21.5, 58.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[23, 58], [24, 58], [24.5, 57.5], 
		[25, 57], [24, 56], [18, 48], 
		[15.0, 40.5], [12, 33], [11.5, 25.5], 
		[11, 18], [12.5, 10.5], [14, 3], 
		[16, -6], [16, -7], [16.0, -8.0], 
		[16, -9], [15, -8], [12.0, -8.0], 
		[9, -8], [9, -8], [8.0, -7.5], 
		[7, -7], [7, -6], [6, 2], 
		[5.0, 10.5], [4, 19], [5.0, 27.5], 
		[6, 36], [9.0, 43.5], [12, 51], 
		[18, 58], [19, 59], [20, 59], 
		[21.5, 58.5], ]);
}}}

module OpenDyslexicRegular_contour00x28_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 56], [18, 48], [15.0, 40.5],steps,height);
	BezConic([15.0, 40.5], [12, 33], [11.5, 25.5],steps,height);
	BezConic([11.5, 25.5], [11, 18], [12.5, 10.5],steps,height);
	BezConic([12.5, 10.5], [14, 3], [16, -6],steps,height);
	BezConic([16, -6], [16, -7], [16.0, -8.0],steps,height);
	BezConic([9, -8], [9, -8], [8.0, -7.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x28_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([23, 58], [24, 58], [24.5, 57.5],steps,height);
	BezConic([24.5, 57.5], [25, 57], [24, 56],steps,height);
	BezConic([16.0, -8.0], [16, -9], [15, -8],steps,height);
	BezConic([8.0, -7.5], [7, -7], [7, -6],steps,height);
	BezConic([7, -6], [6, 2], [5.0, 10.5],steps,height);
	BezConic([5.0, 10.5], [4, 19], [5.0, 27.5],steps,height);
	BezConic([5.0, 27.5], [6, 36], [9.0, 43.5],steps,height);
	BezConic([9.0, 43.5], [12, 51], [18, 58],steps,height);
	BezConic([18, 58], [19, 59], [20, 59],steps,height);
}
}

module OpenDyslexicRegular_contour00x28(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x28_skeleton(height);
			OpenDyslexicRegular_contour00x28_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x28_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x28(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x28(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x28=[[4, -9], [25, 59]];

module OpenDyslexicRegular_letter0x28(steps=2, height) {
	OpenDyslexicRegular_chunk10x28(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x29_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[11, 58], [12, 58], [12.5, 58.0], 
		[13, 58], [13, 57], [18, 50], 
		[19.5, 42.0], [21, 34], [21.0, 25.5], 
		[21, 17], [19.0, 9.0], [17, 1], 
		[14, -8], [13, -9], [11, -9], 
		[8.5, -9.0], [6, -9], [4, -9], 
		[5, -6], [9, 2], [11.5, 9.5], 
		[14, 17], [14.5, 24.5], [15, 32], 
		[13.0, 40.0], [11, 48], [7, 56], 
		[6, 57], [6.5, 58.0], [7, 59], 
		[8, 58],[9.5, 58.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[11, 58], [12, 58], [12.5, 58.0], 
		[13, 58], [13, 57], [18, 50], 
		[19.5, 42.0], [21, 34], [21.0, 25.5], 
		[21, 17], [19.0, 9.0], [17, 1], 
		[14, -8], [13, -9], [11, -9], 
		[8.5, -9.0], [6, -9], [4, -9], 
		[5, -6], [9, 2], [11.5, 9.5], 
		[14, 17], [14.5, 24.5], [15, 32], 
		[13.0, 40.0], [11, 48], [7, 56], 
		[6, 57], [6.5, 58.0], [7, 59], 
		[8, 58],[9.5, 58.0], ]);
}}}

module OpenDyslexicRegular_contour00x29_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([11, 58], [12, 58], [12.5, 58.0],steps,height);
	BezConic([5, -6], [9, 2], [11.5, 9.5],steps,height);
	BezConic([11.5, 9.5], [14, 17], [14.5, 24.5],steps,height);
	BezConic([14.5, 24.5], [15, 32], [13.0, 40.0],steps,height);
	BezConic([13.0, 40.0], [11, 48], [7, 56],steps,height);
}
}

module OpenDyslexicRegular_contour00x29_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12.5, 58.0], [13, 58], [13, 57],steps,height);
	BezConic([13, 57], [18, 50], [19.5, 42.0],steps,height);
	BezConic([19.5, 42.0], [21, 34], [21.0, 25.5],steps,height);
	BezConic([21.0, 25.5], [21, 17], [19.0, 9.0],steps,height);
	BezConic([19.0, 9.0], [17, 1], [14, -8],steps,height);
	BezConic([14, -8], [13, -9], [11, -9],steps,height);
	BezConic([6, -9], [4, -9], [5, -6],steps,height);
	BezConic([7, 56], [6, 57], [6.5, 58.0],steps,height);
	BezConic([6.5, 58.0], [7, 59], [8, 58],steps,height);
}
}

module OpenDyslexicRegular_contour00x29(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x29_skeleton(height);
			OpenDyslexicRegular_contour00x29_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x29_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x29(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x29(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x29=[[4, -9], [21, 59]];

module OpenDyslexicRegular_letter0x29(steps=2, height) {
	OpenDyslexicRegular_chunk10x29(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x2a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[33, 40], [33, 39], [32, 38], 
		[28.0, 36.0], [24, 34], [23, 34], 
		[23.0, 33.0], [23, 32], [25, 32], 
		[29.0, 30.5], [33, 29], [35, 28], 
		[34, 26], [33.5, 25.5], [33, 25], 
		[32, 23], [31, 24], [27.0, 26.5], 
		[23, 29], [22, 29], [21.5, 29.0], 
		[21, 29], [21, 28], [21.5, 24.0], 
		[22, 20], [22, 19], [21.5, 18.5], 
		[21, 18], [21, 18], [20.0, 18.0], 
		[19, 18], [17, 18], [17, 19], 
		[17.0, 23.0], [17, 27], [17, 29], 
		[16.5, 29.0], [16, 29], [15, 28], 
		[12.0, 25.5], [9, 23], [7, 22], 
		[6, 23], [5.5, 24.0], [5, 25], 
		[4, 27], [6, 27], [10.0, 29.5], 
		[14, 32], [15, 32], [15.0, 32.5], 
		[15, 33], [14, 34], [10.0, 35.5], 
		[6, 37], [4, 38], [5, 39], 
		[5.5, 40.0], [6, 41], [7, 42], 
		[8, 41], [11.5, 39.0], [15, 37], 
		[16, 36], [16.5, 36.5], [17, 37], 
		[17, 38], [16.5, 41.5], [16, 45], 
		[16, 46], [17, 47], [18.0, 47.0], 
		[19, 47], [21, 47], [21, 46], 
		[21.0, 42.0], [21, 38], [21, 37], 
		[21.5, 36.5], [22, 36], [23, 37], 
		[27.0, 39.5], [31, 42], [32, 43], 
		[32.5, 42.5], [33, 42], [33, 41], 
		[33.0, 40.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[33, 40], [33, 39], [32, 38], 
		[28.0, 36.0], [24, 34], [23, 34], 
		[23.0, 33.0], [23, 32], [25, 32], 
		[29.0, 30.5], [33, 29], [35, 28], 
		[34, 26], [33.5, 25.5], [33, 25], 
		[32, 23], [31, 24], [27.0, 26.5], 
		[23, 29], [22, 29], [21.5, 29.0], 
		[21, 29], [21, 28], [21.5, 24.0], 
		[22, 20], [22, 19], [21.5, 18.5], 
		[21, 18], [21, 18], [20.0, 18.0], 
		[19, 18], [17, 18], [17, 19], 
		[17.0, 23.0], [17, 27], [17, 29], 
		[16.5, 29.0], [16, 29], [15, 28], 
		[12.0, 25.5], [9, 23], [7, 22], 
		[6, 23], [5.5, 24.0], [5, 25], 
		[4, 27], [6, 27], [10.0, 29.5], 
		[14, 32], [15, 32], [15.0, 32.5], 
		[15, 33], [14, 34], [10.0, 35.5], 
		[6, 37], [4, 38], [5, 39], 
		[5.5, 40.0], [6, 41], [7, 42], 
		[8, 41], [11.5, 39.0], [15, 37], 
		[16, 36], [16.5, 36.5], [17, 37], 
		[17, 38], [16.5, 41.5], [16, 45], 
		[16, 46], [17, 47], [18.0, 47.0], 
		[19, 47], [21, 47], [21, 46], 
		[21.0, 42.0], [21, 38], [21, 37], 
		[21.5, 36.5], [22, 36], [23, 37], 
		[27.0, 39.5], [31, 42], [32, 43], 
		[32.5, 42.5], [33, 42], [33, 41], 
		[33.0, 40.5], ]);
}}}

module OpenDyslexicRegular_contour00x2a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 34], [23, 34], [23.0, 33.0],steps,height);
	BezConic([23.0, 33.0], [23, 32], [25, 32],steps,height);
	BezConic([23, 29], [22, 29], [21.5, 29.0],steps,height);
	BezConic([21.5, 29.0], [21, 29], [21, 28],steps,height);
	BezConic([21.5, 18.5], [21, 18], [21, 18],steps,height);
	BezConic([17, 27], [17, 29], [16.5, 29.0],steps,height);
	BezConic([16.5, 29.0], [16, 29], [15, 28],steps,height);
	BezConic([14, 32], [15, 32], [15.0, 32.5],steps,height);
	BezConic([15.0, 32.5], [15, 33], [14, 34],steps,height);
	BezConic([15, 37], [16, 36], [16.5, 36.5],steps,height);
	BezConic([16.5, 36.5], [17, 37], [17, 38],steps,height);
	BezConic([21, 38], [21, 37], [21.5, 36.5],steps,height);
	BezConic([21.5, 36.5], [22, 36], [23, 37],steps,height);
}
}

module OpenDyslexicRegular_contour00x2a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([33, 40], [33, 39], [32, 38],steps,height);
	BezConic([33, 29], [35, 28], [34, 26],steps,height);
	BezConic([33, 25], [32, 23], [31, 24],steps,height);
	BezConic([22, 20], [22, 19], [21.5, 18.5],steps,height);
	BezConic([19, 18], [17, 18], [17, 19],steps,height);
	BezConic([9, 23], [7, 22], [6, 23],steps,height);
	BezConic([5, 25], [4, 27], [6, 27],steps,height);
	BezConic([6, 37], [4, 38], [5, 39],steps,height);
	BezConic([6, 41], [7, 42], [8, 41],steps,height);
	BezConic([16, 45], [16, 46], [17, 47],steps,height);
	BezConic([19, 47], [21, 47], [21, 46],steps,height);
	BezConic([31, 42], [32, 43], [32.5, 42.5],steps,height);
	BezConic([32.5, 42.5], [33, 42], [33, 41],steps,height);
}
}

module OpenDyslexicRegular_contour00x2a(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x2a_skeleton(height);
			OpenDyslexicRegular_contour00x2a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x2a_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x2a(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x2a(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x2a=[[4, 18], [35, 47]];

module OpenDyslexicRegular_letter0x2a(steps=2, height) {
	OpenDyslexicRegular_chunk10x2a(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x2b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[26, 40], [28, 40], [28, 39], 
		[28.0, 32.0], [28, 25], [28, 23], 
		[29, 23], [36.0, 23.0], [43, 23], 
		[44, 23], [44.5, 22.5], [45, 22], 
		[45, 21], [45.0, 20.0], [45, 19], 
		[45, 17], [43, 17], [36.0, 17.0], 
		[29, 17], [28, 17], [28, 15], 
		[28.0, 8.5], [28, 2], [28, 0], 
		[26, 0], [25.0, 0.0], [24, 0], 
		[22, 0], [22, 2], [22.0, 8.5], 
		[22, 15], [22, 17], [20, 17], 
		[13.0, 17.0], [6, 17], [5, 17], 
		[5, 19], [5.0, 20.0], [5, 21], 
		[5, 23], [6, 23], [13.0, 23.0], 
		[20, 23], [22, 23], [22, 25], 
		[22.0, 32.0], [22, 39], [22, 40], 
		[24, 40],[25.0, 40.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[26, 40], [28, 40], [28, 39], 
		[28.0, 32.0], [28, 25], [28, 23], 
		[29, 23], [36.0, 23.0], [43, 23], 
		[44, 23], [44.5, 22.5], [45, 22], 
		[45, 21], [45.0, 20.0], [45, 19], 
		[45, 17], [43, 17], [36.0, 17.0], 
		[29, 17], [28, 17], [28, 15], 
		[28.0, 8.5], [28, 2], [28, 0], 
		[26, 0], [25.0, 0.0], [24, 0], 
		[22, 0], [22, 2], [22.0, 8.5], 
		[22, 15], [22, 17], [20, 17], 
		[13.0, 17.0], [6, 17], [5, 17], 
		[5, 19], [5.0, 20.0], [5, 21], 
		[5, 23], [6, 23], [13.0, 23.0], 
		[20, 23], [22, 23], [22, 25], 
		[22.0, 32.0], [22, 39], [22, 40], 
		[24, 40],[25.0, 40.0], ]);
}}}

module OpenDyslexicRegular_contour00x2b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([28, 25], [28, 23], [29, 23],steps,height);
	BezConic([29, 17], [28, 17], [28, 15],steps,height);
	BezConic([22, 15], [22, 17], [20, 17],steps,height);
	BezConic([20, 23], [22, 23], [22, 25],steps,height);
}
}

module OpenDyslexicRegular_contour00x2b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([26, 40], [28, 40], [28, 39],steps,height);
	BezConic([43, 23], [44, 23], [44.5, 22.5],steps,height);
	BezConic([44.5, 22.5], [45, 22], [45, 21],steps,height);
	BezConic([45, 19], [45, 17], [43, 17],steps,height);
	BezConic([28, 2], [28, 0], [26, 0],steps,height);
	BezConic([24, 0], [22, 0], [22, 2],steps,height);
	BezConic([6, 17], [5, 17], [5, 19],steps,height);
	BezConic([5, 21], [5, 23], [6, 23],steps,height);
	BezConic([22, 39], [22, 40], [24, 40],steps,height);
}
}

module OpenDyslexicRegular_contour00x2b(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x2b_skeleton(height);
			OpenDyslexicRegular_contour00x2b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x2b_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x2b(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x2b(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x2b=[[5, 0], [45, 40]];

module OpenDyslexicRegular_letter0x2b(steps=2, height) {
	OpenDyslexicRegular_chunk10x2b(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x2c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[8, 6], [7, 8], [9, 8], 
		[11.5, 8.0], [14, 8], [15, 8], 
		[15.5, 7.5], [16, 7], [16, 6], 
		[16.0, 4.0], [16, 2], [17, 1], 
		[16, 0], [12.5, -4.5], [9, -9], 
		[8, -10], [7, -10], [6.5, -10.0], 
		[6, -10], [5, -10], [4.5, -9.5], 
		[4, -9], [5, -8], [6.5, -4.0], 
		[8, 0], [8, 1], [8, 2], 
		[8.0, 4.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[8, 6], [7, 8], [9, 8], 
		[11.5, 8.0], [14, 8], [15, 8], 
		[15.5, 7.5], [16, 7], [16, 6], 
		[16.0, 4.0], [16, 2], [17, 1], 
		[16, 0], [12.5, -4.5], [9, -9], 
		[8, -10], [7, -10], [6.5, -10.0], 
		[6, -10], [5, -10], [4.5, -9.5], 
		[4, -9], [5, -8], [6.5, -4.0], 
		[8, 0], [8, 1], [8, 2], 
		[8.0, 4.0], ]);
}}}

module OpenDyslexicRegular_contour00x2c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([8, 0], [8, 1], [8, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x2c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([8, 6], [7, 8], [9, 8],steps,height);
	BezConic([14, 8], [15, 8], [15.5, 7.5],steps,height);
	BezConic([15.5, 7.5], [16, 7], [16, 6],steps,height);
	BezConic([16, 2], [17, 1], [16, 0],steps,height);
	BezConic([9, -9], [8, -10], [7, -10],steps,height);
	BezConic([6, -10], [5, -10], [4.5, -9.5],steps,height);
	BezConic([4.5, -9.5], [4, -9], [5, -8],steps,height);
}
}

module OpenDyslexicRegular_contour00x2c(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x2c_skeleton(height);
			OpenDyslexicRegular_contour00x2c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x2c_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x2c(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x2c(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x2c=[[4, -10], [17, 8]];

module OpenDyslexicRegular_letter0x2c(steps=2, height) {
	OpenDyslexicRegular_chunk10x2c(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x2d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 19], [5, 20], [7, 20], 
		[13.5, 20.5], [20, 21], [22, 21], 
		[22, 19], [22.0, 18.0], [22, 17], 
		[21, 15], [20, 15], [13.0, 15.0], 
		[6, 15], [4, 15], [5, 17], 
		[5.0, 18.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 19], [5, 20], [7, 20], 
		[13.5, 20.5], [20, 21], [22, 21], 
		[22, 19], [22.0, 18.0], [22, 17], 
		[21, 15], [20, 15], [13.0, 15.0], 
		[6, 15], [4, 15], [5, 17], 
		[5.0, 18.0], ]);
}}}

module OpenDyslexicRegular_contour00x2d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x2d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 19], [5, 20], [7, 20],steps,height);
	BezConic([20, 21], [22, 21], [22, 19],steps,height);
	BezConic([22, 17], [21, 15], [20, 15],steps,height);
	BezConic([6, 15], [4, 15], [5, 17],steps,height);
}
}

module OpenDyslexicRegular_contour00x2d(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x2d_skeleton(height);
			OpenDyslexicRegular_contour00x2d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x2d_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x2d(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x2d(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x2d=[[4, 15], [22, 21]];

module OpenDyslexicRegular_letter0x2d(steps=2, height) {
	OpenDyslexicRegular_chunk10x2d(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x2e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 9], [5, 10], [7, 10], 
		[10.0, 10.0], [13, 10], [14, 10], 
		[14, 9], [14.0, 5.0], [14, 1], 
		[14, 0], [12, 0], [9.0, 0.0], 
		[6, 0], [5, 0], [5, 2], 
		[5.0, 5.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 9], [5, 10], [7, 10], 
		[10.0, 10.0], [13, 10], [14, 10], 
		[14, 9], [14.0, 5.0], [14, 1], 
		[14, 0], [12, 0], [9.0, 0.0], 
		[6, 0], [5, 0], [5, 2], 
		[5.0, 5.5], ]);
}}}

module OpenDyslexicRegular_contour00x2e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x2e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 9], [5, 10], [7, 10],steps,height);
	BezConic([13, 10], [14, 10], [14, 9],steps,height);
	BezConic([14, 1], [14, 0], [12, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x2e(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x2e_skeleton(height);
			OpenDyslexicRegular_contour00x2e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x2e_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x2e(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x2e(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x2e=[[5, 0], [14, 10]];

module OpenDyslexicRegular_letter0x2e(steps=2, height) {
	OpenDyslexicRegular_chunk10x2e(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x2f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[30, 54], [31, 56], [32, 56], 
		[32.5, 56.0], [33, 56], [34, 55], 
		[34.5, 55.0], [35, 55], [35, 54], 
		[23.5, 24.5], [12, -5], [11, -6], 
		[10, -6], [8.0, -6.0], [6, -6], 
		[4, -6], [5, -4], [17.5, 25.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[30, 54], [31, 56], [32, 56], 
		[32.5, 56.0], [33, 56], [34, 55], 
		[34.5, 55.0], [35, 55], [35, 54], 
		[23.5, 24.5], [12, -5], [11, -6], 
		[10, -6], [8.0, -6.0], [6, -6], 
		[4, -6], [5, -4], [17.5, 25.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x2f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([33, 56], [34, 55], [34.5, 55.0],steps,height);
}
}

module OpenDyslexicRegular_contour00x2f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([30, 54], [31, 56], [32, 56],steps,height);
	BezConic([34.5, 55.0], [35, 55], [35, 54],steps,height);
	BezConic([12, -5], [11, -6], [10, -6],steps,height);
	BezConic([6, -6], [4, -6], [5, -4],steps,height);
}
}

module OpenDyslexicRegular_contour00x2f(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x2f_skeleton(height);
			OpenDyslexicRegular_contour00x2f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x2f_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x2f(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x2f(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x2f=[[4, -6], [35, 56]];

module OpenDyslexicRegular_letter0x2f(steps=2, height) {
	OpenDyslexicRegular_chunk10x2f(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x30_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[24, 25], [23, 25], [22.0, 25.5], 
		[21, 26], [20.5, 27.0], [20, 28], 
		[20.0, 29.0], [20, 30], [20, 31], 
		[20, 33], [20.0, 35.0], [20, 37], 
		[20.5, 38.5], [21, 40], [22.0, 40.5], 
		[23, 41], [24, 41], [26, 41], 
		[27.0, 38.5], [28, 36], [28, 31], 
		[28, 30], [27.5, 29.0], [27, 28], 
		[26.5, 27.0], [26, 26], [25.5, 25.5], 
		[25, 25], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[24, 25], [23, 25], [22.0, 25.5], 
		[21, 26], [20.5, 27.0], [20, 28], 
		[20.0, 29.0], [20, 30], [20, 31], 
		[20, 33], [20.0, 35.0], [20, 37], 
		[20.5, 38.5], [21, 40], [22.0, 40.5], 
		[23, 41], [24, 41], [26, 41], 
		[27.0, 38.5], [28, 36], [28, 31], 
		[28, 30], [27.5, 29.0], [27, 28], 
		[26.5, 27.0], [26, 26], [25.5, 25.5], 
		[25, 25], ]);
}}}

module OpenDyslexicRegular_contour00x30_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20.0, 29.0], [20, 30], [20, 31],steps,height);
	BezConic([20, 31], [20, 33], [20.0, 35.0],steps,height);
	BezConic([27.5, 29.0], [27, 28], [26.5, 27.0],steps,height);
}
}

module OpenDyslexicRegular_contour00x30_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 25], [23, 25], [22.0, 25.5],steps,height);
	BezConic([22.0, 25.5], [21, 26], [20.5, 27.0],steps,height);
	BezConic([20.5, 27.0], [20, 28], [20.0, 29.0],steps,height);
	BezConic([20.0, 35.0], [20, 37], [20.5, 38.5],steps,height);
	BezConic([20.5, 38.5], [21, 40], [22.0, 40.5],steps,height);
	BezConic([22.0, 40.5], [23, 41], [24, 41],steps,height);
	BezConic([24, 41], [26, 41], [27.0, 38.5],steps,height);
	BezConic([27.0, 38.5], [28, 36], [28, 31],steps,height);
	BezConic([28, 31], [28, 30], [27.5, 29.0],steps,height);
	BezConic([26.5, 27.0], [26, 26], [25.5, 25.5],steps,height);
	BezConic([25.5, 25.5], [25, 25], [24, 25],steps,height);
}
}

module OpenDyslexicRegular_contour00x30(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x30_skeleton(height);
			OpenDyslexicRegular_contour00x30_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x30_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x30_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[24, 52], [18, 52], [15.5, 47.5], 
		[13, 43], [13, 33], [13, 23], 
		[15.5, 18.0], [18, 13], [23, 13], 
		[35, 13], [36, 33], [36, 43], 
		[33.0, 47.5],[30, 52], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[24, 52], [18, 52], [15.5, 47.5], 
		[13, 43], [13, 33], [13, 23], 
		[15.5, 18.0], [18, 13], [23, 13], 
		[35, 13], [36, 33], [36, 43], 
		[33.0, 47.5],[30, 52], ]);
}}}

module OpenDyslexicRegular_contour10x30_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 52], [18, 52], [15.5, 47.5],steps,height);
	BezConic([15.5, 47.5], [13, 43], [13, 33],steps,height);
	BezConic([13, 33], [13, 23], [15.5, 18.0],steps,height);
	BezConic([15.5, 18.0], [18, 13], [23, 13],steps,height);
	BezConic([23, 13], [35, 13], [36, 33],steps,height);
	BezConic([36, 33], [36, 43], [33.0, 47.5],steps,height);
	BezConic([33.0, 47.5], [30, 52], [24, 52],steps,height);
}
}

module OpenDyslexicRegular_contour10x30_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x30(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x30_skeleton(height);
			OpenDyslexicRegular_contour10x30_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x30_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour20x30_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[24, 58], [33, 58], [38.0, 50.5], 
		[43, 43], [43, 28], [43, 14], 
		[38.0, 6.5], [33, -1], [23, -1], 
		[14, -1], [9.0, 6.5], [4, 14], 
		[5, 28], [5, 43], [10.0, 50.5], 
		[15, 58], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[24, 58], [33, 58], [38.0, 50.5], 
		[43, 43], [43, 28], [43, 14], 
		[38.0, 6.5], [33, -1], [23, -1], 
		[14, -1], [9.0, 6.5], [4, 14], 
		[5, 28], [5, 43], [10.0, 50.5], 
		[15, 58], ]);
}}}

module OpenDyslexicRegular_contour20x30_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour20x30_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 58], [33, 58], [38.0, 50.5],steps,height);
	BezConic([38.0, 50.5], [43, 43], [43, 28],steps,height);
	BezConic([43, 28], [43, 14], [38.0, 6.5],steps,height);
	BezConic([38.0, 6.5], [33, -1], [23, -1],steps,height);
	BezConic([23, -1], [14, -1], [9.0, 6.5],steps,height);
	BezConic([9.0, 6.5], [4, 14], [5, 28],steps,height);
	BezConic([5, 28], [5, 43], [10.0, 50.5],steps,height);
	BezConic([10.0, 50.5], [15, 58], [24, 58],steps,height);
}
}

module OpenDyslexicRegular_contour20x30(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour20x30_skeleton(height);
			OpenDyslexicRegular_contour20x30_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour20x30_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x30(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x30(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x30(steps, height);
	}
}

module OpenDyslexicRegular_chunk20x30(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour20x30(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x30=[[4, -1], [43, 58]];

module OpenDyslexicRegular_letter0x30(steps=2, height) {
	OpenDyslexicRegular_chunk10x30(steps, height);
	OpenDyslexicRegular_chunk20x30(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x31_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 7], [7, 9], [9, 9], 
		[12.0, 9.0], [15, 9], [17, 9], 
		[17, 11], [17.5, 28.5], [18, 46], 
		[18, 48], [16, 48], [11.5, 47.0], 
		[7, 46], [5, 46], [5, 48], 
		[5.0, 50.0], [5, 52], [5, 53], 
		[6, 53], [11.5, 54.0], [17, 55], 
		[17, 55], [18, 55], [22.0, 56.0], 
		[26, 57], [27, 57], [27.5, 56.5], 
		[28, 56], [28, 55], [27.5, 33.0], 
		[27, 11], [27, 9], [29, 9], 
		[31.5, 9.0], [34, 9], [36, 9], 
		[36, 7], [36.0, 4.5], [36, 2], 
		[36, 0], [34, 0], [21.5, 0.0], 
		[9, 0], [7, 0], [7, 2], 
		[7.0, 4.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 7], [7, 9], [9, 9], 
		[12.0, 9.0], [15, 9], [17, 9], 
		[17, 11], [17.5, 28.5], [18, 46], 
		[18, 48], [16, 48], [11.5, 47.0], 
		[7, 46], [5, 46], [5, 48], 
		[5.0, 50.0], [5, 52], [5, 53], 
		[6, 53], [11.5, 54.0], [17, 55], 
		[17, 55], [18, 55], [22.0, 56.0], 
		[26, 57], [27, 57], [27.5, 56.5], 
		[28, 56], [28, 55], [27.5, 33.0], 
		[27, 11], [27, 9], [29, 9], 
		[31.5, 9.0], [34, 9], [36, 9], 
		[36, 7], [36.0, 4.5], [36, 2], 
		[36, 0], [34, 0], [21.5, 0.0], 
		[9, 0], [7, 0], [7, 2], 
		[7.0, 4.5], ]);
}}}

module OpenDyslexicRegular_contour00x31_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 9], [17, 9], [17, 11],steps,height);
	BezConic([18, 46], [18, 48], [16, 48],steps,height);
	BezConic([17, 55], [17, 55], [18, 55],steps,height);
	BezConic([27, 11], [27, 9], [29, 9],steps,height);
}
}

module OpenDyslexicRegular_contour00x31_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, 7], [7, 9], [9, 9],steps,height);
	BezConic([7, 46], [5, 46], [5, 48],steps,height);
	BezConic([5, 52], [5, 53], [6, 53],steps,height);
	BezConic([26, 57], [27, 57], [27.5, 56.5],steps,height);
	BezConic([27.5, 56.5], [28, 56], [28, 55],steps,height);
	BezConic([34, 9], [36, 9], [36, 7],steps,height);
	BezConic([36, 2], [36, 0], [34, 0],steps,height);
	BezConic([9, 0], [7, 0], [7, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x31(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x31_skeleton(height);
			OpenDyslexicRegular_contour00x31_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x31_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x31(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x31(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x31=[[5, 0], [36, 57]];

module OpenDyslexicRegular_letter0x31(steps=2, height) {
	OpenDyslexicRegular_chunk10x31(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x32_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[38, 11], [40, 11], [40, 9], 
		[40.0, 5.5], [40, 2], [40, 0], 
		[38, 0], [22.5, 0.0], [7, 0], 
		[5, 0], [5, 2], [5.0, 5.5], 
		[5, 9], [5, 11], [6, 12], 
		[17, 21], [22.5, 26.5], [28, 32], 
		[29, 34], [30, 36], [30.5, 37.5], 
		[31, 39], [31, 41], [31, 45], 
		[28.5, 47.5], [26, 50], [21, 50], 
		[18, 50], [15.0, 49.0], [12, 48], 
		[8, 45], [7, 45], [6.5, 45.5], 
		[6, 46], [6, 47], [5.5, 48.5], 
		[5, 50], [5, 51], [5.0, 51.5], 
		[5, 52], [6, 52], [10, 55], 
		[14.0, 56.0], [18, 57], [21, 57], 
		[25, 57], [28.5, 56.0], [32, 55], 
		[34.5, 52.5], [37, 50], [38.5, 47.5], 
		[40, 45], [40, 41], [40, 37], 
		[38.0, 33.5], [36, 30], [33.5, 26.5], 
		[31, 23], [28.0, 19.5], [25, 16], 
		[23, 13], [22, 12], [22.5, 11.5], 
		[23, 11], [24, 11], [31.0, 11.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[38, 11], [40, 11], [40, 9], 
		[40.0, 5.5], [40, 2], [40, 0], 
		[38, 0], [22.5, 0.0], [7, 0], 
		[5, 0], [5, 2], [5.0, 5.5], 
		[5, 9], [5, 11], [6, 12], 
		[17, 21], [22.5, 26.5], [28, 32], 
		[29, 34], [30, 36], [30.5, 37.5], 
		[31, 39], [31, 41], [31, 45], 
		[28.5, 47.5], [26, 50], [21, 50], 
		[18, 50], [15.0, 49.0], [12, 48], 
		[8, 45], [7, 45], [6.5, 45.5], 
		[6, 46], [6, 47], [5.5, 48.5], 
		[5, 50], [5, 51], [5.0, 51.5], 
		[5, 52], [6, 52], [10, 55], 
		[14.0, 56.0], [18, 57], [21, 57], 
		[25, 57], [28.5, 56.0], [32, 55], 
		[34.5, 52.5], [37, 50], [38.5, 47.5], 
		[40, 45], [40, 41], [40, 37], 
		[38.0, 33.5], [36, 30], [33.5, 26.5], 
		[31, 23], [28.0, 19.5], [25, 16], 
		[23, 13], [22, 12], [22.5, 11.5], 
		[23, 11], [24, 11], [31.0, 11.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x32_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 12], [17, 21], [22.5, 26.5],steps,height);
	BezConic([22.5, 26.5], [28, 32], [29, 34],steps,height);
	BezConic([29, 34], [30, 36], [30.5, 37.5],steps,height);
	BezConic([30.5, 37.5], [31, 39], [31, 41],steps,height);
	BezConic([31, 41], [31, 45], [28.5, 47.5],steps,height);
	BezConic([28.5, 47.5], [26, 50], [21, 50],steps,height);
	BezConic([21, 50], [18, 50], [15.0, 49.0],steps,height);
	BezConic([15.0, 49.0], [12, 48], [8, 45],steps,height);
	BezConic([5, 50], [5, 51], [5.0, 51.5],steps,height);
	BezConic([28.0, 19.5], [25, 16], [23, 13],steps,height);
	BezConic([23, 13], [22, 12], [22.5, 11.5],steps,height);
	BezConic([22.5, 11.5], [23, 11], [24, 11],steps,height);
}
}

module OpenDyslexicRegular_contour00x32_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([38, 11], [40, 11], [40, 9],steps,height);
	BezConic([40, 2], [40, 0], [38, 0],steps,height);
	BezConic([7, 0], [5, 0], [5, 2],steps,height);
	BezConic([5, 9], [5, 11], [6, 12],steps,height);
	BezConic([8, 45], [7, 45], [6.5, 45.5],steps,height);
	BezConic([6.5, 45.5], [6, 46], [6, 47],steps,height);
	BezConic([5.0, 51.5], [5, 52], [6, 52],steps,height);
	BezConic([6, 52], [10, 55], [14.0, 56.0],steps,height);
	BezConic([14.0, 56.0], [18, 57], [21, 57],steps,height);
	BezConic([21, 57], [25, 57], [28.5, 56.0],steps,height);
	BezConic([28.5, 56.0], [32, 55], [34.5, 52.5],steps,height);
	BezConic([34.5, 52.5], [37, 50], [38.5, 47.5],steps,height);
	BezConic([38.5, 47.5], [40, 45], [40, 41],steps,height);
	BezConic([40, 41], [40, 37], [38.0, 33.5],steps,height);
	BezConic([38.0, 33.5], [36, 30], [33.5, 26.5],steps,height);
	BezConic([33.5, 26.5], [31, 23], [28.0, 19.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x32(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x32_skeleton(height);
			OpenDyslexicRegular_contour00x32_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x32_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x32(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x32(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x32=[[5, 0], [40, 57]];

module OpenDyslexicRegular_letter0x32(steps=2, height) {
	OpenDyslexicRegular_chunk10x32(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x33_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[34, 30], [37, 29], [38.0, 27.5], 
		[39, 26], [40.0, 24.5], [41, 23], 
		[41.5, 21.0], [42, 19], [42, 17], 
		[42, 8], [36.5, 3.5], [31, -1], 
		[20, -1], [14, -1], [7, 1], 
		[6, 2], [6.0, 2.5], [6, 3], 
		[5, 3], [5.0, 7.0], [5, 11], 
		[5, 12], [5.5, 12.5], [6, 13], 
		[7, 12], [9, 11], [12.5, 10.5], 
		[16, 10], [19.5, 10.0], [23, 10], 
		[26.0, 10.5], [29, 11], [31, 13], 
		[33, 15], [33.5, 17.5], [34, 20], 
		[33.0, 22.0], [32, 24], [29.0, 25.5], 
		[26, 27], [21, 27], [19.0, 27.0], 
		[17, 27], [15, 27], [15, 29], 
		[15.0, 30.5], [15, 32], [15, 33], 
		[17, 33], [19.5, 33.0], [22, 33], 
		[27, 33], [30.0, 35.5], [33, 38], 
		[33, 42], [33, 44], [32.5, 46.0], 
		[32, 48], [30.5, 49.0], [29, 50], 
		[27.0, 50.5], [25, 51], [23, 51], 
		[20, 51], [16.5, 50.5], [13, 50], 
		[9, 49], [8, 49], [7.5, 49.5], 
		[7, 50], [7, 51], [6.5, 52.5], 
		[6, 54], [6, 54], [6.0, 54.5], 
		[6, 55], [7, 56], [11, 56], 
		[15.0, 57.0], [19, 58], [23, 57], 
		[27, 57], [30.0, 56.0], [33, 55], 
		[35.5, 53.0], [38, 51], [39.0, 48.5], 
		[40, 46], [40, 42], [40, 40], 
		[40.0, 38.5], [40, 37], [39.0, 36.0], 
		[38, 35], [37.0, 33.5], [36, 32], 
		[34, 31],[33, 30], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[34, 30], [37, 29], [38.0, 27.5], 
		[39, 26], [40.0, 24.5], [41, 23], 
		[41.5, 21.0], [42, 19], [42, 17], 
		[42, 8], [36.5, 3.5], [31, -1], 
		[20, -1], [14, -1], [7, 1], 
		[6, 2], [6.0, 2.5], [6, 3], 
		[5, 3], [5.0, 7.0], [5, 11], 
		[5, 12], [5.5, 12.5], [6, 13], 
		[7, 12], [9, 11], [12.5, 10.5], 
		[16, 10], [19.5, 10.0], [23, 10], 
		[26.0, 10.5], [29, 11], [31, 13], 
		[33, 15], [33.5, 17.5], [34, 20], 
		[33.0, 22.0], [32, 24], [29.0, 25.5], 
		[26, 27], [21, 27], [19.0, 27.0], 
		[17, 27], [15, 27], [15, 29], 
		[15.0, 30.5], [15, 32], [15, 33], 
		[17, 33], [19.5, 33.0], [22, 33], 
		[27, 33], [30.0, 35.5], [33, 38], 
		[33, 42], [33, 44], [32.5, 46.0], 
		[32, 48], [30.5, 49.0], [29, 50], 
		[27.0, 50.5], [25, 51], [23, 51], 
		[20, 51], [16.5, 50.5], [13, 50], 
		[9, 49], [8, 49], [7.5, 49.5], 
		[7, 50], [7, 51], [6.5, 52.5], 
		[6, 54], [6, 54], [6.0, 54.5], 
		[6, 55], [7, 56], [11, 56], 
		[15.0, 57.0], [19, 58], [23, 57], 
		[27, 57], [30.0, 56.0], [33, 55], 
		[35.5, 53.0], [38, 51], [39.0, 48.5], 
		[40, 46], [40, 42], [40, 40], 
		[40.0, 38.5], [40, 37], [39.0, 36.0], 
		[38, 35], [37.0, 33.5], [36, 32], 
		[34, 31],[33, 30], ]);
}}}

module OpenDyslexicRegular_contour00x33_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([38.0, 27.5], [39, 26], [40.0, 24.5],steps,height);
	BezConic([6.0, 2.5], [6, 3], [5, 3],steps,height);
	BezConic([7, 12], [9, 11], [12.5, 10.5],steps,height);
	BezConic([12.5, 10.5], [16, 10], [19.5, 10.0],steps,height);
	BezConic([19.5, 10.0], [23, 10], [26.0, 10.5],steps,height);
	BezConic([26.0, 10.5], [29, 11], [31, 13],steps,height);
	BezConic([31, 13], [33, 15], [33.5, 17.5],steps,height);
	BezConic([33.5, 17.5], [34, 20], [33.0, 22.0],steps,height);
	BezConic([33.0, 22.0], [32, 24], [29.0, 25.5],steps,height);
	BezConic([29.0, 25.5], [26, 27], [21, 27],steps,height);
	BezConic([22, 33], [27, 33], [30.0, 35.5],steps,height);
	BezConic([30.0, 35.5], [33, 38], [33, 42],steps,height);
	BezConic([33, 42], [33, 44], [32.5, 46.0],steps,height);
	BezConic([32.5, 46.0], [32, 48], [30.5, 49.0],steps,height);
	BezConic([30.5, 49.0], [29, 50], [27.0, 50.5],steps,height);
	BezConic([27.0, 50.5], [25, 51], [23, 51],steps,height);
	BezConic([23, 51], [20, 51], [16.5, 50.5],steps,height);
	BezConic([16.5, 50.5], [13, 50], [9, 49],steps,height);
	BezConic([6, 54], [6, 54], [6.0, 54.5],steps,height);
	BezConic([7, 56], [11, 56], [15.0, 57.0],steps,height);
	BezConic([40, 42], [40, 40], [40.0, 38.5],steps,height);
	BezConic([39.0, 36.0], [38, 35], [37.0, 33.5],steps,height);
	BezConic([34, 31], [33, 30], [34, 30],steps,height);
}
}

module OpenDyslexicRegular_contour00x33_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([34, 30], [37, 29], [38.0, 27.5],steps,height);
	BezConic([40.0, 24.5], [41, 23], [41.5, 21.0],steps,height);
	BezConic([41.5, 21.0], [42, 19], [42, 17],steps,height);
	BezConic([42, 17], [42, 8], [36.5, 3.5],steps,height);
	BezConic([36.5, 3.5], [31, -1], [20, -1],steps,height);
	BezConic([20, -1], [14, -1], [7, 1],steps,height);
	BezConic([7, 1], [6, 2], [6.0, 2.5],steps,height);
	BezConic([5, 11], [5, 12], [5.5, 12.5],steps,height);
	BezConic([5.5, 12.5], [6, 13], [7, 12],steps,height);
	BezConic([17, 27], [15, 27], [15, 29],steps,height);
	BezConic([15, 32], [15, 33], [17, 33],steps,height);
	BezConic([9, 49], [8, 49], [7.5, 49.5],steps,height);
	BezConic([7.5, 49.5], [7, 50], [7, 51],steps,height);
	BezConic([6.0, 54.5], [6, 55], [7, 56],steps,height);
	BezConic([15.0, 57.0], [19, 58], [23, 57],steps,height);
	BezConic([23, 57], [27, 57], [30.0, 56.0],steps,height);
	BezConic([30.0, 56.0], [33, 55], [35.5, 53.0],steps,height);
	BezConic([35.5, 53.0], [38, 51], [39.0, 48.5],steps,height);
	BezConic([39.0, 48.5], [40, 46], [40, 42],steps,height);
	BezConic([40.0, 38.5], [40, 37], [39.0, 36.0],steps,height);
	BezConic([37.0, 33.5], [36, 32], [34, 31],steps,height);
}
}

module OpenDyslexicRegular_contour00x33(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x33_skeleton(height);
			OpenDyslexicRegular_contour00x33_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x33_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x33(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x33(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x33=[[5, -1], [42, 58]];

module OpenDyslexicRegular_letter0x33(steps=2, height) {
	OpenDyslexicRegular_chunk10x33(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x34_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[18, 52], [18, 48], [17.5, 45.0], 
		[17, 42], [16.5, 40.0], [16, 38], 
		[15.5, 36.5], [15, 35], [15.0, 34.0], 
		[15, 33], [14.5, 31.5], [14, 30], 
		[14, 29], [14, 27], [14.0, 26.5], 
		[14, 26], [15, 26], [20.0, 26.0], 
		[25, 26], [26, 26], [26.5, 26.5], 
		[27, 27], [27, 28], [28, 31], 
		[28.0, 32.5], [28, 34], [28.0, 35.5], 
		[28, 37], [28.5, 38.5], [29, 40], 
		[29.0, 42.0], [29, 44], [29.5, 47.0], 
		[30, 50], [30, 55], [30, 55], 
		[30.0, 55.0], [30, 55], [31, 56], 
		[33.0, 56.5], [35, 57], [36, 57], 
		[36.5, 57.0], [37, 57], [37, 55], 
		[36.5, 41.5], [36, 28], [36, 27], 
		[36.5, 26.5], [37, 26], [38, 26], 
		[40.0, 26.0], [42, 26], [44, 26], 
		[44, 24], [43.5, 22.0], [43, 20], 
		[43, 18], [42, 18], [40.0, 18.0], 
		[38, 18], [37, 18], [36.5, 17.5], 
		[36, 17], [36, 17], [36.5, 9.5], 
		[37, 2], [37, 0], [35, 0], 
		[31.0, 0.0], [27, 0], [26, 0], 
		[25.5, 0.5], [25, 1], [25, 2], 
		[26.0, 9.5], [27, 17], [27, 18], 
		[26.5, 18.5], [26, 19], [25, 19], 
		[15.5, 19.0], [6, 19], [4, 19], 
		[5, 20], [6, 24], [6.5, 27.0], 
		[7, 30], [7.5, 32.0], [8, 34], 
		[8.5, 36.0], [9, 38], [9.0, 40.0], 
		[9, 42], [10.0, 44.5], [11, 47], 
		[12, 51], [12, 52], [13, 52], 
		[15.0, 52.5], [17, 53], [19, 54], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[18, 52], [18, 48], [17.5, 45.0], 
		[17, 42], [16.5, 40.0], [16, 38], 
		[15.5, 36.5], [15, 35], [15.0, 34.0], 
		[15, 33], [14.5, 31.5], [14, 30], 
		[14, 29], [14, 27], [14.0, 26.5], 
		[14, 26], [15, 26], [20.0, 26.0], 
		[25, 26], [26, 26], [26.5, 26.5], 
		[27, 27], [27, 28], [28, 31], 
		[28.0, 32.5], [28, 34], [28.0, 35.5], 
		[28, 37], [28.5, 38.5], [29, 40], 
		[29.0, 42.0], [29, 44], [29.5, 47.0], 
		[30, 50], [30, 55], [30, 55], 
		[30.0, 55.0], [30, 55], [31, 56], 
		[33.0, 56.5], [35, 57], [36, 57], 
		[36.5, 57.0], [37, 57], [37, 55], 
		[36.5, 41.5], [36, 28], [36, 27], 
		[36.5, 26.5], [37, 26], [38, 26], 
		[40.0, 26.0], [42, 26], [44, 26], 
		[44, 24], [43.5, 22.0], [43, 20], 
		[43, 18], [42, 18], [40.0, 18.0], 
		[38, 18], [37, 18], [36.5, 17.5], 
		[36, 17], [36, 17], [36.5, 9.5], 
		[37, 2], [37, 0], [35, 0], 
		[31.0, 0.0], [27, 0], [26, 0], 
		[25.5, 0.5], [25, 1], [25, 2], 
		[26.0, 9.5], [27, 17], [27, 18], 
		[26.5, 18.5], [26, 19], [25, 19], 
		[15.5, 19.0], [6, 19], [4, 19], 
		[5, 20], [6, 24], [6.5, 27.0], 
		[7, 30], [7.5, 32.0], [8, 34], 
		[8.5, 36.0], [9, 38], [9.0, 40.0], 
		[9, 42], [10.0, 44.5], [11, 47], 
		[12, 51], [12, 52], [13, 52], 
		[15.0, 52.5], [17, 53], [19, 54], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x34_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15.5, 36.5], [15, 35], [15.0, 34.0],steps,height);
	BezConic([14.5, 31.5], [14, 30], [14, 29],steps,height);
	BezConic([14, 29], [14, 27], [14.0, 26.5],steps,height);
	BezConic([14.0, 26.5], [14, 26], [15, 26],steps,height);
	BezConic([25, 26], [26, 26], [26.5, 26.5],steps,height);
	BezConic([26.5, 26.5], [27, 27], [27, 28],steps,height);
	BezConic([27, 28], [28, 31], [28.0, 32.5],steps,height);
	BezConic([28.0, 32.5], [28, 34], [28.0, 35.5],steps,height);
	BezConic([28.5, 38.5], [29, 40], [29.0, 42.0],steps,height);
	BezConic([29.5, 47.0], [30, 50], [30, 55],steps,height);
	BezConic([30, 55], [30, 55], [30.0, 55.0],steps,height);
	BezConic([30.0, 55.0], [30, 55], [31, 56],steps,height);
	BezConic([35, 57], [36, 57], [36.5, 57.0],steps,height);
	BezConic([36, 28], [36, 27], [36.5, 26.5],steps,height);
	BezConic([36.5, 26.5], [37, 26], [38, 26],steps,height);
	BezConic([38, 18], [37, 18], [36.5, 17.5],steps,height);
	BezConic([36.5, 17.5], [36, 17], [36, 17],steps,height);
	BezConic([27, 17], [27, 18], [26.5, 18.5],steps,height);
	BezConic([26.5, 18.5], [26, 19], [25, 19],steps,height);
	BezConic([5, 20], [6, 24], [6.5, 27.0],steps,height);
	BezConic([7.5, 32.0], [8, 34], [8.5, 36.0],steps,height);
	BezConic([8.5, 36.0], [9, 38], [9.0, 40.0],steps,height);
	BezConic([10.0, 44.5], [11, 47], [12, 51],steps,height);
}
}

module OpenDyslexicRegular_contour00x34_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 52], [18, 48], [17.5, 45.0],steps,height);
	BezConic([17.5, 45.0], [17, 42], [16.5, 40.0],steps,height);
	BezConic([16.5, 40.0], [16, 38], [15.5, 36.5],steps,height);
	BezConic([15.0, 34.0], [15, 33], [14.5, 31.5],steps,height);
	BezConic([28.0, 35.5], [28, 37], [28.5, 38.5],steps,height);
	BezConic([29.0, 42.0], [29, 44], [29.5, 47.0],steps,height);
	BezConic([36.5, 57.0], [37, 57], [37, 55],steps,height);
	BezConic([42, 26], [44, 26], [44, 24],steps,height);
	BezConic([43, 20], [43, 18], [42, 18],steps,height);
	BezConic([37, 2], [37, 0], [35, 0],steps,height);
	BezConic([27, 0], [26, 0], [25.5, 0.5],steps,height);
	BezConic([25.5, 0.5], [25, 1], [25, 2],steps,height);
	BezConic([6, 19], [4, 19], [5, 20],steps,height);
	BezConic([6.5, 27.0], [7, 30], [7.5, 32.0],steps,height);
	BezConic([9.0, 40.0], [9, 42], [10.0, 44.5],steps,height);
	BezConic([12, 51], [12, 52], [13, 52],steps,height);
	BezConic([17, 53], [19, 54], [18, 52],steps,height);
}
}

module OpenDyslexicRegular_contour00x34(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x34_skeleton(height);
			OpenDyslexicRegular_contour00x34_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x34_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x34(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x34(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x34=[[4, 0], [44, 57]];

module OpenDyslexicRegular_letter0x34(steps=2, height) {
	OpenDyslexicRegular_chunk10x34(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x35_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 54], [6, 56], [8, 56], 
		[20.5, 56.0], [33, 56], [34, 56], 
		[34.0, 55.5], [34, 55], [35, 54], 
		[35.0, 53.0], [35, 52], [36, 51], 
		[35.5, 50.5], [35, 50], [34, 50], 
		[24.0, 50.0], [14, 50], [12, 50], 
		[12, 48], [12.5, 43.0], [13, 38], 
		[13, 36], [15, 37], [19, 38], 
		[23.5, 37.5], [28, 37], [32.0, 34.5], 
		[36, 32], [38.0, 28.0], [40, 24], 
		[40, 18], [40, 9], [34.5, 4.0], 
		[29, -1], [19, -1], [16, -1], 
		[13.0, -0.5], [10, 0], [6, 1], 
		[4, 1], [5, 3], [5.0, 7.0], 
		[5, 11], [6, 13], [8, 12], 
		[10, 11], [13.0, 10.5], [16, 10], 
		[18.5, 9.5], [21, 9], [23.5, 9.5], 
		[26, 10], [28.0, 11.5], [30, 13], 
		[31.5, 14.5], [33, 16], [33, 19], 
		[33, 22], [31.5, 24.0], [30, 26], 
		[28.5, 27.0], [27, 28], [24.5, 29.0], 
		[22, 30], [20.0, 30.0], [18, 30], 
		[16.0, 30.0], [14, 30], [13, 29], 
		[12, 28], [11.0, 28.0], [10, 28], 
		[9, 28], [8, 28], [7.5, 28.0], 
		[7, 28], [7, 29], [6.5, 41.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 54], [6, 56], [8, 56], 
		[20.5, 56.0], [33, 56], [34, 56], 
		[34.0, 55.5], [34, 55], [35, 54], 
		[35.0, 53.0], [35, 52], [36, 51], 
		[35.5, 50.5], [35, 50], [34, 50], 
		[24.0, 50.0], [14, 50], [12, 50], 
		[12, 48], [12.5, 43.0], [13, 38], 
		[13, 36], [15, 37], [19, 38], 
		[23.5, 37.5], [28, 37], [32.0, 34.5], 
		[36, 32], [38.0, 28.0], [40, 24], 
		[40, 18], [40, 9], [34.5, 4.0], 
		[29, -1], [19, -1], [16, -1], 
		[13.0, -0.5], [10, 0], [6, 1], 
		[4, 1], [5, 3], [5.0, 7.0], 
		[5, 11], [6, 13], [8, 12], 
		[10, 11], [13.0, 10.5], [16, 10], 
		[18.5, 9.5], [21, 9], [23.5, 9.5], 
		[26, 10], [28.0, 11.5], [30, 13], 
		[31.5, 14.5], [33, 16], [33, 19], 
		[33, 22], [31.5, 24.0], [30, 26], 
		[28.5, 27.0], [27, 28], [24.5, 29.0], 
		[22, 30], [20.0, 30.0], [18, 30], 
		[16.0, 30.0], [14, 30], [13, 29], 
		[12, 28], [11.0, 28.0], [10, 28], 
		[9, 28], [8, 28], [7.5, 28.0], 
		[7, 28], [7, 29], [6.5, 41.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x35_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([34.0, 55.5], [34, 55], [35, 54],steps,height);
	BezConic([14, 50], [12, 50], [12, 48],steps,height);
	BezConic([13, 38], [13, 36], [15, 37],steps,height);
	BezConic([8, 12], [10, 11], [13.0, 10.5],steps,height);
	BezConic([18.5, 9.5], [21, 9], [23.5, 9.5],steps,height);
	BezConic([23.5, 9.5], [26, 10], [28.0, 11.5],steps,height);
	BezConic([28.0, 11.5], [30, 13], [31.5, 14.5],steps,height);
	BezConic([31.5, 14.5], [33, 16], [33, 19],steps,height);
	BezConic([33, 19], [33, 22], [31.5, 24.0],steps,height);
	BezConic([31.5, 24.0], [30, 26], [28.5, 27.0],steps,height);
	BezConic([28.5, 27.0], [27, 28], [24.5, 29.0],steps,height);
	BezConic([24.5, 29.0], [22, 30], [20.0, 30.0],steps,height);
	BezConic([20.0, 30.0], [18, 30], [16.0, 30.0],steps,height);
	BezConic([16.0, 30.0], [14, 30], [13, 29],steps,height);
	BezConic([11.0, 28.0], [10, 28], [9, 28],steps,height);
	BezConic([9, 28], [8, 28], [7.5, 28.0],steps,height);
}
}

module OpenDyslexicRegular_contour00x35_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 54], [6, 56], [8, 56],steps,height);
	BezConic([33, 56], [34, 56], [34.0, 55.5],steps,height);
	BezConic([35, 52], [36, 51], [35.5, 50.5],steps,height);
	BezConic([35.5, 50.5], [35, 50], [34, 50],steps,height);
	BezConic([15, 37], [19, 38], [23.5, 37.5],steps,height);
	BezConic([23.5, 37.5], [28, 37], [32.0, 34.5],steps,height);
	BezConic([32.0, 34.5], [36, 32], [38.0, 28.0],steps,height);
	BezConic([38.0, 28.0], [40, 24], [40, 18],steps,height);
	BezConic([40, 18], [40, 9], [34.5, 4.0],steps,height);
	BezConic([34.5, 4.0], [29, -1], [19, -1],steps,height);
	BezConic([19, -1], [16, -1], [13.0, -0.5],steps,height);
	BezConic([13.0, -0.5], [10, 0], [6, 1],steps,height);
	BezConic([6, 1], [4, 1], [5, 3],steps,height);
	BezConic([5, 11], [6, 13], [8, 12],steps,height);
	BezConic([13.0, 10.5], [16, 10], [18.5, 9.5],steps,height);
	BezConic([13, 29], [12, 28], [11.0, 28.0],steps,height);
	BezConic([7.5, 28.0], [7, 28], [7, 29],steps,height);
}
}

module OpenDyslexicRegular_contour00x35(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x35_skeleton(height);
			OpenDyslexicRegular_contour00x35_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x35_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x35(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x35(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x35=[[4, -1], [40, 56]];

module OpenDyslexicRegular_letter0x35(steps=2, height) {
	OpenDyslexicRegular_chunk10x35(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x36_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[24, 31], [19, 31], [16.5, 27.5], 
		[14, 24], [14, 18], [14, 14], 
		[17.0, 12.0], [20, 10], [25, 10], 
		[30, 10], [33.0, 12.0], [36, 14], 
		[35, 18], [35, 21], [34.5, 23.5], 
		[34, 26], [32.5, 27.5], [31, 29], 
		[29.0, 30.0],[27, 31], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[24, 31], [19, 31], [16.5, 27.5], 
		[14, 24], [14, 18], [14, 14], 
		[17.0, 12.0], [20, 10], [25, 10], 
		[30, 10], [33.0, 12.0], [36, 14], 
		[35, 18], [35, 21], [34.5, 23.5], 
		[34, 26], [32.5, 27.5], [31, 29], 
		[29.0, 30.0],[27, 31], ]);
}}}

module OpenDyslexicRegular_contour00x36_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 31], [19, 31], [16.5, 27.5],steps,height);
	BezConic([16.5, 27.5], [14, 24], [14, 18],steps,height);
	BezConic([14, 18], [14, 14], [17.0, 12.0],steps,height);
	BezConic([17.0, 12.0], [20, 10], [25, 10],steps,height);
	BezConic([25, 10], [30, 10], [33.0, 12.0],steps,height);
	BezConic([33.0, 12.0], [36, 14], [35, 18],steps,height);
	BezConic([35, 18], [35, 21], [34.5, 23.5],steps,height);
	BezConic([34.5, 23.5], [34, 26], [32.5, 27.5],steps,height);
	BezConic([32.5, 27.5], [31, 29], [29.0, 30.0],steps,height);
	BezConic([29.0, 30.0], [27, 31], [24, 31],steps,height);
}
}

module OpenDyslexicRegular_contour00x36_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x36(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x36_skeleton(height);
			OpenDyslexicRegular_contour00x36_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x36_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x36_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[39, 50], [39, 49], [38.5, 48.5], 
		[38, 48], [37, 48], [32, 50], 
		[27, 50], [14, 50], [12, 33], 
		[12, 31], [12.5, 31.0], [13, 31], 
		[14, 32], [16, 34], [18.5, 35.0], 
		[21, 36], [25, 37], [29, 37], 
		[32.5, 35.5], [36, 34], [38.0, 31.5], 
		[40, 29], [41.5, 25.5], [43, 22], 
		[43, 18], [43, 14], [41.5, 10.5], 
		[40, 7], [38.0, 4.5], [36, 2], 
		[32.5, 0.5], [29, -1], [25, -1], 
		[15, -1], [10.0, 6.0], [5, 13], 
		[5, 27], [5, 34], [6.5, 39.0], 
		[8, 44], [11.0, 48.0], [14, 52], 
		[18.0, 54.0], [22, 56], [27, 56], 
		[30, 56], [32.0, 55.5], [34, 55], 
		[37, 55], [37, 55], [37.5, 54.0], 
		[38, 53], [38, 53], [38.5, 51.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[39, 50], [39, 49], [38.5, 48.5], 
		[38, 48], [37, 48], [32, 50], 
		[27, 50], [14, 50], [12, 33], 
		[12, 31], [12.5, 31.0], [13, 31], 
		[14, 32], [16, 34], [18.5, 35.0], 
		[21, 36], [25, 37], [29, 37], 
		[32.5, 35.5], [36, 34], [38.0, 31.5], 
		[40, 29], [41.5, 25.5], [43, 22], 
		[43, 18], [43, 14], [41.5, 10.5], 
		[40, 7], [38.0, 4.5], [36, 2], 
		[32.5, 0.5], [29, -1], [25, -1], 
		[15, -1], [10.0, 6.0], [5, 13], 
		[5, 27], [5, 34], [6.5, 39.0], 
		[8, 44], [11.0, 48.0], [14, 52], 
		[18.0, 54.0], [22, 56], [27, 56], 
		[30, 56], [32.0, 55.5], [34, 55], 
		[37, 55], [37, 55], [37.5, 54.0], 
		[38, 53], [38, 53], [38.5, 51.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour10x36_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([37, 48], [32, 50], [27, 50],steps,height);
	BezConic([27, 50], [14, 50], [12, 33],steps,height);
	BezConic([12, 33], [12, 31], [12.5, 31.0],steps,height);
	BezConic([12.5, 31.0], [13, 31], [14, 32],steps,height);
	BezConic([32.0, 55.5], [34, 55], [37, 55],steps,height);
	BezConic([37.5, 54.0], [38, 53], [38, 53],steps,height);
}
}

module OpenDyslexicRegular_contour10x36_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([39, 50], [39, 49], [38.5, 48.5],steps,height);
	BezConic([38.5, 48.5], [38, 48], [37, 48],steps,height);
	BezConic([14, 32], [16, 34], [18.5, 35.0],steps,height);
	BezConic([18.5, 35.0], [21, 36], [25, 37],steps,height);
	BezConic([25, 37], [29, 37], [32.5, 35.5],steps,height);
	BezConic([32.5, 35.5], [36, 34], [38.0, 31.5],steps,height);
	BezConic([38.0, 31.5], [40, 29], [41.5, 25.5],steps,height);
	BezConic([41.5, 25.5], [43, 22], [43, 18],steps,height);
	BezConic([43, 18], [43, 14], [41.5, 10.5],steps,height);
	BezConic([41.5, 10.5], [40, 7], [38.0, 4.5],steps,height);
	BezConic([38.0, 4.5], [36, 2], [32.5, 0.5],steps,height);
	BezConic([32.5, 0.5], [29, -1], [25, -1],steps,height);
	BezConic([25, -1], [15, -1], [10.0, 6.0],steps,height);
	BezConic([10.0, 6.0], [5, 13], [5, 27],steps,height);
	BezConic([5, 27], [5, 34], [6.5, 39.0],steps,height);
	BezConic([6.5, 39.0], [8, 44], [11.0, 48.0],steps,height);
	BezConic([11.0, 48.0], [14, 52], [18.0, 54.0],steps,height);
	BezConic([18.0, 54.0], [22, 56], [27, 56],steps,height);
	BezConic([27, 56], [30, 56], [32.0, 55.5],steps,height);
	BezConic([37, 55], [37, 55], [37.5, 54.0],steps,height);
}
}

module OpenDyslexicRegular_contour10x36(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x36_skeleton(height);
			OpenDyslexicRegular_contour10x36_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x36_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x36(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x36(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x36(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x36(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x36=[[5, -1], [43, 56]];

module OpenDyslexicRegular_letter0x36(steps=2, height) {
	OpenDyslexicRegular_chunk00x36(steps, height);
	OpenDyslexicRegular_chunk10x36(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x37_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 54], [5, 55], [5.5, 55.5], 
		[6, 56], [7, 56], [22.5, 56.0], 
		[38, 56], [40, 56], [40, 54], 
		[40.0, 54.0], [40, 54], [40, 53], 
		[40.0, 52.0], [40, 51], [39, 51], 
		[31.5, 26.5], [24, 2], [24, 0], 
		[22, 0], [17.5, 0.0], [13, 0], 
		[12, 0], [11.5, 0.5], [11, 1], 
		[11, 2], [21.5, 24.5], [32, 47], 
		[33, 48], [32.5, 49.0], [32, 50], 
		[31, 50], [19.0, 50.0], [7, 50], 
		[6, 50], [6.0, 50.5], [6, 51], 
		[5, 51],[5.0, 52.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 54], [5, 55], [5.5, 55.5], 
		[6, 56], [7, 56], [22.5, 56.0], 
		[38, 56], [40, 56], [40, 54], 
		[40.0, 54.0], [40, 54], [40, 53], 
		[40.0, 52.0], [40, 51], [39, 51], 
		[31.5, 26.5], [24, 2], [24, 0], 
		[22, 0], [17.5, 0.0], [13, 0], 
		[12, 0], [11.5, 0.5], [11, 1], 
		[11, 2], [21.5, 24.5], [32, 47], 
		[33, 48], [32.5, 49.0], [32, 50], 
		[31, 50], [19.0, 50.0], [7, 50], 
		[6, 50], [6.0, 50.5], [6, 51], 
		[5, 51],[5.0, 52.5], ]);
}}}

module OpenDyslexicRegular_contour00x37_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([40, 54], [40, 53], [40.0, 52.0],steps,height);
	BezConic([32, 47], [33, 48], [32.5, 49.0],steps,height);
	BezConic([32.5, 49.0], [32, 50], [31, 50],steps,height);
	BezConic([6.0, 50.5], [6, 51], [5, 51],steps,height);
}
}

module OpenDyslexicRegular_contour00x37_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 54], [5, 55], [5.5, 55.5],steps,height);
	BezConic([5.5, 55.5], [6, 56], [7, 56],steps,height);
	BezConic([38, 56], [40, 56], [40, 54],steps,height);
	BezConic([40.0, 52.0], [40, 51], [39, 51],steps,height);
	BezConic([24, 2], [24, 0], [22, 0],steps,height);
	BezConic([13, 0], [12, 0], [11.5, 0.5],steps,height);
	BezConic([11.5, 0.5], [11, 1], [11, 2],steps,height);
	BezConic([7, 50], [6, 50], [6.0, 50.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x37(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x37_skeleton(height);
			OpenDyslexicRegular_contour00x37_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x37_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x37(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x37(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x37=[[5, 0], [40, 56]];

module OpenDyslexicRegular_letter0x37(steps=2, height) {
	OpenDyslexicRegular_chunk10x37(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x38_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[24, 26], [19, 26], [16.0, 24.0], 
		[13, 22], [13, 16], [13, 15], 
		[13.5, 14.0], [14, 13], [15.5, 12.0], 
		[17, 11], [19.5, 10.0], [22, 9], 
		[24, 9], [27, 9], [29.0, 10.0], 
		[31, 11], [32.5, 12.0], [34, 13], 
		[35.0, 14.0], [36, 15], [36, 16], 
		[36, 22], [33.0, 24.0], [30, 26], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[24, 26], [19, 26], [16.0, 24.0], 
		[13, 22], [13, 16], [13, 15], 
		[13.5, 14.0], [14, 13], [15.5, 12.0], 
		[17, 11], [19.5, 10.0], [22, 9], 
		[24, 9], [27, 9], [29.0, 10.0], 
		[31, 11], [32.5, 12.0], [34, 13], 
		[35.0, 14.0], [36, 15], [36, 16], 
		[36, 22], [33.0, 24.0], [30, 26], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x38_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 26], [19, 26], [16.0, 24.0],steps,height);
	BezConic([16.0, 24.0], [13, 22], [13, 16],steps,height);
	BezConic([13, 16], [13, 15], [13.5, 14.0],steps,height);
	BezConic([13.5, 14.0], [14, 13], [15.5, 12.0],steps,height);
	BezConic([15.5, 12.0], [17, 11], [19.5, 10.0],steps,height);
	BezConic([19.5, 10.0], [22, 9], [24, 9],steps,height);
	BezConic([24, 9], [27, 9], [29.0, 10.0],steps,height);
	BezConic([29.0, 10.0], [31, 11], [32.5, 12.0],steps,height);
	BezConic([32.5, 12.0], [34, 13], [35.0, 14.0],steps,height);
	BezConic([35.0, 14.0], [36, 15], [36, 16],steps,height);
	BezConic([36, 16], [36, 22], [33.0, 24.0],steps,height);
	BezConic([33.0, 24.0], [30, 26], [24, 26],steps,height);
}
}

module OpenDyslexicRegular_contour00x38_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x38(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x38_skeleton(height);
			OpenDyslexicRegular_contour00x38_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x38_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x38_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[15, 43], [15, 39], [17.5, 36.5], 
		[20, 34], [24, 34], [29, 34], 
		[31.5, 36.5], [34, 39], [34, 43], 
		[34, 47], [31.5, 49.5], [29, 52], 
		[24, 52], [20, 52], [17.5, 49.5], 
		[15, 47], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[15, 43], [15, 39], [17.5, 36.5], 
		[20, 34], [24, 34], [29, 34], 
		[31.5, 36.5], [34, 39], [34, 43], 
		[34, 47], [31.5, 49.5], [29, 52], 
		[24, 52], [20, 52], [17.5, 49.5], 
		[15, 47], ]);
}}}

module OpenDyslexicRegular_contour10x38_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 43], [15, 39], [17.5, 36.5],steps,height);
	BezConic([17.5, 36.5], [20, 34], [24, 34],steps,height);
	BezConic([24, 34], [29, 34], [31.5, 36.5],steps,height);
	BezConic([31.5, 36.5], [34, 39], [34, 43],steps,height);
	BezConic([34, 43], [34, 47], [31.5, 49.5],steps,height);
	BezConic([31.5, 49.5], [29, 52], [24, 52],steps,height);
	BezConic([24, 52], [20, 52], [17.5, 49.5],steps,height);
	BezConic([17.5, 49.5], [15, 47], [15, 43],steps,height);
}
}

module OpenDyslexicRegular_contour10x38_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x38(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x38_skeleton(height);
			OpenDyslexicRegular_contour10x38_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x38_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour20x38_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[15, 30], [11, 32], [9.0, 35.0], 
		[7, 38], [7, 42], [7, 49], 
		[11.5, 53.0], [16, 57], [24, 57], 
		[33, 57], [37.0, 53.0], [41, 49], 
		[41, 42], [41, 38], [39.5, 35.0], 
		[38, 32], [34, 30], [33, 30], 
		[33.0, 29.5], [33, 29], [34, 29], 
		[38, 27], [41.0, 23.5], [44, 20], 
		[44, 16], [44, 12], [42.5, 9.0], 
		[41, 6], [38.5, 3.5], [36, 1], 
		[32.5, 0.0], [29, -1], [24, -1], 
		[20, -1], [16.0, 0.0], [12, 1], 
		[9.5, 3.5], [7, 6], [6.0, 9.0], 
		[5, 12], [5, 16], [5, 20], 
		[7.5, 23.5], [10, 27], [15, 29], 
		[17, 29], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[15, 30], [11, 32], [9.0, 35.0], 
		[7, 38], [7, 42], [7, 49], 
		[11.5, 53.0], [16, 57], [24, 57], 
		[33, 57], [37.0, 53.0], [41, 49], 
		[41, 42], [41, 38], [39.5, 35.0], 
		[38, 32], [34, 30], [33, 30], 
		[33.0, 29.5], [33, 29], [34, 29], 
		[38, 27], [41.0, 23.5], [44, 20], 
		[44, 16], [44, 12], [42.5, 9.0], 
		[41, 6], [38.5, 3.5], [36, 1], 
		[32.5, 0.0], [29, -1], [24, -1], 
		[20, -1], [16.0, 0.0], [12, 1], 
		[9.5, 3.5], [7, 6], [6.0, 9.0], 
		[5, 12], [5, 16], [5, 20], 
		[7.5, 23.5], [10, 27], [15, 29], 
		[17, 29], ]);
}}}

module OpenDyslexicRegular_contour20x38_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([34, 30], [33, 30], [33.0, 29.5],steps,height);
	BezConic([33.0, 29.5], [33, 29], [34, 29],steps,height);
	BezConic([15, 29], [17, 29], [15, 30],steps,height);
}
}

module OpenDyslexicRegular_contour20x38_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 30], [11, 32], [9.0, 35.0],steps,height);
	BezConic([9.0, 35.0], [7, 38], [7, 42],steps,height);
	BezConic([7, 42], [7, 49], [11.5, 53.0],steps,height);
	BezConic([11.5, 53.0], [16, 57], [24, 57],steps,height);
	BezConic([24, 57], [33, 57], [37.0, 53.0],steps,height);
	BezConic([37.0, 53.0], [41, 49], [41, 42],steps,height);
	BezConic([41, 42], [41, 38], [39.5, 35.0],steps,height);
	BezConic([39.5, 35.0], [38, 32], [34, 30],steps,height);
	BezConic([34, 29], [38, 27], [41.0, 23.5],steps,height);
	BezConic([41.0, 23.5], [44, 20], [44, 16],steps,height);
	BezConic([44, 16], [44, 12], [42.5, 9.0],steps,height);
	BezConic([42.5, 9.0], [41, 6], [38.5, 3.5],steps,height);
	BezConic([38.5, 3.5], [36, 1], [32.5, 0.0],steps,height);
	BezConic([32.5, 0.0], [29, -1], [24, -1],steps,height);
	BezConic([24, -1], [20, -1], [16.0, 0.0],steps,height);
	BezConic([16.0, 0.0], [12, 1], [9.5, 3.5],steps,height);
	BezConic([9.5, 3.5], [7, 6], [6.0, 9.0],steps,height);
	BezConic([6.0, 9.0], [5, 12], [5, 16],steps,height);
	BezConic([5, 16], [5, 20], [7.5, 23.5],steps,height);
	BezConic([7.5, 23.5], [10, 27], [15, 29],steps,height);
}
}

module OpenDyslexicRegular_contour20x38(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour20x38_skeleton(height);
			OpenDyslexicRegular_contour20x38_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour20x38_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x38(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x38(steps, height);
	translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x38(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x38(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour20x38(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x38=[[5, -1], [44, 57]];

module OpenDyslexicRegular_letter0x38(steps=2, height) {
	OpenDyslexicRegular_chunk00x38(steps, height);
	OpenDyslexicRegular_chunk10x38(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x39_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[20, 31], [22, 31], [23.5, 31.5], 
		[25, 32], [26.5, 33.0], [28, 34], 
		[28.5, 36.5], [29, 39], [29, 43], 
		[29, 45], [28.5, 46.5], [28, 48], 
		[26.5, 49.0], [25, 50], [23.5, 51.0], 
		[22, 52], [20, 52], [18, 52], 
		[16.5, 51.5], [15, 51], [14.0, 49.5], 
		[13, 48], [12.0, 46.5], [11, 45], 
		[11, 43], [11, 39], [11.5, 36.5], 
		[12, 34], [13.5, 33.0], [15, 32], 
		[16.5, 31.5],[18, 31], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[20, 31], [22, 31], [23.5, 31.5], 
		[25, 32], [26.5, 33.0], [28, 34], 
		[28.5, 36.5], [29, 39], [29, 43], 
		[29, 45], [28.5, 46.5], [28, 48], 
		[26.5, 49.0], [25, 50], [23.5, 51.0], 
		[22, 52], [20, 52], [18, 52], 
		[16.5, 51.5], [15, 51], [14.0, 49.5], 
		[13, 48], [12.0, 46.5], [11, 45], 
		[11, 43], [11, 39], [11.5, 36.5], 
		[12, 34], [13.5, 33.0], [15, 32], 
		[16.5, 31.5],[18, 31], ]);
}}}

module OpenDyslexicRegular_contour00x39_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20, 31], [22, 31], [23.5, 31.5],steps,height);
	BezConic([23.5, 31.5], [25, 32], [26.5, 33.0],steps,height);
	BezConic([26.5, 33.0], [28, 34], [28.5, 36.5],steps,height);
	BezConic([28.5, 36.5], [29, 39], [29, 43],steps,height);
	BezConic([29, 43], [29, 45], [28.5, 46.5],steps,height);
	BezConic([28.5, 46.5], [28, 48], [26.5, 49.0],steps,height);
	BezConic([26.5, 49.0], [25, 50], [23.5, 51.0],steps,height);
	BezConic([23.5, 51.0], [22, 52], [20, 52],steps,height);
	BezConic([20, 52], [18, 52], [16.5, 51.5],steps,height);
	BezConic([16.5, 51.5], [15, 51], [14.0, 49.5],steps,height);
	BezConic([14.0, 49.5], [13, 48], [12.0, 46.5],steps,height);
	BezConic([12.0, 46.5], [11, 45], [11, 43],steps,height);
	BezConic([11, 43], [11, 39], [11.5, 36.5],steps,height);
	BezConic([11.5, 36.5], [12, 34], [13.5, 33.0],steps,height);
	BezConic([13.5, 33.0], [15, 32], [16.5, 31.5],steps,height);
	BezConic([16.5, 31.5], [18, 31], [20, 31],steps,height);
}
}

module OpenDyslexicRegular_contour00x39_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x39(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x39_skeleton(height);
			OpenDyslexicRegular_contour00x39_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x39_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x39_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[9, 7], [9, 8], [9.5, 9.0], 
		[10, 10], [11, 10], [15, 10], 
		[18.0, 10.0], [21, 10], [23.0, 11.0], 
		[25, 12], [26.0, 13.5], [27, 15], 
		[27.5, 16.5], [28, 18], [28.5, 20.0], 
		[29, 22], [29, 24], [29, 25], 
		[29.0, 25.0], [29, 25], [28, 25], 
		[27, 25], [26.0, 24.5], [25, 24], 
		[23.5, 24.0], [22, 24], [21.0, 24.0], 
		[20, 24], [19, 24], [16, 24], 
		[13.5, 24.5], [11, 25], [9.0, 26.5], 
		[7, 28], [6.0, 30.5], [5, 33], 
		[5, 38], [5, 42], [6.0, 45.5], 
		[7, 49], [9.5, 51.5], [12, 54], 
		[14.5, 55.0], [17, 56], [20, 56], 
		[29, 56], [33.0, 48.5], [37, 41], 
		[37, 27], [37, 20], [36.0, 15.5], 
		[35, 11], [33.5, 7.5], [32, 4], 
		[30.0, 2.5], [28, 1], [25.0, 0.0], 
		[22, -1], [18.5, -1.0], [15, -1], 
		[11, -1], [10, 0], [10.0, 0.5], 
		[10, 1], [10, 1], [9.5, 4.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[9, 7], [9, 8], [9.5, 9.0], 
		[10, 10], [11, 10], [15, 10], 
		[18.0, 10.0], [21, 10], [23.0, 11.0], 
		[25, 12], [26.0, 13.5], [27, 15], 
		[27.5, 16.5], [28, 18], [28.5, 20.0], 
		[29, 22], [29, 24], [29, 25], 
		[29.0, 25.0], [29, 25], [28, 25], 
		[27, 25], [26.0, 24.5], [25, 24], 
		[23.5, 24.0], [22, 24], [21.0, 24.0], 
		[20, 24], [19, 24], [16, 24], 
		[13.5, 24.5], [11, 25], [9.0, 26.5], 
		[7, 28], [6.0, 30.5], [5, 33], 
		[5, 38], [5, 42], [6.0, 45.5], 
		[7, 49], [9.5, 51.5], [12, 54], 
		[14.5, 55.0], [17, 56], [20, 56], 
		[29, 56], [33.0, 48.5], [37, 41], 
		[37, 27], [37, 20], [36.0, 15.5], 
		[35, 11], [33.5, 7.5], [32, 4], 
		[30.0, 2.5], [28, 1], [25.0, 0.0], 
		[22, -1], [18.5, -1.0], [15, -1], 
		[11, -1], [10, 0], [10.0, 0.5], 
		[10, 1], [10, 1], [9.5, 4.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour10x39_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([11, 10], [15, 10], [18.0, 10.0],steps,height);
	BezConic([18.0, 10.0], [21, 10], [23.0, 11.0],steps,height);
	BezConic([23.0, 11.0], [25, 12], [26.0, 13.5],steps,height);
	BezConic([26.0, 13.5], [27, 15], [27.5, 16.5],steps,height);
	BezConic([27.5, 16.5], [28, 18], [28.5, 20.0],steps,height);
	BezConic([28.5, 20.0], [29, 22], [29, 24],steps,height);
	BezConic([29, 24], [29, 25], [29.0, 25.0],steps,height);
	BezConic([29.0, 25.0], [29, 25], [28, 25],steps,height);
	BezConic([28, 25], [27, 25], [26.0, 24.5],steps,height);
	BezConic([23.5, 24.0], [22, 24], [21.0, 24.0],steps,height);
	BezConic([21.0, 24.0], [20, 24], [19, 24],steps,height);
	BezConic([18.5, -1.0], [15, -1], [11, -1],steps,height);
	BezConic([10.0, 0.5], [10, 1], [10, 1],steps,height);
}
}

module OpenDyslexicRegular_contour10x39_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([9, 7], [9, 8], [9.5, 9.0],steps,height);
	BezConic([9.5, 9.0], [10, 10], [11, 10],steps,height);
	BezConic([26.0, 24.5], [25, 24], [23.5, 24.0],steps,height);
	BezConic([19, 24], [16, 24], [13.5, 24.5],steps,height);
	BezConic([13.5, 24.5], [11, 25], [9.0, 26.5],steps,height);
	BezConic([9.0, 26.5], [7, 28], [6.0, 30.5],steps,height);
	BezConic([6.0, 30.5], [5, 33], [5, 38],steps,height);
	BezConic([5, 38], [5, 42], [6.0, 45.5],steps,height);
	BezConic([6.0, 45.5], [7, 49], [9.5, 51.5],steps,height);
	BezConic([9.5, 51.5], [12, 54], [14.5, 55.0],steps,height);
	BezConic([14.5, 55.0], [17, 56], [20, 56],steps,height);
	BezConic([20, 56], [29, 56], [33.0, 48.5],steps,height);
	BezConic([33.0, 48.5], [37, 41], [37, 27],steps,height);
	BezConic([37, 27], [37, 20], [36.0, 15.5],steps,height);
	BezConic([36.0, 15.5], [35, 11], [33.5, 7.5],steps,height);
	BezConic([33.5, 7.5], [32, 4], [30.0, 2.5],steps,height);
	BezConic([30.0, 2.5], [28, 1], [25.0, 0.0],steps,height);
	BezConic([25.0, 0.0], [22, -1], [18.5, -1.0],steps,height);
	BezConic([11, -1], [10, 0], [10.0, 0.5],steps,height);
}
}

module OpenDyslexicRegular_contour10x39(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x39_skeleton(height);
			OpenDyslexicRegular_contour10x39_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x39_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x39(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x39(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x39(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x39(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x39=[[5, -1], [37, 56]];

module OpenDyslexicRegular_letter0x39(steps=2, height) {
	OpenDyslexicRegular_chunk00x39(steps, height);
	OpenDyslexicRegular_chunk10x39(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x3a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 8], [5, 10], [6, 10], 
		[9.0, 10.0], [12, 10], [14, 10], 
		[14, 8], [14.0, 5.0], [14, 2], 
		[14, 0], [12, 0], [9.0, 0.0], 
		[6, 0], [5, 0], [5, 2], 
		[5.0, 5.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 8], [5, 10], [6, 10], 
		[9.0, 10.0], [12, 10], [14, 10], 
		[14, 8], [14.0, 5.0], [14, 2], 
		[14, 0], [12, 0], [9.0, 0.0], 
		[6, 0], [5, 0], [5, 2], 
		[5.0, 5.0], ]);
}}}

module OpenDyslexicRegular_contour00x3a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x3a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 8], [5, 10], [6, 10],steps,height);
	BezConic([12, 10], [14, 10], [14, 8],steps,height);
	BezConic([14, 2], [14, 0], [12, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x3a(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x3a_skeleton(height);
			OpenDyslexicRegular_contour00x3a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x3a_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x3a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 34], [5, 36], [6, 36], 
		[9.0, 36.0], [12, 36], [14, 36], 
		[14, 34], [14.0, 31.0], [14, 28], 
		[14, 27], [12, 27], [9.0, 27.0], 
		[6, 27], [5, 27], [5, 28], 
		[5.0, 31.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 34], [5, 36], [6, 36], 
		[9.0, 36.0], [12, 36], [14, 36], 
		[14, 34], [14.0, 31.0], [14, 28], 
		[14, 27], [12, 27], [9.0, 27.0], 
		[6, 27], [5, 27], [5, 28], 
		[5.0, 31.0], ]);
}}}

module OpenDyslexicRegular_contour10x3a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x3a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 34], [5, 36], [6, 36],steps,height);
	BezConic([12, 36], [14, 36], [14, 34],steps,height);
	BezConic([14, 28], [14, 27], [12, 27],steps,height);
	BezConic([6, 27], [5, 27], [5, 28],steps,height);
}
}

module OpenDyslexicRegular_contour10x3a(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x3a_skeleton(height);
			OpenDyslexicRegular_contour10x3a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x3a_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x3a(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x3a(steps, height);
		
	}
}

module OpenDyslexicRegular_chunk20x3a(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x3a(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x3a=[[5, 0], [14, 36]];

module OpenDyslexicRegular_letter0x3a(steps=2, height) {
	OpenDyslexicRegular_chunk10x3a(steps, height);
	OpenDyslexicRegular_chunk20x3a(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x3b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 5], [7, 7], [9, 7], 
		[11.0, 7.0], [13, 7], [15, 7], 
		[15, 5], [15.0, 3.5], [15, 2], 
		[15, 1], [14, 0], [12.0, -5.0], 
		[10, -10], [9, -11], [8, -11], 
		[7.0, -11.0], [6, -11], [4, -11], 
		[5, -9], [6.0, -4.5], [7, 0], 
		[7, 0], [7.0, 0.5], [7, 1], 
		[7, 2],[7.0, 3.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 5], [7, 7], [9, 7], 
		[11.0, 7.0], [13, 7], [15, 7], 
		[15, 5], [15.0, 3.5], [15, 2], 
		[15, 1], [14, 0], [12.0, -5.0], 
		[10, -10], [9, -11], [8, -11], 
		[7.0, -11.0], [6, -11], [4, -11], 
		[5, -9], [6.0, -4.5], [7, 0], 
		[7, 0], [7.0, 0.5], [7, 1], 
		[7, 2],[7.0, 3.5], ]);
}}}

module OpenDyslexicRegular_contour00x3b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, 0], [7, 0], [7.0, 0.5],steps,height);
	BezConic([7.0, 0.5], [7, 1], [7, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x3b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, 5], [7, 7], [9, 7],steps,height);
	BezConic([13, 7], [15, 7], [15, 5],steps,height);
	BezConic([15, 2], [15, 1], [14, 0],steps,height);
	BezConic([10, -10], [9, -11], [8, -11],steps,height);
	BezConic([6, -11], [4, -11], [5, -9],steps,height);
}
}

module OpenDyslexicRegular_contour00x3b(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x3b_skeleton(height);
			OpenDyslexicRegular_contour00x3b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x3b_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x3b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 34], [7, 36], [9, 36], 
		[11.0, 36.0], [13, 36], [15, 36], 
		[15, 34], [15.0, 31.0], [15, 28], 
		[15, 26], [13, 26], [11.0, 26.0], 
		[9, 26], [7, 26], [7, 28], 
		[7.0, 31.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 34], [7, 36], [9, 36], 
		[11.0, 36.0], [13, 36], [15, 36], 
		[15, 34], [15.0, 31.0], [15, 28], 
		[15, 26], [13, 26], [11.0, 26.0], 
		[9, 26], [7, 26], [7, 28], 
		[7.0, 31.0], ]);
}}}

module OpenDyslexicRegular_contour10x3b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x3b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, 34], [7, 36], [9, 36],steps,height);
	BezConic([13, 36], [15, 36], [15, 34],steps,height);
	BezConic([15, 28], [15, 26], [13, 26],steps,height);
	BezConic([9, 26], [7, 26], [7, 28],steps,height);
}
}

module OpenDyslexicRegular_contour10x3b(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x3b_skeleton(height);
			OpenDyslexicRegular_contour10x3b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x3b_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x3b(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x3b(steps, height);
		
	}
}

module OpenDyslexicRegular_chunk20x3b(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x3b(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x3b=[[4, -11], [15, 36]];

module OpenDyslexicRegular_letter0x3b(steps=2, height) {
	OpenDyslexicRegular_chunk10x3b(steps, height);
	OpenDyslexicRegular_chunk20x3b(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x3c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[15, 24], [14, 24], [14.0, 23.0], 
		[14, 22], [15, 22], [28.0, 15.0], 
		[41, 8], [42, 8], [42, 6], 
		[42.0, 4.0], [42, 2], [41, 1], 
		[40.5, 1.0], [40, 1], [40, 1], 
		[23.0, 10.5], [6, 20], [5, 20], 
		[5.0, 20.5], [5, 21], [5.0, 21.5], 
		[5, 22], [5.0, 23.0], [5, 24], 
		[5, 24], [5, 24], [5.0, 24.5], 
		[5, 25], [5.5, 26.0], [6, 27], 
		[6.0, 27.5], [6, 28], [7, 28], 
		[25.5, 31.5], [44, 35], [45, 36], 
		[45.5, 35.5], [46, 35], [46, 34], 
		[46.0, 32.5], [46, 31], [46, 30], 
		[44, 30],[29.5, 27.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[15, 24], [14, 24], [14.0, 23.0], 
		[14, 22], [15, 22], [28.0, 15.0], 
		[41, 8], [42, 8], [42, 6], 
		[42.0, 4.0], [42, 2], [41, 1], 
		[40.5, 1.0], [40, 1], [40, 1], 
		[23.0, 10.5], [6, 20], [5, 20], 
		[5.0, 20.5], [5, 21], [5.0, 21.5], 
		[5, 22], [5.0, 23.0], [5, 24], 
		[5, 24], [5, 24], [5.0, 24.5], 
		[5, 25], [5.5, 26.0], [6, 27], 
		[6.0, 27.5], [6, 28], [7, 28], 
		[25.5, 31.5], [44, 35], [45, 36], 
		[45.5, 35.5], [46, 35], [46, 34], 
		[46.0, 32.5], [46, 31], [46, 30], 
		[44, 30],[29.5, 27.0], ]);
}}}

module OpenDyslexicRegular_contour00x3c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 24], [14, 24], [14.0, 23.0],steps,height);
	BezConic([14.0, 23.0], [14, 22], [15, 22],steps,height);
	BezConic([40.5, 1.0], [40, 1], [40, 1],steps,height);
	BezConic([5.0, 20.5], [5, 21], [5.0, 21.5],steps,height);
	BezConic([5.0, 21.5], [5, 22], [5.0, 23.0],steps,height);
	BezConic([5.0, 23.0], [5, 24], [5, 24],steps,height);
	BezConic([5, 24], [5, 24], [5.0, 24.5],steps,height);
	BezConic([5.5, 26.0], [6, 27], [6.0, 27.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x3c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([41, 8], [42, 8], [42, 6],steps,height);
	BezConic([42, 2], [41, 1], [40.5, 1.0],steps,height);
	BezConic([6, 20], [5, 20], [5.0, 20.5],steps,height);
	BezConic([5.0, 24.5], [5, 25], [5.5, 26.0],steps,height);
	BezConic([6.0, 27.5], [6, 28], [7, 28],steps,height);
	BezConic([44, 35], [45, 36], [45.5, 35.5],steps,height);
	BezConic([45.5, 35.5], [46, 35], [46, 34],steps,height);
	BezConic([46, 31], [46, 30], [44, 30],steps,height);
}
}

module OpenDyslexicRegular_contour00x3c(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x3c_skeleton(height);
			OpenDyslexicRegular_contour00x3c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x3c_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x3c(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x3c(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x3c=[[5, 1], [46, 36]];

module OpenDyslexicRegular_letter0x3c(steps=2, height) {
	OpenDyslexicRegular_chunk10x3c(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x3d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 16], [5, 17], [6, 17], 
		[25.0, 17.0], [44, 17], [45, 17], 
		[45, 16], [45.0, 14.0], [45, 12], 
		[45, 11], [44, 11], [25.0, 11.0], 
		[6, 11], [5, 11], [5, 12], 
		[5.0, 14.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 16], [5, 17], [6, 17], 
		[25.0, 17.0], [44, 17], [45, 17], 
		[45, 16], [45.0, 14.0], [45, 12], 
		[45, 11], [44, 11], [25.0, 11.0], 
		[6, 11], [5, 11], [5, 12], 
		[5.0, 14.0], ]);
}}}

module OpenDyslexicRegular_contour00x3d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x3d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 16], [5, 17], [6, 17],steps,height);
	BezConic([44, 17], [45, 17], [45, 16],steps,height);
	BezConic([45, 12], [45, 11], [44, 11],steps,height);
	BezConic([6, 11], [5, 11], [5, 12],steps,height);
}
}

module OpenDyslexicRegular_contour00x3d(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x3d_skeleton(height);
			OpenDyslexicRegular_contour00x3d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x3d_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x3d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 28], [5, 29], [6, 29], 
		[25.0, 29.0], [44, 29], [45, 29], 
		[45, 28], [45.0, 26.5], [45, 25], 
		[45, 24], [44, 24], [25.0, 24.0], 
		[6, 24], [5, 24], [5, 25], 
		[5.0, 26.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 28], [5, 29], [6, 29], 
		[25.0, 29.0], [44, 29], [45, 29], 
		[45, 28], [45.0, 26.5], [45, 25], 
		[45, 24], [44, 24], [25.0, 24.0], 
		[6, 24], [5, 24], [5, 25], 
		[5.0, 26.5], ]);
}}}

module OpenDyslexicRegular_contour10x3d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x3d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 28], [5, 29], [6, 29],steps,height);
	BezConic([44, 29], [45, 29], [45, 28],steps,height);
	BezConic([45, 25], [45, 24], [44, 24],steps,height);
	BezConic([6, 24], [5, 24], [5, 25],steps,height);
}
}

module OpenDyslexicRegular_contour10x3d(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x3d_skeleton(height);
			OpenDyslexicRegular_contour10x3d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x3d_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x3d(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x3d(steps, height);
		
	}
}

module OpenDyslexicRegular_chunk20x3d(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x3d(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x3d=[[5, 11], [45, 29]];

module OpenDyslexicRegular_letter0x3d(steps=2, height) {
	OpenDyslexicRegular_chunk10x3d(steps, height);
	OpenDyslexicRegular_chunk20x3d(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x3e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[8, 34], [7, 35], [7, 36], 
		[7.0, 37.0], [7, 38], [8, 39], 
		[8.5, 39.5], [9, 40], [9, 39], 
		[26.5, 31.0], [44, 23], [45, 23], 
		[45.0, 22.5], [45, 22], [45.0, 21.5], 
		[45, 21], [45.5, 20.5], [46, 20], 
		[46, 19], [46, 19], [45.5, 18.5], 
		[45, 18], [45.0, 17.5], [45, 17], 
		[44.5, 16.5], [44, 16], [44, 16], 
		[25.0, 10.5], [6, 5], [6, 5], 
		[5.5, 5.0], [5, 5], [5, 6], 
		[5.0, 8.0], [5, 10], [5, 12], 
		[6, 12], [20.5, 16.0], [35, 20], 
		[36, 20], [36.5, 20.5], [37, 21], 
		[35, 22],[21.5, 28.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[8, 34], [7, 35], [7, 36], 
		[7.0, 37.0], [7, 38], [8, 39], 
		[8.5, 39.5], [9, 40], [9, 39], 
		[26.5, 31.0], [44, 23], [45, 23], 
		[45.0, 22.5], [45, 22], [45.0, 21.5], 
		[45, 21], [45.5, 20.5], [46, 20], 
		[46, 19], [46, 19], [45.5, 18.5], 
		[45, 18], [45.0, 17.5], [45, 17], 
		[44.5, 16.5], [44, 16], [44, 16], 
		[25.0, 10.5], [6, 5], [6, 5], 
		[5.5, 5.0], [5, 5], [5, 6], 
		[5.0, 8.0], [5, 10], [5, 12], 
		[6, 12], [20.5, 16.0], [35, 20], 
		[36, 20], [36.5, 20.5], [37, 21], 
		[35, 22],[21.5, 28.0], ]);
}}}

module OpenDyslexicRegular_contour00x3e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, 38], [8, 39], [8.5, 39.5],steps,height);
	BezConic([45.0, 22.5], [45, 22], [45.0, 21.5],steps,height);
	BezConic([45.0, 21.5], [45, 21], [45.5, 20.5],steps,height);
	BezConic([45.5, 18.5], [45, 18], [45.0, 17.5],steps,height);
	BezConic([44.5, 16.5], [44, 16], [44, 16],steps,height);
	BezConic([6, 5], [6, 5], [5.5, 5.0],steps,height);
	BezConic([35, 20], [36, 20], [36.5, 20.5],steps,height);
	BezConic([36.5, 20.5], [37, 21], [35, 22],steps,height);
}
}

module OpenDyslexicRegular_contour00x3e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([8, 34], [7, 35], [7, 36],steps,height);
	BezConic([8.5, 39.5], [9, 40], [9, 39],steps,height);
	BezConic([44, 23], [45, 23], [45.0, 22.5],steps,height);
	BezConic([45.5, 20.5], [46, 20], [46, 19],steps,height);
	BezConic([46, 19], [46, 19], [45.5, 18.5],steps,height);
	BezConic([45.0, 17.5], [45, 17], [44.5, 16.5],steps,height);
	BezConic([5.5, 5.0], [5, 5], [5, 6],steps,height);
	BezConic([5, 10], [5, 12], [6, 12],steps,height);
}
}

module OpenDyslexicRegular_contour00x3e(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x3e_skeleton(height);
			OpenDyslexicRegular_contour00x3e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x3e_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x3e(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x3e(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x3e=[[5, 5], [46, 40]];

module OpenDyslexicRegular_letter0x3e(steps=2, height) {
	OpenDyslexicRegular_chunk10x3e(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x3f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[12, 8], [12, 10], [14, 10], 
		[17.0, 10.0], [20, 10], [22, 10], 
		[22, 8], [22.0, 5.0], [22, 2], 
		[22, 0], [20, 0], [17.0, 0.0], 
		[14, 0], [12, 0], [12, 2], 
		[12.0, 5.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[12, 8], [12, 10], [14, 10], 
		[17.0, 10.0], [20, 10], [22, 10], 
		[22, 8], [22.0, 5.0], [22, 2], 
		[22, 0], [20, 0], [17.0, 0.0], 
		[14, 0], [12, 0], [12, 2], 
		[12.0, 5.0], ]);
}}}

module OpenDyslexicRegular_contour00x3f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x3f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, 8], [12, 10], [14, 10],steps,height);
	BezConic([20, 10], [22, 10], [22, 8],steps,height);
	BezConic([22, 2], [22, 0], [20, 0],steps,height);
	BezConic([14, 0], [12, 0], [12, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x3f(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x3f_skeleton(height);
			OpenDyslexicRegular_contour00x3f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x3f_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x3f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[21, 20], [21, 18], [20, 18], 
		[17.0, 18.0], [14, 18], [12, 18], 
		[12, 20], [12.0, 21.5], [12, 23], 
		[12, 25], [12.0, 26.5], [12, 28], 
		[12.5, 29.5], [13, 31], [14.0, 32.5], 
		[15, 34], [17, 35], [19.0, 37.0], 
		[21, 39], [24, 41], [25.0, 43.0], 
		[26, 45], [26, 47], [25, 50], 
		[23.5, 52.0], [22, 54], [18, 54], 
		[15, 54], [12.5, 53.0], [10, 52], 
		[7, 50], [6, 50], [5.5, 50.0], 
		[5, 50], [5, 52], [5.0, 52.5], 
		[5, 53], [5, 55], [6, 56], 
		[12, 59], [19, 59], [22, 59], 
		[25.0, 58.0], [28, 57], [30.0, 55.5], 
		[32, 54], [33.0, 51.5], [34, 49], 
		[34, 46], [34, 43], [32.0, 40.5], 
		[30, 38], [27, 35], [26, 33], 
		[24.5, 31.5], [23, 30], [22.5, 28.5], 
		[22, 27], [21.5, 25.5], [21, 24], 
		[21, 22],[21.0, 21.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[21, 20], [21, 18], [20, 18], 
		[17.0, 18.0], [14, 18], [12, 18], 
		[12, 20], [12.0, 21.5], [12, 23], 
		[12, 25], [12.0, 26.5], [12, 28], 
		[12.5, 29.5], [13, 31], [14.0, 32.5], 
		[15, 34], [17, 35], [19.0, 37.0], 
		[21, 39], [24, 41], [25.0, 43.0], 
		[26, 45], [26, 47], [25, 50], 
		[23.5, 52.0], [22, 54], [18, 54], 
		[15, 54], [12.5, 53.0], [10, 52], 
		[7, 50], [6, 50], [5.5, 50.0], 
		[5, 50], [5, 52], [5.0, 52.5], 
		[5, 53], [5, 55], [6, 56], 
		[12, 59], [19, 59], [22, 59], 
		[25.0, 58.0], [28, 57], [30.0, 55.5], 
		[32, 54], [33.0, 51.5], [34, 49], 
		[34, 46], [34, 43], [32.0, 40.5], 
		[30, 38], [27, 35], [26, 33], 
		[24.5, 31.5], [23, 30], [22.5, 28.5], 
		[22, 27], [21.5, 25.5], [21, 24], 
		[21, 22],[21.0, 21.0], ]);
}}}

module OpenDyslexicRegular_contour10x3f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, 23], [12, 25], [12.0, 26.5],steps,height);
	BezConic([21, 39], [24, 41], [25.0, 43.0],steps,height);
	BezConic([25.0, 43.0], [26, 45], [26, 47],steps,height);
	BezConic([26, 47], [25, 50], [23.5, 52.0],steps,height);
	BezConic([23.5, 52.0], [22, 54], [18, 54],steps,height);
	BezConic([18, 54], [15, 54], [12.5, 53.0],steps,height);
	BezConic([12.5, 53.0], [10, 52], [7, 50],steps,height);
	BezConic([7, 50], [6, 50], [5.5, 50.0],steps,height);
	BezConic([24.5, 31.5], [23, 30], [22.5, 28.5],steps,height);
	BezConic([21.5, 25.5], [21, 24], [21, 22],steps,height);
}
}

module OpenDyslexicRegular_contour10x3f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21, 20], [21, 18], [20, 18],steps,height);
	BezConic([14, 18], [12, 18], [12, 20],steps,height);
	BezConic([12.0, 26.5], [12, 28], [12.5, 29.5],steps,height);
	BezConic([12.5, 29.5], [13, 31], [14.0, 32.5],steps,height);
	BezConic([14.0, 32.5], [15, 34], [17, 35],steps,height);
	BezConic([5.5, 50.0], [5, 50], [5, 52],steps,height);
	BezConic([5, 53], [5, 55], [6, 56],steps,height);
	BezConic([6, 56], [12, 59], [19, 59],steps,height);
	BezConic([19, 59], [22, 59], [25.0, 58.0],steps,height);
	BezConic([25.0, 58.0], [28, 57], [30.0, 55.5],steps,height);
	BezConic([30.0, 55.5], [32, 54], [33.0, 51.5],steps,height);
	BezConic([33.0, 51.5], [34, 49], [34, 46],steps,height);
	BezConic([34, 46], [34, 43], [32.0, 40.5],steps,height);
	BezConic([32.0, 40.5], [30, 38], [27, 35],steps,height);
	BezConic([27, 35], [26, 33], [24.5, 31.5],steps,height);
	BezConic([22.5, 28.5], [22, 27], [21.5, 25.5],steps,height);
}
}

module OpenDyslexicRegular_contour10x3f(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x3f_skeleton(height);
			OpenDyslexicRegular_contour10x3f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x3f_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x3f(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x3f(steps, height);
		
	}
}

module OpenDyslexicRegular_chunk20x3f(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x3f(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x3f=[[5, 0], [34, 59]];

module OpenDyslexicRegular_letter0x3f(steps=2, height) {
	OpenDyslexicRegular_chunk10x3f(steps, height);
	OpenDyslexicRegular_chunk20x3f(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x40_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[23, 19], [23, 17], [23.5, 15.5], 
		[24, 14], [25.0, 13.0], [26, 12], 
		[27.5, 11.5], [29, 11], [32, 11], 
		[35, 11], [36.5, 11.5], [38, 12], 
		[38.5, 13.0], [39, 14], [39.5, 15.5], 
		[40, 17], [40, 19], [40, 23], 
		[37.5, 25.5], [35, 28], [32, 28], 
		[28, 28], [25.5, 25.5], [23, 23], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[23, 19], [23, 17], [23.5, 15.5], 
		[24, 14], [25.0, 13.0], [26, 12], 
		[27.5, 11.5], [29, 11], [32, 11], 
		[35, 11], [36.5, 11.5], [38, 12], 
		[38.5, 13.0], [39, 14], [39.5, 15.5], 
		[40, 17], [40, 19], [40, 23], 
		[37.5, 25.5], [35, 28], [32, 28], 
		[28, 28], [25.5, 25.5], [23, 23], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x40_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([23, 19], [23, 17], [23.5, 15.5],steps,height);
	BezConic([23.5, 15.5], [24, 14], [25.0, 13.0],steps,height);
	BezConic([25.0, 13.0], [26, 12], [27.5, 11.5],steps,height);
	BezConic([27.5, 11.5], [29, 11], [32, 11],steps,height);
	BezConic([32, 11], [35, 11], [36.5, 11.5],steps,height);
	BezConic([36.5, 11.5], [38, 12], [38.5, 13.0],steps,height);
	BezConic([38.5, 13.0], [39, 14], [39.5, 15.5],steps,height);
	BezConic([39.5, 15.5], [40, 17], [40, 19],steps,height);
	BezConic([40, 19], [40, 23], [37.5, 25.5],steps,height);
	BezConic([37.5, 25.5], [35, 28], [32, 28],steps,height);
	BezConic([32, 28], [28, 28], [25.5, 25.5],steps,height);
	BezConic([25.5, 25.5], [23, 23], [23, 19],steps,height);
}
}

module OpenDyslexicRegular_contour00x40_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x40(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x40_skeleton(height);
			OpenDyslexicRegular_contour00x40_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x40_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x40_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[60, 21], [60, 17], [59.0, 14.0], 
		[58, 11], [56.5, 9.0], [55, 7], 
		[53.0, 6.0], [51, 5], [49.0, 4.0], 
		[47, 3], [45.0, 2.5], [43, 2], 
		[42, 2], [41, 2], [41.0, 2.5], 
		[41, 3], [41.0, 3.5], [41, 4], 
		[41.0, 4.5], [41, 5], [41.0, 5.5], 
		[41, 6], [40.5, 5.5], [40, 5], 
		[38, 5], [36, 4], [34.5, 3.5], 
		[33, 3], [31, 3], [28, 3], 
		[26.0, 4.0], [24, 5], [22.5, 7.0], 
		[21, 9], [20.0, 11.5], [19, 14], 
		[19, 17], [19, 20], [20.0, 22.5], 
		[21, 25], [22.5, 27.0], [24, 29], 
		[26.5, 30.0], [29, 31], [31, 31], 
		[37, 31], [40, 27], [41, 26], 
		[41, 28], [41.0, 28.5], [41, 29], 
		[41, 30], [42, 30], [43.5, 30.0], 
		[45, 30], [46, 30], [46, 29], 
		[46.0, 20.0], [46, 11], [46, 10], 
		[47, 10], [50, 10], [52.5, 12.5], 
		[55, 15], [55, 20], [55, 27], 
		[52, 32], [48, 36], [43.5, 38.5], 
		[39, 41], [33, 41], [26, 41], 
		[20, 37], [15, 33], [12.0, 28.0], 
		[9, 23], [9, 17], [9, 12], 
		[11.0, 8.5], [13, 5], [16.5, 2.0], 
		[20, -1], [24.0, -2.5], [28, -4], 
		[33, -4], [35, -4], [36.5, -4.0], 
		[38, -4], [39, -4], [39, -4], 
		[39.5, -4.0], [40, -4], [40, -4], 
		[41.5, -6.5], [43, -9], [43, -9], 
		[43.0, -9.5], [43, -10], [42, -10], 
		[41, -10], [38.5, -10.5], [36, -11], 
		[33, -11], [27, -11], [22.0, -9.0], 
		[17, -7], [13, -3], [9, 1], 
		[7.0, 6.0], [5, 11], [5, 17], 
		[5, 23], [7.0, 28.0], [9, 33], 
		[13, 37], [17, 41], [22.0, 43.0], 
		[27, 45], [33, 45], [40, 45], 
		[45.5, 42.5], [51, 40], [55, 35], 
		[58, 32], [59.0, 28.0], [60, 24], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[60, 21], [60, 17], [59.0, 14.0], 
		[58, 11], [56.5, 9.0], [55, 7], 
		[53.0, 6.0], [51, 5], [49.0, 4.0], 
		[47, 3], [45.0, 2.5], [43, 2], 
		[42, 2], [41, 2], [41.0, 2.5], 
		[41, 3], [41.0, 3.5], [41, 4], 
		[41.0, 4.5], [41, 5], [41.0, 5.5], 
		[41, 6], [40.5, 5.5], [40, 5], 
		[38, 5], [36, 4], [34.5, 3.5], 
		[33, 3], [31, 3], [28, 3], 
		[26.0, 4.0], [24, 5], [22.5, 7.0], 
		[21, 9], [20.0, 11.5], [19, 14], 
		[19, 17], [19, 20], [20.0, 22.5], 
		[21, 25], [22.5, 27.0], [24, 29], 
		[26.5, 30.0], [29, 31], [31, 31], 
		[37, 31], [40, 27], [41, 26], 
		[41, 28], [41.0, 28.5], [41, 29], 
		[41, 30], [42, 30], [43.5, 30.0], 
		[45, 30], [46, 30], [46, 29], 
		[46.0, 20.0], [46, 11], [46, 10], 
		[47, 10], [50, 10], [52.5, 12.5], 
		[55, 15], [55, 20], [55, 27], 
		[52, 32], [48, 36], [43.5, 38.5], 
		[39, 41], [33, 41], [26, 41], 
		[20, 37], [15, 33], [12.0, 28.0], 
		[9, 23], [9, 17], [9, 12], 
		[11.0, 8.5], [13, 5], [16.5, 2.0], 
		[20, -1], [24.0, -2.5], [28, -4], 
		[33, -4], [35, -4], [36.5, -4.0], 
		[38, -4], [39, -4], [39, -4], 
		[39.5, -4.0], [40, -4], [40, -4], 
		[41.5, -6.5], [43, -9], [43, -9], 
		[43.0, -9.5], [43, -10], [42, -10], 
		[41, -10], [38.5, -10.5], [36, -11], 
		[33, -11], [27, -11], [22.0, -9.0], 
		[17, -7], [13, -3], [9, 1], 
		[7.0, 6.0], [5, 11], [5, 17], 
		[5, 23], [7.0, 28.0], [9, 33], 
		[13, 37], [17, 41], [22.0, 43.0], 
		[27, 45], [33, 45], [40, 45], 
		[45.5, 42.5], [51, 40], [55, 35], 
		[58, 32], [59.0, 28.0], [60, 24], 
		 ]);
}}}

module OpenDyslexicRegular_contour10x40_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([53.0, 6.0], [51, 5], [49.0, 4.0],steps,height);
	BezConic([41.0, 2.5], [41, 3], [41.0, 3.5],steps,height);
	BezConic([41.0, 3.5], [41, 4], [41.0, 4.5],steps,height);
	BezConic([41.0, 4.5], [41, 5], [41.0, 5.5],steps,height);
	BezConic([41.0, 5.5], [41, 6], [40.5, 5.5],steps,height);
	BezConic([40, 27], [41, 26], [41, 28],steps,height);
	BezConic([46, 11], [46, 10], [47, 10],steps,height);
	BezConic([47, 10], [50, 10], [52.5, 12.5],steps,height);
	BezConic([52.5, 12.5], [55, 15], [55, 20],steps,height);
	BezConic([55, 20], [55, 27], [52, 32],steps,height);
	BezConic([52, 32], [48, 36], [43.5, 38.5],steps,height);
	BezConic([43.5, 38.5], [39, 41], [33, 41],steps,height);
	BezConic([33, 41], [26, 41], [20, 37],steps,height);
	BezConic([20, 37], [15, 33], [12.0, 28.0],steps,height);
	BezConic([12.0, 28.0], [9, 23], [9, 17],steps,height);
	BezConic([9, 17], [9, 12], [11.0, 8.5],steps,height);
	BezConic([11.0, 8.5], [13, 5], [16.5, 2.0],steps,height);
	BezConic([16.5, 2.0], [20, -1], [24.0, -2.5],steps,height);
	BezConic([24.0, -2.5], [28, -4], [33, -4],steps,height);
	BezConic([33, -4], [35, -4], [36.5, -4.0],steps,height);
	BezConic([36.5, -4.0], [38, -4], [39, -4],steps,height);
	BezConic([39, -4], [39, -4], [39.5, -4.0],steps,height);
	BezConic([39.5, -4.0], [40, -4], [40, -4],steps,height);
	BezConic([42, -10], [41, -10], [38.5, -10.5],steps,height);
}
}

module OpenDyslexicRegular_contour10x40_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([60, 21], [60, 17], [59.0, 14.0],steps,height);
	BezConic([59.0, 14.0], [58, 11], [56.5, 9.0],steps,height);
	BezConic([56.5, 9.0], [55, 7], [53.0, 6.0],steps,height);
	BezConic([49.0, 4.0], [47, 3], [45.0, 2.5],steps,height);
	BezConic([45.0, 2.5], [43, 2], [42, 2],steps,height);
	BezConic([42, 2], [41, 2], [41.0, 2.5],steps,height);
	BezConic([40.5, 5.5], [40, 5], [38, 5],steps,height);
	BezConic([38, 5], [36, 4], [34.5, 3.5],steps,height);
	BezConic([34.5, 3.5], [33, 3], [31, 3],steps,height);
	BezConic([31, 3], [28, 3], [26.0, 4.0],steps,height);
	BezConic([26.0, 4.0], [24, 5], [22.5, 7.0],steps,height);
	BezConic([22.5, 7.0], [21, 9], [20.0, 11.5],steps,height);
	BezConic([20.0, 11.5], [19, 14], [19, 17],steps,height);
	BezConic([19, 17], [19, 20], [20.0, 22.5],steps,height);
	BezConic([20.0, 22.5], [21, 25], [22.5, 27.0],steps,height);
	BezConic([22.5, 27.0], [24, 29], [26.5, 30.0],steps,height);
	BezConic([26.5, 30.0], [29, 31], [31, 31],steps,height);
	BezConic([31, 31], [37, 31], [40, 27],steps,height);
	BezConic([41, 29], [41, 30], [42, 30],steps,height);
	BezConic([45, 30], [46, 30], [46, 29],steps,height);
	BezConic([43, -9], [43, -9], [43.0, -9.5],steps,height);
	BezConic([43.0, -9.5], [43, -10], [42, -10],steps,height);
	BezConic([38.5, -10.5], [36, -11], [33, -11],steps,height);
	BezConic([33, -11], [27, -11], [22.0, -9.0],steps,height);
	BezConic([22.0, -9.0], [17, -7], [13, -3],steps,height);
	BezConic([13, -3], [9, 1], [7.0, 6.0],steps,height);
	BezConic([7.0, 6.0], [5, 11], [5, 17],steps,height);
	BezConic([5, 17], [5, 23], [7.0, 28.0],steps,height);
	BezConic([7.0, 28.0], [9, 33], [13, 37],steps,height);
	BezConic([13, 37], [17, 41], [22.0, 43.0],steps,height);
	BezConic([22.0, 43.0], [27, 45], [33, 45],steps,height);
	BezConic([33, 45], [40, 45], [45.5, 42.5],steps,height);
	BezConic([45.5, 42.5], [51, 40], [55, 35],steps,height);
	BezConic([55, 35], [58, 32], [59.0, 28.0],steps,height);
	BezConic([59.0, 28.0], [60, 24], [60, 21],steps,height);
}
}

module OpenDyslexicRegular_contour10x40(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x40_skeleton(height);
			OpenDyslexicRegular_contour10x40_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x40_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x40(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x40(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x40(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x40(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x40=[[5, -11], [60, 45]];

module OpenDyslexicRegular_letter0x40(steps=2, height) {
	OpenDyslexicRegular_chunk00x40(steps, height);
	OpenDyslexicRegular_chunk10x40(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x41_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[30, 42], [30, 43], [29, 43], 
		[29, 43], [29, 42], [25.0, 31.0], 
		[21, 20], [21, 19], [21, 19], 
		[21, 18], [23, 18], [29.5, 18.0], 
		[36, 18], [37, 18], [37, 19], 
		[37, 19], [37, 20], [33.5, 31.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[30, 42], [30, 43], [29, 43], 
		[29, 43], [29, 42], [25.0, 31.0], 
		[21, 20], [21, 19], [21, 19], 
		[21, 18], [23, 18], [29.5, 18.0], 
		[36, 18], [37, 18], [37, 19], 
		[37, 19], [37, 20], [33.5, 31.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x41_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([30, 42], [30, 43], [29, 43],steps,height);
	BezConic([21, 20], [21, 19], [21, 19],steps,height);
	BezConic([21, 19], [21, 18], [23, 18],steps,height);
	BezConic([36, 18], [37, 18], [37, 19],steps,height);
	BezConic([37, 19], [37, 19], [37, 20],steps,height);
}
}

module OpenDyslexicRegular_contour00x41_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29, 43], [29, 43], [29, 42],steps,height);
}
}

module OpenDyslexicRegular_contour00x41(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x41_skeleton(height);
			OpenDyslexicRegular_contour00x41_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x41_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x41_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[25, 54], [26, 55], [27, 55], 
		[29.0, 55.0], [31, 55], [33, 55], 
		[33, 54], [43.5, 28.0], [54, 2], 
		[54, 2], [54, 1], [54, 0], 
		[52, 0], [48.5, 0.0], [45, 0], 
		[43, 0], [43, 2], [42.0, 5.0], 
		[41, 8], [41, 9], [39, 9], 
		[29.0, 9.0], [19, 9], [17, 9], 
		[17, 8], [16.5, 5.0], [16, 2], 
		[16, 0], [14, 0], [10.0, 0.0], 
		[6, 0], [5, 0], [5, 1], 
		[5, 2], [5, 2], [15.0, 28.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[25, 54], [26, 55], [27, 55], 
		[29.0, 55.0], [31, 55], [33, 55], 
		[33, 54], [43.5, 28.0], [54, 2], 
		[54, 2], [54, 1], [54, 0], 
		[52, 0], [48.5, 0.0], [45, 0], 
		[43, 0], [43, 2], [42.0, 5.0], 
		[41, 8], [41, 9], [39, 9], 
		[29.0, 9.0], [19, 9], [17, 9], 
		[17, 8], [16.5, 5.0], [16, 2], 
		[16, 0], [14, 0], [10.0, 0.0], 
		[6, 0], [5, 0], [5, 1], 
		[5, 2], [5, 2], [15.0, 28.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour10x41_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([41, 8], [41, 9], [39, 9],steps,height);
	BezConic([19, 9], [17, 9], [17, 8],steps,height);
	BezConic([5, 1], [5, 2], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour10x41_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 54], [26, 55], [27, 55],steps,height);
	BezConic([31, 55], [33, 55], [33, 54],steps,height);
	BezConic([54, 2], [54, 2], [54, 1],steps,height);
	BezConic([54, 1], [54, 0], [52, 0],steps,height);
	BezConic([45, 0], [43, 0], [43, 2],steps,height);
	BezConic([16, 2], [16, 0], [14, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 1],steps,height);
}
}

module OpenDyslexicRegular_contour10x41(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x41_skeleton(height);
			OpenDyslexicRegular_contour10x41_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x41_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x41(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x41(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x41(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x41(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x41=[[5, 0], [54, 55]];

module OpenDyslexicRegular_letter0x41(steps=2, height) {
	OpenDyslexicRegular_chunk00x41(steps, height);
	OpenDyslexicRegular_chunk10x41(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x42_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[14, 26], [12, 26], [12, 24], 
		[12.0, 17.5], [12, 11], [12, 9], 
		[14, 9], [19.0, 9.0], [24, 9], 
		[28, 9], [31.0, 10.5], [34, 12], 
		[35.0, 14.5], [36, 17], [35.5, 19.5], 
		[35, 22], [33, 24], [30, 26], 
		[24, 26],[19.0, 26.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[14, 26], [12, 26], [12, 24], 
		[12.0, 17.5], [12, 11], [12, 9], 
		[14, 9], [19.0, 9.0], [24, 9], 
		[28, 9], [31.0, 10.5], [34, 12], 
		[35.0, 14.5], [36, 17], [35.5, 19.5], 
		[35, 22], [33, 24], [30, 26], 
		[24, 26],[19.0, 26.0], ]);
}}}

module OpenDyslexicRegular_contour00x42_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([14, 26], [12, 26], [12, 24],steps,height);
	BezConic([12, 11], [12, 9], [14, 9],steps,height);
	BezConic([24, 9], [28, 9], [31.0, 10.5],steps,height);
	BezConic([31.0, 10.5], [34, 12], [35.0, 14.5],steps,height);
	BezConic([35.0, 14.5], [36, 17], [35.5, 19.5],steps,height);
	BezConic([35.5, 19.5], [35, 22], [33, 24],steps,height);
	BezConic([33, 24], [30, 26], [24, 26],steps,height);
}
}

module OpenDyslexicRegular_contour00x42_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x42(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x42_skeleton(height);
			OpenDyslexicRegular_contour00x42_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x42_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x42_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[14, 50], [12, 50], [12, 48], 
		[12.0, 41.0], [12, 34], [12, 32], 
		[14, 32], [18.0, 32.0], [22, 32], 
		[33, 32], [33, 41], [33, 45], 
		[30.5, 47.5], [28, 50], [22, 50], 
		[18.0, 50.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[14, 50], [12, 50], [12, 48], 
		[12.0, 41.0], [12, 34], [12, 32], 
		[14, 32], [18.0, 32.0], [22, 32], 
		[33, 32], [33, 41], [33, 45], 
		[30.5, 47.5], [28, 50], [22, 50], 
		[18.0, 50.0], ]);
}}}

module OpenDyslexicRegular_contour10x42_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([14, 50], [12, 50], [12, 48],steps,height);
	BezConic([12, 34], [12, 32], [14, 32],steps,height);
	BezConic([22, 32], [33, 32], [33, 41],steps,height);
	BezConic([33, 41], [33, 45], [30.5, 47.5],steps,height);
	BezConic([30.5, 47.5], [28, 50], [22, 50],steps,height);
}
}

module OpenDyslexicRegular_contour10x42_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x42(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x42_skeleton(height);
			OpenDyslexicRegular_contour10x42_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x42_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour20x42_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 53], [5, 55], [6, 55], 
		[13.5, 55.0], [21, 55], [30, 55], 
		[34.5, 51.5], [39, 48], [39, 41], 
		[39, 32], [33, 30], [31, 30], 
		[33, 29], [36, 29], [38.5, 27.5], 
		[41, 26], [42.0, 24.5], [43, 23], 
		[43.5, 20.5], [44, 18], [44, 15], 
		[44, 12], [43.0, 9.0], [42, 6], 
		[39.0, 4.0], [36, 2], [32.5, 1.0], 
		[29, 0], [24, 0], [15.0, 0.0], 
		[6, 0], [5, 0], [5, 2], 
		[5.0, 27.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 53], [5, 55], [6, 55], 
		[13.5, 55.0], [21, 55], [30, 55], 
		[34.5, 51.5], [39, 48], [39, 41], 
		[39, 32], [33, 30], [31, 30], 
		[33, 29], [36, 29], [38.5, 27.5], 
		[41, 26], [42.0, 24.5], [43, 23], 
		[43.5, 20.5], [44, 18], [44, 15], 
		[44, 12], [43.0, 9.0], [42, 6], 
		[39.0, 4.0], [36, 2], [32.5, 1.0], 
		[29, 0], [24, 0], [15.0, 0.0], 
		[6, 0], [5, 0], [5, 2], 
		[5.0, 27.5], ]);
}}}

module OpenDyslexicRegular_contour20x42_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([33, 30], [31, 30], [33, 29],steps,height);
}
}

module OpenDyslexicRegular_contour20x42_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 53], [5, 55], [6, 55],steps,height);
	BezConic([21, 55], [30, 55], [34.5, 51.5],steps,height);
	BezConic([34.5, 51.5], [39, 48], [39, 41],steps,height);
	BezConic([39, 41], [39, 32], [33, 30],steps,height);
	BezConic([33, 29], [36, 29], [38.5, 27.5],steps,height);
	BezConic([38.5, 27.5], [41, 26], [42.0, 24.5],steps,height);
	BezConic([42.0, 24.5], [43, 23], [43.5, 20.5],steps,height);
	BezConic([43.5, 20.5], [44, 18], [44, 15],steps,height);
	BezConic([44, 15], [44, 12], [43.0, 9.0],steps,height);
	BezConic([43.0, 9.0], [42, 6], [39.0, 4.0],steps,height);
	BezConic([39.0, 4.0], [36, 2], [32.5, 1.0],steps,height);
	BezConic([32.5, 1.0], [29, 0], [24, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour20x42(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour20x42_skeleton(height);
			OpenDyslexicRegular_contour20x42_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour20x42_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x42(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x42(steps, height);
	translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x42(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x42(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour20x42(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x42=[[5, 0], [44, 55]];

module OpenDyslexicRegular_letter0x42(steps=2, height) {
	OpenDyslexicRegular_chunk00x42(steps, height);
	OpenDyslexicRegular_chunk10x42(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x43_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[48, 48], [47, 46], [46.5, 46.0], 
		[46, 46], [45, 47], [42, 49], 
		[38.5, 49.5], [35, 50], [30, 50], 
		[21, 50], [16.5, 44.5], [12, 39], 
		[13, 28], [13, 23], [13.5, 20.0], 
		[14, 17], [16.0, 15.5], [18, 14], 
		[21.5, 13.5], [25, 13], [30, 13], 
		[33, 13], [35.0, 13.5], [37, 14], 
		[39.0, 14.5], [41, 15], [43.0, 15.5], 
		[45, 16], [46, 17], [47, 18], 
		[48.0, 17.5], [49, 17], [48, 16], 
		[48.0, 11.0], [48, 6], [48, 5], 
		[47.5, 4.5], [47, 4], [46, 4], 
		[45, 2], [43.0, 1.5], [41, 1], 
		[39.0, 0.5], [37, 0], [35.0, -0.5], 
		[33, -1], [30, -1], [24, -1], 
		[19.0, 1.0], [14, 3], [11.0, 6.5], 
		[8, 10], [6.5, 15.5], [5, 21], 
		[5, 28], [5, 34], [6.5, 39.5], 
		[8, 45], [11.5, 48.5], [15, 52], 
		[19.5, 54.0], [24, 56], [30, 56], 
		[35, 56], [39.0, 55.5], [43, 55], 
		[47, 53], [49, 53], [48, 51], 
		[48.0, 49.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[48, 48], [47, 46], [46.5, 46.0], 
		[46, 46], [45, 47], [42, 49], 
		[38.5, 49.5], [35, 50], [30, 50], 
		[21, 50], [16.5, 44.5], [12, 39], 
		[13, 28], [13, 23], [13.5, 20.0], 
		[14, 17], [16.0, 15.5], [18, 14], 
		[21.5, 13.5], [25, 13], [30, 13], 
		[33, 13], [35.0, 13.5], [37, 14], 
		[39.0, 14.5], [41, 15], [43.0, 15.5], 
		[45, 16], [46, 17], [47, 18], 
		[48.0, 17.5], [49, 17], [48, 16], 
		[48.0, 11.0], [48, 6], [48, 5], 
		[47.5, 4.5], [47, 4], [46, 4], 
		[45, 2], [43.0, 1.5], [41, 1], 
		[39.0, 0.5], [37, 0], [35.0, -0.5], 
		[33, -1], [30, -1], [24, -1], 
		[19.0, 1.0], [14, 3], [11.0, 6.5], 
		[8, 10], [6.5, 15.5], [5, 21], 
		[5, 28], [5, 34], [6.5, 39.5], 
		[8, 45], [11.5, 48.5], [15, 52], 
		[19.5, 54.0], [24, 56], [30, 56], 
		[35, 56], [39.0, 55.5], [43, 55], 
		[47, 53], [49, 53], [48, 51], 
		[48.0, 49.5], ]);
}}}

module OpenDyslexicRegular_contour00x43_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([45, 47], [42, 49], [38.5, 49.5],steps,height);
	BezConic([38.5, 49.5], [35, 50], [30, 50],steps,height);
	BezConic([30, 50], [21, 50], [16.5, 44.5],steps,height);
	BezConic([16.5, 44.5], [12, 39], [13, 28],steps,height);
	BezConic([13, 28], [13, 23], [13.5, 20.0],steps,height);
	BezConic([13.5, 20.0], [14, 17], [16.0, 15.5],steps,height);
	BezConic([16.0, 15.5], [18, 14], [21.5, 13.5],steps,height);
	BezConic([21.5, 13.5], [25, 13], [30, 13],steps,height);
	BezConic([30, 13], [33, 13], [35.0, 13.5],steps,height);
	BezConic([35.0, 13.5], [37, 14], [39.0, 14.5],steps,height);
	BezConic([39.0, 14.5], [41, 15], [43.0, 15.5],steps,height);
	BezConic([43.0, 15.5], [45, 16], [46, 17],steps,height);
	BezConic([43.0, 1.5], [41, 1], [39.0, 0.5],steps,height);
	BezConic([39.0, 0.5], [37, 0], [35.0, -0.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x43_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([48, 48], [47, 46], [46.5, 46.0],steps,height);
	BezConic([46.5, 46.0], [46, 46], [45, 47],steps,height);
	BezConic([46, 17], [47, 18], [48.0, 17.5],steps,height);
	BezConic([48.0, 17.5], [49, 17], [48, 16],steps,height);
	BezConic([48, 6], [48, 5], [47.5, 4.5],steps,height);
	BezConic([47.5, 4.5], [47, 4], [46, 4],steps,height);
	BezConic([46, 4], [45, 2], [43.0, 1.5],steps,height);
	BezConic([35.0, -0.5], [33, -1], [30, -1],steps,height);
	BezConic([30, -1], [24, -1], [19.0, 1.0],steps,height);
	BezConic([19.0, 1.0], [14, 3], [11.0, 6.5],steps,height);
	BezConic([11.0, 6.5], [8, 10], [6.5, 15.5],steps,height);
	BezConic([6.5, 15.5], [5, 21], [5, 28],steps,height);
	BezConic([5, 28], [5, 34], [6.5, 39.5],steps,height);
	BezConic([6.5, 39.5], [8, 45], [11.5, 48.5],steps,height);
	BezConic([11.5, 48.5], [15, 52], [19.5, 54.0],steps,height);
	BezConic([19.5, 54.0], [24, 56], [30, 56],steps,height);
	BezConic([30, 56], [35, 56], [39.0, 55.5],steps,height);
	BezConic([39.0, 55.5], [43, 55], [47, 53],steps,height);
	BezConic([47, 53], [49, 53], [48, 51],steps,height);
}
}

module OpenDyslexicRegular_contour00x43(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x43_skeleton(height);
			OpenDyslexicRegular_contour00x43_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x43_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x43(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x43(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x43=[[5, -1], [49, 56]];

module OpenDyslexicRegular_letter0x43(steps=2, height) {
	OpenDyslexicRegular_chunk10x43(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x44_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[14, 49], [13, 49], [13, 47], 
		[13.0, 31.0], [13, 15], [13, 13], 
		[14, 13], [18.0, 13.0], [22, 13], 
		[26, 13], [29.5, 13.5], [33, 14], 
		[36.0, 15.5], [39, 17], [41.0, 20.0], 
		[43, 23], [43, 28], [43, 32], 
		[42.0, 36.0], [41, 40], [38.0, 43.0], 
		[35, 46], [31.0, 47.5], [27, 49], 
		[22, 49],[18.0, 49.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[14, 49], [13, 49], [13, 47], 
		[13.0, 31.0], [13, 15], [13, 13], 
		[14, 13], [18.0, 13.0], [22, 13], 
		[26, 13], [29.5, 13.5], [33, 14], 
		[36.0, 15.5], [39, 17], [41.0, 20.0], 
		[43, 23], [43, 28], [43, 32], 
		[42.0, 36.0], [41, 40], [38.0, 43.0], 
		[35, 46], [31.0, 47.5], [27, 49], 
		[22, 49],[18.0, 49.0], ]);
}}}

module OpenDyslexicRegular_contour00x44_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([14, 49], [13, 49], [13, 47],steps,height);
	BezConic([13, 15], [13, 13], [14, 13],steps,height);
	BezConic([22, 13], [26, 13], [29.5, 13.5],steps,height);
	BezConic([29.5, 13.5], [33, 14], [36.0, 15.5],steps,height);
	BezConic([36.0, 15.5], [39, 17], [41.0, 20.0],steps,height);
	BezConic([41.0, 20.0], [43, 23], [43, 28],steps,height);
	BezConic([43, 28], [43, 32], [42.0, 36.0],steps,height);
	BezConic([42.0, 36.0], [41, 40], [38.0, 43.0],steps,height);
	BezConic([38.0, 43.0], [35, 46], [31.0, 47.5],steps,height);
	BezConic([31.0, 47.5], [27, 49], [22, 49],steps,height);
}
}

module OpenDyslexicRegular_contour00x44_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x44(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x44_skeleton(height);
			OpenDyslexicRegular_contour00x44_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x44_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x44_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 53], [5, 55], [6, 55], 
		[13.0, 55.0], [20, 55], [27, 55], 
		[32.5, 53.5], [38, 52], [42.0, 48.5], 
		[46, 45], [48.5, 40.0], [51, 35], 
		[51, 28], [51, 20], [48.5, 15.0], 
		[46, 10], [42.0, 6.5], [38, 3], 
		[32.0, 1.5], [26, 0], [20, 0], 
		[13.0, 0.0], [6, 0], [5, 0], 
		[5, 2],[5.0, 27.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 53], [5, 55], [6, 55], 
		[13.0, 55.0], [20, 55], [27, 55], 
		[32.5, 53.5], [38, 52], [42.0, 48.5], 
		[46, 45], [48.5, 40.0], [51, 35], 
		[51, 28], [51, 20], [48.5, 15.0], 
		[46, 10], [42.0, 6.5], [38, 3], 
		[32.0, 1.5], [26, 0], [20, 0], 
		[13.0, 0.0], [6, 0], [5, 0], 
		[5, 2],[5.0, 27.5], ]);
}}}

module OpenDyslexicRegular_contour10x44_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x44_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 53], [5, 55], [6, 55],steps,height);
	BezConic([20, 55], [27, 55], [32.5, 53.5],steps,height);
	BezConic([32.5, 53.5], [38, 52], [42.0, 48.5],steps,height);
	BezConic([42.0, 48.5], [46, 45], [48.5, 40.0],steps,height);
	BezConic([48.5, 40.0], [51, 35], [51, 28],steps,height);
	BezConic([51, 28], [51, 20], [48.5, 15.0],steps,height);
	BezConic([48.5, 15.0], [46, 10], [42.0, 6.5],steps,height);
	BezConic([42.0, 6.5], [38, 3], [32.0, 1.5],steps,height);
	BezConic([32.0, 1.5], [26, 0], [20, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour10x44(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x44_skeleton(height);
			OpenDyslexicRegular_contour10x44_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x44_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x44(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x44(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x44(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x44(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x44=[[5, 0], [51, 55]];

module OpenDyslexicRegular_letter0x44(steps=2, height) {
	OpenDyslexicRegular_chunk00x44(steps, height);
	OpenDyslexicRegular_chunk10x44(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x45_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 53], [5, 55], [7, 55], 
		[22.5, 55.0], [38, 55], [39, 55], 
		[39, 53], [39.0, 52.5], [39, 52], 
		[39, 50], [38, 50], [26.0, 50.0], 
		[14, 50], [12, 50], [12, 48], 
		[12.0, 41.0], [12, 34], [12, 32], 
		[14, 32], [25.5, 32.0], [37, 32], 
		[38, 32], [38, 31], [38.0, 29.5], 
		[38, 28], [38, 26], [37, 26], 
		[25.5, 26.0], [14, 26], [12, 26], 
		[12, 24], [12.0, 19.5], [12, 15], 
		[12, 13], [14, 13], [26.0, 13.0], 
		[38, 13], [40, 13], [40, 11], 
		[40.0, 6.5], [40, 2], [40, 0], 
		[38, 0], [22.5, 0.0], [7, 0], 
		[5, 0], [5, 2], [5.0, 27.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 53], [5, 55], [7, 55], 
		[22.5, 55.0], [38, 55], [39, 55], 
		[39, 53], [39.0, 52.5], [39, 52], 
		[39, 50], [38, 50], [26.0, 50.0], 
		[14, 50], [12, 50], [12, 48], 
		[12.0, 41.0], [12, 34], [12, 32], 
		[14, 32], [25.5, 32.0], [37, 32], 
		[38, 32], [38, 31], [38.0, 29.5], 
		[38, 28], [38, 26], [37, 26], 
		[25.5, 26.0], [14, 26], [12, 26], 
		[12, 24], [12.0, 19.5], [12, 15], 
		[12, 13], [14, 13], [26.0, 13.0], 
		[38, 13], [40, 13], [40, 11], 
		[40.0, 6.5], [40, 2], [40, 0], 
		[38, 0], [22.5, 0.0], [7, 0], 
		[5, 0], [5, 2], [5.0, 27.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x45_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([14, 50], [12, 50], [12, 48],steps,height);
	BezConic([12, 34], [12, 32], [14, 32],steps,height);
	BezConic([14, 26], [12, 26], [12, 24],steps,height);
	BezConic([12, 15], [12, 13], [14, 13],steps,height);
}
}

module OpenDyslexicRegular_contour00x45_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 53], [5, 55], [7, 55],steps,height);
	BezConic([38, 55], [39, 55], [39, 53],steps,height);
	BezConic([39, 52], [39, 50], [38, 50],steps,height);
	BezConic([37, 32], [38, 32], [38, 31],steps,height);
	BezConic([38, 28], [38, 26], [37, 26],steps,height);
	BezConic([38, 13], [40, 13], [40, 11],steps,height);
	BezConic([40, 2], [40, 0], [38, 0],steps,height);
	BezConic([7, 0], [5, 0], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x45(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x45_skeleton(height);
			OpenDyslexicRegular_contour00x45_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x45_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x45(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x45(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x45=[[5, 0], [40, 55]];

module OpenDyslexicRegular_letter0x45(steps=2, height) {
	OpenDyslexicRegular_chunk10x45(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x46_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 53], [6, 55], [8, 55], 
		[21.5, 55.0], [35, 55], [37, 55], 
		[37, 53], [37.0, 52.0], [37, 51], 
		[37, 49], [35, 49], [25.0, 49.0], 
		[15, 49], [13, 49], [13, 47], 
		[13.0, 40.5], [13, 34], [13, 33], 
		[15, 33], [24.0, 33.0], [33, 33], 
		[34, 33], [34, 31], [34.0, 29.0], 
		[34, 27], [34, 25], [33, 25], 
		[24.0, 25.0], [15, 25], [13, 25], 
		[13, 23], [14.0, 12.5], [15, 2], 
		[15, 0], [13, 0], [10.0, 0.0], 
		[7, 0], [6, 0], [5.5, 0.5], 
		[5, 1], [5, 2], [5.5, 27.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 53], [6, 55], [8, 55], 
		[21.5, 55.0], [35, 55], [37, 55], 
		[37, 53], [37.0, 52.0], [37, 51], 
		[37, 49], [35, 49], [25.0, 49.0], 
		[15, 49], [13, 49], [13, 47], 
		[13.0, 40.5], [13, 34], [13, 33], 
		[15, 33], [24.0, 33.0], [33, 33], 
		[34, 33], [34, 31], [34.0, 29.0], 
		[34, 27], [34, 25], [33, 25], 
		[24.0, 25.0], [15, 25], [13, 25], 
		[13, 23], [14.0, 12.5], [15, 2], 
		[15, 0], [13, 0], [10.0, 0.0], 
		[7, 0], [6, 0], [5.5, 0.5], 
		[5, 1], [5, 2], [5.5, 27.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x46_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 49], [13, 49], [13, 47],steps,height);
	BezConic([13, 34], [13, 33], [15, 33],steps,height);
	BezConic([15, 25], [13, 25], [13, 23],steps,height);
}
}

module OpenDyslexicRegular_contour00x46_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 53], [6, 55], [8, 55],steps,height);
	BezConic([35, 55], [37, 55], [37, 53],steps,height);
	BezConic([37, 51], [37, 49], [35, 49],steps,height);
	BezConic([33, 33], [34, 33], [34, 31],steps,height);
	BezConic([34, 27], [34, 25], [33, 25],steps,height);
	BezConic([15, 2], [15, 0], [13, 0],steps,height);
	BezConic([7, 0], [6, 0], [5.5, 0.5],steps,height);
	BezConic([5.5, 0.5], [5, 1], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x46(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x46_skeleton(height);
			OpenDyslexicRegular_contour00x46_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x46_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x46(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x46(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x46=[[5, 0], [37, 55]];

module OpenDyslexicRegular_letter0x46(steps=2, height) {
	OpenDyslexicRegular_chunk10x46(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x47_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[44, 20], [44, 21], [43, 21], 
		[38.5, 21.0], [34, 21], [32, 21], 
		[32, 22], [32.0, 24.5], [32, 27], 
		[32, 28], [34, 28], [43.0, 28.0], 
		[52, 28], [53, 28], [53, 27], 
		[53.0, 16.5], [53, 6], [53, 5], 
		[52, 5], [48, 2], [43.0, 0.5], 
		[38, -1], [32, -1], [26, -1], 
		[20.5, 1.0], [15, 3], [11.5, 6.5], 
		[8, 10], [6.5, 15.5], [5, 21], 
		[5, 28], [5, 34], [7.0, 39.5], 
		[9, 45], [12.5, 48.5], [16, 52], 
		[21.0, 54.0], [26, 56], [32, 56], 
		[33, 56], [34.5, 56.0], [36, 56], 
		[38.0, 56.0], [40, 56], [43.0, 55.5], 
		[46, 55], [51, 54], [51, 54], 
		[51.0, 53.5], [51, 53], [51, 52], 
		[51.5, 49.5], [52, 47], [52, 47], 
		[51.5, 47.0], [51, 47], [51, 47], 
		[46, 48], [43.0, 48.5], [40, 49], 
		[38.0, 49.0], [36, 49], [34.5, 49.0], 
		[33, 49], [33, 49], [28, 49], 
		[24.5, 48.0], [21, 47], [18.5, 44.5], 
		[16, 42], [14.5, 38.0], [13, 34], 
		[13, 28], [13, 23], [14.0, 19.5], 
		[15, 16], [17.0, 14.0], [19, 12], 
		[22.5, 11.5], [26, 11], [33, 11], 
		[36, 11], [39.0, 11.5], [42, 12], 
		[44, 13], [44, 14], [44, 15], 
		[44.0, 17.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[44, 20], [44, 21], [43, 21], 
		[38.5, 21.0], [34, 21], [32, 21], 
		[32, 22], [32.0, 24.5], [32, 27], 
		[32, 28], [34, 28], [43.0, 28.0], 
		[52, 28], [53, 28], [53, 27], 
		[53.0, 16.5], [53, 6], [53, 5], 
		[52, 5], [48, 2], [43.0, 0.5], 
		[38, -1], [32, -1], [26, -1], 
		[20.5, 1.0], [15, 3], [11.5, 6.5], 
		[8, 10], [6.5, 15.5], [5, 21], 
		[5, 28], [5, 34], [7.0, 39.5], 
		[9, 45], [12.5, 48.5], [16, 52], 
		[21.0, 54.0], [26, 56], [32, 56], 
		[33, 56], [34.5, 56.0], [36, 56], 
		[38.0, 56.0], [40, 56], [43.0, 55.5], 
		[46, 55], [51, 54], [51, 54], 
		[51.0, 53.5], [51, 53], [51, 52], 
		[51.5, 49.5], [52, 47], [52, 47], 
		[51.5, 47.0], [51, 47], [51, 47], 
		[46, 48], [43.0, 48.5], [40, 49], 
		[38.0, 49.0], [36, 49], [34.5, 49.0], 
		[33, 49], [33, 49], [28, 49], 
		[24.5, 48.0], [21, 47], [18.5, 44.5], 
		[16, 42], [14.5, 38.0], [13, 34], 
		[13, 28], [13, 23], [14.0, 19.5], 
		[15, 16], [17.0, 14.0], [19, 12], 
		[22.5, 11.5], [26, 11], [33, 11], 
		[36, 11], [39.0, 11.5], [42, 12], 
		[44, 13], [44, 14], [44, 15], 
		[44.0, 17.5], ]);
}}}

module OpenDyslexicRegular_contour00x47_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([44, 20], [44, 21], [43, 21],steps,height);
	BezConic([32, 56], [33, 56], [34.5, 56.0],steps,height);
	BezConic([34.5, 56.0], [36, 56], [38.0, 56.0],steps,height);
	BezConic([51.0, 53.5], [51, 53], [51, 52],steps,height);
	BezConic([52, 47], [52, 47], [51.5, 47.0],steps,height);
	BezConic([51.5, 47.0], [51, 47], [51, 47],steps,height);
	BezConic([51, 47], [46, 48], [43.0, 48.5],steps,height);
	BezConic([43.0, 48.5], [40, 49], [38.0, 49.0],steps,height);
	BezConic([38.0, 49.0], [36, 49], [34.5, 49.0],steps,height);
	BezConic([34.5, 49.0], [33, 49], [33, 49],steps,height);
	BezConic([33, 49], [28, 49], [24.5, 48.0],steps,height);
	BezConic([24.5, 48.0], [21, 47], [18.5, 44.5],steps,height);
	BezConic([18.5, 44.5], [16, 42], [14.5, 38.0],steps,height);
	BezConic([14.5, 38.0], [13, 34], [13, 28],steps,height);
	BezConic([13, 28], [13, 23], [14.0, 19.5],steps,height);
	BezConic([14.0, 19.5], [15, 16], [17.0, 14.0],steps,height);
	BezConic([17.0, 14.0], [19, 12], [22.5, 11.5],steps,height);
	BezConic([22.5, 11.5], [26, 11], [33, 11],steps,height);
	BezConic([33, 11], [36, 11], [39.0, 11.5],steps,height);
	BezConic([39.0, 11.5], [42, 12], [44, 13],steps,height);
	BezConic([44, 13], [44, 14], [44, 15],steps,height);
}
}

module OpenDyslexicRegular_contour00x47_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([34, 21], [32, 21], [32, 22],steps,height);
	BezConic([32, 27], [32, 28], [34, 28],steps,height);
	BezConic([52, 28], [53, 28], [53, 27],steps,height);
	BezConic([53, 6], [53, 5], [52, 5],steps,height);
	BezConic([52, 5], [48, 2], [43.0, 0.5],steps,height);
	BezConic([43.0, 0.5], [38, -1], [32, -1],steps,height);
	BezConic([32, -1], [26, -1], [20.5, 1.0],steps,height);
	BezConic([20.5, 1.0], [15, 3], [11.5, 6.5],steps,height);
	BezConic([11.5, 6.5], [8, 10], [6.5, 15.5],steps,height);
	BezConic([6.5, 15.5], [5, 21], [5, 28],steps,height);
	BezConic([5, 28], [5, 34], [7.0, 39.5],steps,height);
	BezConic([7.0, 39.5], [9, 45], [12.5, 48.5],steps,height);
	BezConic([12.5, 48.5], [16, 52], [21.0, 54.0],steps,height);
	BezConic([21.0, 54.0], [26, 56], [32, 56],steps,height);
	BezConic([38.0, 56.0], [40, 56], [43.0, 55.5],steps,height);
	BezConic([43.0, 55.5], [46, 55], [51, 54],steps,height);
	BezConic([51, 54], [51, 54], [51.0, 53.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x47(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x47_skeleton(height);
			OpenDyslexicRegular_contour00x47_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x47_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x47(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x47(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x47=[[5, -1], [53, 56]];

module OpenDyslexicRegular_letter0x47(steps=2, height) {
	OpenDyslexicRegular_chunk10x47(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x48_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 53], [5, 55], [7, 55], 
		[9.0, 55.0], [11, 55], [13, 55], 
		[13, 53], [13.0, 40.5], [13, 28], 
		[13, 26], [15, 26], [26.0, 26.0], 
		[37, 26], [39, 26], [39, 28], 
		[39.0, 40.5], [39, 53], [39, 55], 
		[41, 55], [43.0, 55.0], [45, 55], 
		[47, 55], [47, 53], [47.0, 27.5], 
		[47, 2], [47, 0], [45, 0], 
		[43.0, 0.0], [41, 0], [39, 0], 
		[39, 2], [39.0, 8.0], [39, 14], 
		[39, 16], [37, 16], [26.0, 16.0], 
		[15, 16], [13, 16], [13, 14], 
		[13.0, 8.0], [13, 2], [13, 0], 
		[11, 0], [8.5, 0.0], [6, 0], 
		[4, 0], [5, 2], [5.0, 27.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 53], [5, 55], [7, 55], 
		[9.0, 55.0], [11, 55], [13, 55], 
		[13, 53], [13.0, 40.5], [13, 28], 
		[13, 26], [15, 26], [26.0, 26.0], 
		[37, 26], [39, 26], [39, 28], 
		[39.0, 40.5], [39, 53], [39, 55], 
		[41, 55], [43.0, 55.0], [45, 55], 
		[47, 55], [47, 53], [47.0, 27.5], 
		[47, 2], [47, 0], [45, 0], 
		[43.0, 0.0], [41, 0], [39, 0], 
		[39, 2], [39.0, 8.0], [39, 14], 
		[39, 16], [37, 16], [26.0, 16.0], 
		[15, 16], [13, 16], [13, 14], 
		[13.0, 8.0], [13, 2], [13, 0], 
		[11, 0], [8.5, 0.0], [6, 0], 
		[4, 0], [5, 2], [5.0, 27.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x48_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([13, 28], [13, 26], [15, 26],steps,height);
	BezConic([37, 26], [39, 26], [39, 28],steps,height);
	BezConic([39, 14], [39, 16], [37, 16],steps,height);
	BezConic([15, 16], [13, 16], [13, 14],steps,height);
}
}

module OpenDyslexicRegular_contour00x48_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 53], [5, 55], [7, 55],steps,height);
	BezConic([11, 55], [13, 55], [13, 53],steps,height);
	BezConic([39, 53], [39, 55], [41, 55],steps,height);
	BezConic([45, 55], [47, 55], [47, 53],steps,height);
	BezConic([47, 2], [47, 0], [45, 0],steps,height);
	BezConic([41, 0], [39, 0], [39, 2],steps,height);
	BezConic([13, 2], [13, 0], [11, 0],steps,height);
	BezConic([6, 0], [4, 0], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x48(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x48_skeleton(height);
			OpenDyslexicRegular_contour00x48_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x48_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x48(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x48(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x48=[[4, 0], [47, 55]];

module OpenDyslexicRegular_letter0x48(steps=2, height) {
	OpenDyslexicRegular_chunk10x48(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x49_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 2], [6, 8], [7.5, 15.0], 
		[9, 22], [9.5, 29.0], [10, 36], 
		[9.5, 42.0], [9, 48], [7, 54], 
		[7, 55], [7.5, 55.5], [8, 56], 
		[9, 56], [12.0, 56.0], [15, 56], 
		[16, 56], [16.5, 55.5], [17, 55], 
		[17, 54], [16, 50], [16.0, 46.0], 
		[16, 42], [15.5, 36.5], [15, 31], 
		[15.5, 26.0], [16, 21], [16.0, 16.5], 
		[16, 12], [16.5, 8.0], [17, 4], 
		[18, 2], [19, 1], [18.0, 0.5], 
		[17, 0], [17, 0], [12.0, 0.0], 
		[7, 0], [6, 0], [5.0, 0.5], 
		[4, 1], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 2], [6, 8], [7.5, 15.0], 
		[9, 22], [9.5, 29.0], [10, 36], 
		[9.5, 42.0], [9, 48], [7, 54], 
		[7, 55], [7.5, 55.5], [8, 56], 
		[9, 56], [12.0, 56.0], [15, 56], 
		[16, 56], [16.5, 55.5], [17, 55], 
		[17, 54], [16, 50], [16.0, 46.0], 
		[16, 42], [15.5, 36.5], [15, 31], 
		[15.5, 26.0], [16, 21], [16.0, 16.5], 
		[16, 12], [16.5, 8.0], [17, 4], 
		[18, 2], [19, 1], [18.0, 0.5], 
		[17, 0], [17, 0], [12.0, 0.0], 
		[7, 0], [6, 0], [5.0, 0.5], 
		[4, 1], ]);
}}}

module OpenDyslexicRegular_contour00x49_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7.5, 15.0], [9, 22], [9.5, 29.0],steps,height);
	BezConic([9.5, 29.0], [10, 36], [9.5, 42.0],steps,height);
	BezConic([9.5, 42.0], [9, 48], [7, 54],steps,height);
	BezConic([17, 54], [16, 50], [16.0, 46.0],steps,height);
	BezConic([15.5, 36.5], [15, 31], [15.5, 26.0],steps,height);
	BezConic([16.0, 16.5], [16, 12], [16.5, 8.0],steps,height);
	BezConic([16.5, 8.0], [17, 4], [18, 2],steps,height);
	BezConic([18.0, 0.5], [17, 0], [17, 0],steps,height);
}
}

module OpenDyslexicRegular_contour00x49_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 2], [6, 8], [7.5, 15.0],steps,height);
	BezConic([7, 54], [7, 55], [7.5, 55.5],steps,height);
	BezConic([7.5, 55.5], [8, 56], [9, 56],steps,height);
	BezConic([15, 56], [16, 56], [16.5, 55.5],steps,height);
	BezConic([16.5, 55.5], [17, 55], [17, 54],steps,height);
	BezConic([16.0, 46.0], [16, 42], [15.5, 36.5],steps,height);
	BezConic([15.5, 26.0], [16, 21], [16.0, 16.5],steps,height);
	BezConic([18, 2], [19, 1], [18.0, 0.5],steps,height);
	BezConic([7, 0], [6, 0], [5.0, 0.5],steps,height);
	BezConic([5.0, 0.5], [4, 1], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x49(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x49_skeleton(height);
			OpenDyslexicRegular_contour00x49_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x49_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x49(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x49(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x49=[[4, 0], [19, 56]];

module OpenDyslexicRegular_letter0x49(steps=2, height) {
	OpenDyslexicRegular_chunk10x49(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x4a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[21, 56], [21, 58], [23, 57], 
		[25.0, 57.0], [27, 57], [29, 57], 
		[29, 55], [27.5, 30.0], [26, 5], 
		[26, 0], [25.0, -3.5], [24, -7], 
		[22.0, -9.0], [20, -11], [17.0, -12.0], 
		[14, -13], [9, -14], [8.0, -13.5], 
		[7, -13], [5, -13], [5, -11], 
		[5.0, -7.0], [5, -3], [5, -1], 
		[7, -1], [7.0, -1.0], [7, -1], 
		[8, -2], [8.5, -2.0], [9, -2], 
		[10, -2], [12, -1], [13.5, -0.5], 
		[15, 0], [16.0, 1.0], [17, 2], 
		[17.5, 3.0], [18, 4], [18, 5], 
		[19.5, 30.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[21, 56], [21, 58], [23, 57], 
		[25.0, 57.0], [27, 57], [29, 57], 
		[29, 55], [27.5, 30.0], [26, 5], 
		[26, 0], [25.0, -3.5], [24, -7], 
		[22.0, -9.0], [20, -11], [17.0, -12.0], 
		[14, -13], [9, -14], [8.0, -13.5], 
		[7, -13], [5, -13], [5, -11], 
		[5.0, -7.0], [5, -3], [5, -1], 
		[7, -1], [7.0, -1.0], [7, -1], 
		[8, -2], [8.5, -2.0], [9, -2], 
		[10, -2], [12, -1], [13.5, -0.5], 
		[15, 0], [16.0, 1.0], [17, 2], 
		[17.5, 3.0], [18, 4], [18, 5], 
		[19.5, 30.5], ]);
}}}

module OpenDyslexicRegular_contour00x4a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, -1], [8, -2], [8.5, -2.0],steps,height);
	BezConic([8.5, -2.0], [9, -2], [10, -2],steps,height);
	BezConic([13.5, -0.5], [15, 0], [16.0, 1.0],steps,height);
	BezConic([16.0, 1.0], [17, 2], [17.5, 3.0],steps,height);
	BezConic([17.5, 3.0], [18, 4], [18, 5],steps,height);
}
}

module OpenDyslexicRegular_contour00x4a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21, 56], [21, 58], [23, 57],steps,height);
	BezConic([27, 57], [29, 57], [29, 55],steps,height);
	BezConic([26, 5], [26, 0], [25.0, -3.5],steps,height);
	BezConic([25.0, -3.5], [24, -7], [22.0, -9.0],steps,height);
	BezConic([22.0, -9.0], [20, -11], [17.0, -12.0],steps,height);
	BezConic([17.0, -12.0], [14, -13], [9, -14],steps,height);
	BezConic([7, -13], [5, -13], [5, -11],steps,height);
	BezConic([5, -3], [5, -1], [7, -1],steps,height);
	BezConic([10, -2], [12, -1], [13.5, -0.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x4a(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x4a_skeleton(height);
			OpenDyslexicRegular_contour00x4a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x4a_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x4a(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x4a(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x4a=[[5, -14], [29, 58]];

module OpenDyslexicRegular_letter0x4a(steps=2, height) {
	OpenDyslexicRegular_chunk10x4a(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x4b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 53], [6, 55], [8, 55], 
		[10.0, 55.0], [12, 55], [14, 55], 
		[14, 53], [13.5, 44.0], [13, 35], 
		[13, 34], [13.5, 33.5], [14, 33], 
		[15, 34], [26.0, 44.0], [37, 54], 
		[37, 55], [37.5, 55.0], [38, 55], 
		[39, 55], [41.5, 55.0], [44, 55], 
		[45, 55], [45.5, 54.5], [46, 54], 
		[45, 53], [33.0, 42.0], [21, 31], 
		[20, 29], [21, 28], [34.0, 15.0], 
		[47, 2], [48, 1], [47.5, 0.5], 
		[47, 0], [46, 0], [39.5, 0.0], 
		[33, 0], [32, 0], [31, 1], 
		[23.0, 12.0], [15, 23], [14, 24], 
		[13.5, 24.0], [13, 24], [13, 22], 
		[13.5, 12.0], [14, 2], [14, 0], 
		[12, 0], [9.0, 0.0], [6, 0], 
		[5, 0], [5, 2], [5.5, 27.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 53], [6, 55], [8, 55], 
		[10.0, 55.0], [12, 55], [14, 55], 
		[14, 53], [13.5, 44.0], [13, 35], 
		[13, 34], [13.5, 33.5], [14, 33], 
		[15, 34], [26.0, 44.0], [37, 54], 
		[37, 55], [37.5, 55.0], [38, 55], 
		[39, 55], [41.5, 55.0], [44, 55], 
		[45, 55], [45.5, 54.5], [46, 54], 
		[45, 53], [33.0, 42.0], [21, 31], 
		[20, 29], [21, 28], [34.0, 15.0], 
		[47, 2], [48, 1], [47.5, 0.5], 
		[47, 0], [46, 0], [39.5, 0.0], 
		[33, 0], [32, 0], [31, 1], 
		[23.0, 12.0], [15, 23], [14, 24], 
		[13.5, 24.0], [13, 24], [13, 22], 
		[13.5, 12.0], [14, 2], [14, 0], 
		[12, 0], [9.0, 0.0], [6, 0], 
		[5, 0], [5, 2], [5.5, 27.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x4b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([13, 35], [13, 34], [13.5, 33.5],steps,height);
	BezConic([13.5, 33.5], [14, 33], [15, 34],steps,height);
	BezConic([37.5, 55.0], [38, 55], [39, 55],steps,height);
	BezConic([21, 31], [20, 29], [21, 28],steps,height);
	BezConic([15, 23], [14, 24], [13.5, 24.0],steps,height);
	BezConic([13.5, 24.0], [13, 24], [13, 22],steps,height);
}
}

module OpenDyslexicRegular_contour00x4b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 53], [6, 55], [8, 55],steps,height);
	BezConic([12, 55], [14, 55], [14, 53],steps,height);
	BezConic([37, 54], [37, 55], [37.5, 55.0],steps,height);
	BezConic([44, 55], [45, 55], [45.5, 54.5],steps,height);
	BezConic([45.5, 54.5], [46, 54], [45, 53],steps,height);
	BezConic([47, 2], [48, 1], [47.5, 0.5],steps,height);
	BezConic([47.5, 0.5], [47, 0], [46, 0],steps,height);
	BezConic([33, 0], [32, 0], [31, 1],steps,height);
	BezConic([14, 2], [14, 0], [12, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x4b(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x4b_skeleton(height);
			OpenDyslexicRegular_contour00x4b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x4b_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x4b(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x4b(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x4b=[[5, 0], [48, 55]];

module OpenDyslexicRegular_letter0x4b(steps=2, height) {
	OpenDyslexicRegular_chunk10x4b(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x4c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 53], [5, 55], [7, 55], 
		[9.0, 55.0], [11, 55], [13, 55], 
		[13, 53], [12.5, 34.0], [12, 15], 
		[12, 13], [14, 13], [26.5, 13.0], 
		[39, 13], [41, 13], [41, 11], 
		[40.5, 6.5], [40, 2], [40, 0], 
		[38, 0], [22.0, 0.0], [6, 0], 
		[5, 0], [5, 2], [5.0, 27.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 53], [5, 55], [7, 55], 
		[9.0, 55.0], [11, 55], [13, 55], 
		[13, 53], [12.5, 34.0], [12, 15], 
		[12, 13], [14, 13], [26.5, 13.0], 
		[39, 13], [41, 13], [41, 11], 
		[40.5, 6.5], [40, 2], [40, 0], 
		[38, 0], [22.0, 0.0], [6, 0], 
		[5, 0], [5, 2], [5.0, 27.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x4c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, 15], [12, 13], [14, 13],steps,height);
}
}

module OpenDyslexicRegular_contour00x4c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 53], [5, 55], [7, 55],steps,height);
	BezConic([11, 55], [13, 55], [13, 53],steps,height);
	BezConic([39, 13], [41, 13], [41, 11],steps,height);
	BezConic([40, 2], [40, 0], [38, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x4c(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x4c_skeleton(height);
			OpenDyslexicRegular_contour00x4c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x4c_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x4c(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x4c(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x4c=[[5, 0], [41, 55]];

module OpenDyslexicRegular_letter0x4c(steps=2, height) {
	OpenDyslexicRegular_chunk10x4c(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x4d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 53], [7, 55], [9, 55], 
		[13.0, 55.0], [17, 55], [19, 55], 
		[19, 54], [24.0, 39.5], [29, 25], 
		[30, 24], [30.5, 24.0], [31, 24], 
		[32, 25], [37.0, 39.5], [42, 54], 
		[43, 55], [44, 55], [47.5, 55.0], 
		[51, 55], [53, 55], [53, 53], 
		[54.5, 27.5], [56, 2], [56, 0], 
		[54, 0], [51.0, 0.0], [48, 0], 
		[46, 0], [46, 2], [45.5, 21.5], 
		[45, 41], [45, 42], [45.0, 42.5], 
		[45, 43], [44.5, 43.0], [44, 43], 
		[44.0, 42.5], [44, 42], [43, 42], 
		[39.0, 26.0], [35, 10], [35, 9], 
		[34.5, 8.5], [34, 8], [33, 8], 
		[30.0, 8.0], [27, 8], [26, 8], 
		[25, 10], [21.0, 26.0], [17, 42], 
		[17, 42], [16.5, 42.5], [16, 43], 
		[16.0, 43.0], [16, 43], [15.5, 42.5], 
		[15, 42], [15, 41], [15.0, 21.5], 
		[15, 2], [15, 0], [13, 0], 
		[9.5, 0.0], [6, 0], [5, 0], 
		[5, 2],[6.0, 27.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 53], [7, 55], [9, 55], 
		[13.0, 55.0], [17, 55], [19, 55], 
		[19, 54], [24.0, 39.5], [29, 25], 
		[30, 24], [30.5, 24.0], [31, 24], 
		[32, 25], [37.0, 39.5], [42, 54], 
		[43, 55], [44, 55], [47.5, 55.0], 
		[51, 55], [53, 55], [53, 53], 
		[54.5, 27.5], [56, 2], [56, 0], 
		[54, 0], [51.0, 0.0], [48, 0], 
		[46, 0], [46, 2], [45.5, 21.5], 
		[45, 41], [45, 42], [45.0, 42.5], 
		[45, 43], [44.5, 43.0], [44, 43], 
		[44.0, 42.5], [44, 42], [43, 42], 
		[39.0, 26.0], [35, 10], [35, 9], 
		[34.5, 8.5], [34, 8], [33, 8], 
		[30.0, 8.0], [27, 8], [26, 8], 
		[25, 10], [21.0, 26.0], [17, 42], 
		[17, 42], [16.5, 42.5], [16, 43], 
		[16.0, 43.0], [16, 43], [15.5, 42.5], 
		[15, 42], [15, 41], [15.0, 21.5], 
		[15, 2], [15, 0], [13, 0], 
		[9.5, 0.0], [6, 0], [5, 0], 
		[5, 2],[6.0, 27.5], ]);
}}}

module OpenDyslexicRegular_contour00x4d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29, 25], [30, 24], [30.5, 24.0],steps,height);
	BezConic([30.5, 24.0], [31, 24], [32, 25],steps,height);
	BezConic([45, 41], [45, 42], [45.0, 42.5],steps,height);
	BezConic([45.0, 42.5], [45, 43], [44.5, 43.0],steps,height);
	BezConic([44.5, 43.0], [44, 43], [44.0, 42.5],steps,height);
	BezConic([17, 42], [17, 42], [16.5, 42.5],steps,height);
	BezConic([16.5, 42.5], [16, 43], [16.0, 43.0],steps,height);
	BezConic([15.5, 42.5], [15, 42], [15, 41],steps,height);
}
}

module OpenDyslexicRegular_contour00x4d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, 53], [7, 55], [9, 55],steps,height);
	BezConic([17, 55], [19, 55], [19, 54],steps,height);
	BezConic([42, 54], [43, 55], [44, 55],steps,height);
	BezConic([51, 55], [53, 55], [53, 53],steps,height);
	BezConic([56, 2], [56, 0], [54, 0],steps,height);
	BezConic([48, 0], [46, 0], [46, 2],steps,height);
	BezConic([44.0, 42.5], [44, 42], [43, 42],steps,height);
	BezConic([35, 10], [35, 9], [34.5, 8.5],steps,height);
	BezConic([34.5, 8.5], [34, 8], [33, 8],steps,height);
	BezConic([27, 8], [26, 8], [25, 10],steps,height);
	BezConic([16.0, 43.0], [16, 43], [15.5, 42.5],steps,height);
	BezConic([15, 2], [15, 0], [13, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x4d(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x4d_skeleton(height);
			OpenDyslexicRegular_contour00x4d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x4d_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x4d(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x4d(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x4d=[[5, 0], [56, 55]];

module OpenDyslexicRegular_letter0x4d(steps=2, height) {
	OpenDyslexicRegular_chunk10x4d(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x4e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 52], [7, 54], [9, 54], 
		[12.0, 54.0], [15, 54], [16, 54], 
		[17, 53], [27.5, 33.5], [38, 14], 
		[38, 13], [39.0, 13.5], [40, 14], 
		[40, 15], [40.5, 34.0], [41, 53], 
		[41, 55], [43, 55], [44.5, 55.0], 
		[46, 55], [48, 55], [48, 53], 
		[48.0, 27.5], [48, 2], [48, 0], 
		[46, 0], [42.0, 0.0], [38, 0], 
		[37, 0], [36, 1], [25.5, 21.5], 
		[15, 42], [15, 42], [14.5, 42.5], 
		[14, 43], [13.5, 42.5], [13, 42], 
		[13.0, 42.0], [13, 42], [13, 41], 
		[14.0, 21.5], [15, 2], [16, 0], 
		[14, 0], [10.0, 0.0], [6, 0], 
		[5, 0], [5, 2], [6.0, 27.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 52], [7, 54], [9, 54], 
		[12.0, 54.0], [15, 54], [16, 54], 
		[17, 53], [27.5, 33.5], [38, 14], 
		[38, 13], [39.0, 13.5], [40, 14], 
		[40, 15], [40.5, 34.0], [41, 53], 
		[41, 55], [43, 55], [44.5, 55.0], 
		[46, 55], [48, 55], [48, 53], 
		[48.0, 27.5], [48, 2], [48, 0], 
		[46, 0], [42.0, 0.0], [38, 0], 
		[37, 0], [36, 1], [25.5, 21.5], 
		[15, 42], [15, 42], [14.5, 42.5], 
		[14, 43], [13.5, 42.5], [13, 42], 
		[13.0, 42.0], [13, 42], [13, 41], 
		[14.0, 21.5], [15, 2], [16, 0], 
		[14, 0], [10.0, 0.0], [6, 0], 
		[5, 0], [5, 2], [6.0, 27.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x4e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([38, 14], [38, 13], [39.0, 13.5],steps,height);
	BezConic([39.0, 13.5], [40, 14], [40, 15],steps,height);
	BezConic([15, 42], [15, 42], [14.5, 42.5],steps,height);
	BezConic([14.5, 42.5], [14, 43], [13.5, 42.5],steps,height);
	BezConic([13.5, 42.5], [13, 42], [13.0, 42.0],steps,height);
}
}

module OpenDyslexicRegular_contour00x4e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, 52], [7, 54], [9, 54],steps,height);
	BezConic([15, 54], [16, 54], [17, 53],steps,height);
	BezConic([41, 53], [41, 55], [43, 55],steps,height);
	BezConic([46, 55], [48, 55], [48, 53],steps,height);
	BezConic([48, 2], [48, 0], [46, 0],steps,height);
	BezConic([38, 0], [37, 0], [36, 1],steps,height);
	BezConic([13.0, 42.0], [13, 42], [13, 41],steps,height);
	BezConic([15, 2], [16, 0], [14, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x4e(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x4e_skeleton(height);
			OpenDyslexicRegular_contour00x4e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x4e_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x4e(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x4e(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x4e=[[5, 0], [48, 55]];

module OpenDyslexicRegular_letter0x4e(steps=2, height) {
	OpenDyslexicRegular_chunk10x4e(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x4f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[30, 50], [26, 50], [22.5, 48.5], 
		[19, 47], [17.0, 44.0], [15, 41], 
		[13.5, 37.0], [12, 33], [12, 28], 
		[12, 23], [13.5, 20.5], [15, 18], 
		[17.0, 16.5], [19, 15], [22.5, 14.0], 
		[26, 13], [30, 13], [34, 13], 
		[37.0, 14.0], [40, 15], [42.5, 16.5], 
		[45, 18], [46.0, 20.5], [47, 23], 
		[47, 28], [47, 33], [46.0, 37.0], 
		[45, 41], [42.5, 44.0], [40, 47], 
		[37.0, 48.5],[34, 50], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[30, 50], [26, 50], [22.5, 48.5], 
		[19, 47], [17.0, 44.0], [15, 41], 
		[13.5, 37.0], [12, 33], [12, 28], 
		[12, 23], [13.5, 20.5], [15, 18], 
		[17.0, 16.5], [19, 15], [22.5, 14.0], 
		[26, 13], [30, 13], [34, 13], 
		[37.0, 14.0], [40, 15], [42.5, 16.5], 
		[45, 18], [46.0, 20.5], [47, 23], 
		[47, 28], [47, 33], [46.0, 37.0], 
		[45, 41], [42.5, 44.0], [40, 47], 
		[37.0, 48.5],[34, 50], ]);
}}}

module OpenDyslexicRegular_contour00x4f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([30, 50], [26, 50], [22.5, 48.5],steps,height);
	BezConic([22.5, 48.5], [19, 47], [17.0, 44.0],steps,height);
	BezConic([17.0, 44.0], [15, 41], [13.5, 37.0],steps,height);
	BezConic([13.5, 37.0], [12, 33], [12, 28],steps,height);
	BezConic([12, 28], [12, 23], [13.5, 20.5],steps,height);
	BezConic([13.5, 20.5], [15, 18], [17.0, 16.5],steps,height);
	BezConic([17.0, 16.5], [19, 15], [22.5, 14.0],steps,height);
	BezConic([22.5, 14.0], [26, 13], [30, 13],steps,height);
	BezConic([30, 13], [34, 13], [37.0, 14.0],steps,height);
	BezConic([37.0, 14.0], [40, 15], [42.5, 16.5],steps,height);
	BezConic([42.5, 16.5], [45, 18], [46.0, 20.5],steps,height);
	BezConic([46.0, 20.5], [47, 23], [47, 28],steps,height);
	BezConic([47, 28], [47, 33], [46.0, 37.0],steps,height);
	BezConic([46.0, 37.0], [45, 41], [42.5, 44.0],steps,height);
	BezConic([42.5, 44.0], [40, 47], [37.0, 48.5],steps,height);
	BezConic([37.0, 48.5], [34, 50], [30, 50],steps,height);
}
}

module OpenDyslexicRegular_contour00x4f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x4f(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x4f_skeleton(height);
			OpenDyslexicRegular_contour00x4f_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x4f_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x4f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[30, 56], [35, 56], [39.5, 54.0], 
		[44, 52], [47.5, 48.5], [51, 45], 
		[53.0, 39.5], [55, 34], [55, 28], 
		[55, 21], [53.0, 16.0], [51, 11], 
		[47.5, 7.0], [44, 3], [39.5, 1.0], 
		[35, -1], [30, -1], [25, -1], 
		[20.0, 1.0], [15, 3], [12.0, 7.0], 
		[9, 11], [7.0, 16.0], [5, 21], 
		[5, 28], [5, 34], [7.0, 39.5], 
		[9, 45], [12.0, 48.5], [15, 52], 
		[20.0, 54.0],[25, 56], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[30, 56], [35, 56], [39.5, 54.0], 
		[44, 52], [47.5, 48.5], [51, 45], 
		[53.0, 39.5], [55, 34], [55, 28], 
		[55, 21], [53.0, 16.0], [51, 11], 
		[47.5, 7.0], [44, 3], [39.5, 1.0], 
		[35, -1], [30, -1], [25, -1], 
		[20.0, 1.0], [15, 3], [12.0, 7.0], 
		[9, 11], [7.0, 16.0], [5, 21], 
		[5, 28], [5, 34], [7.0, 39.5], 
		[9, 45], [12.0, 48.5], [15, 52], 
		[20.0, 54.0],[25, 56], ]);
}}}

module OpenDyslexicRegular_contour10x4f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x4f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([30, 56], [35, 56], [39.5, 54.0],steps,height);
	BezConic([39.5, 54.0], [44, 52], [47.5, 48.5],steps,height);
	BezConic([47.5, 48.5], [51, 45], [53.0, 39.5],steps,height);
	BezConic([53.0, 39.5], [55, 34], [55, 28],steps,height);
	BezConic([55, 28], [55, 21], [53.0, 16.0],steps,height);
	BezConic([53.0, 16.0], [51, 11], [47.5, 7.0],steps,height);
	BezConic([47.5, 7.0], [44, 3], [39.5, 1.0],steps,height);
	BezConic([39.5, 1.0], [35, -1], [30, -1],steps,height);
	BezConic([30, -1], [25, -1], [20.0, 1.0],steps,height);
	BezConic([20.0, 1.0], [15, 3], [12.0, 7.0],steps,height);
	BezConic([12.0, 7.0], [9, 11], [7.0, 16.0],steps,height);
	BezConic([7.0, 16.0], [5, 21], [5, 28],steps,height);
	BezConic([5, 28], [5, 34], [7.0, 39.5],steps,height);
	BezConic([7.0, 39.5], [9, 45], [12.0, 48.5],steps,height);
	BezConic([12.0, 48.5], [15, 52], [20.0, 54.0],steps,height);
	BezConic([20.0, 54.0], [25, 56], [30, 56],steps,height);
}
}

module OpenDyslexicRegular_contour10x4f(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x4f_skeleton(height);
			OpenDyslexicRegular_contour10x4f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x4f_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x4f(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x4f(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x4f(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x4f(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x4f=[[5, -1], [55, 56]];

module OpenDyslexicRegular_letter0x4f(steps=2, height) {
	OpenDyslexicRegular_chunk00x4f(steps, height);
	OpenDyslexicRegular_chunk10x4f(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x50_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[17, 50], [15, 50], [15, 48], 
		[15.0, 41.0], [15, 34], [15, 32], 
		[17, 32], [21.0, 32.0], [25, 32], 
		[28, 32], [30.0, 32.5], [32, 33], 
		[33.5, 34.0], [35, 35], [35.5, 37.0], 
		[36, 39], [36, 42], [36, 45], 
		[33.0, 47.5], [30, 50], [25, 50], 
		[21.0, 50.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[17, 50], [15, 50], [15, 48], 
		[15.0, 41.0], [15, 34], [15, 32], 
		[17, 32], [21.0, 32.0], [25, 32], 
		[28, 32], [30.0, 32.5], [32, 33], 
		[33.5, 34.0], [35, 35], [35.5, 37.0], 
		[36, 39], [36, 42], [36, 45], 
		[33.0, 47.5], [30, 50], [25, 50], 
		[21.0, 50.0], ]);
}}}

module OpenDyslexicRegular_contour00x50_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([17, 50], [15, 50], [15, 48],steps,height);
	BezConic([15, 34], [15, 32], [17, 32],steps,height);
	BezConic([25, 32], [28, 32], [30.0, 32.5],steps,height);
	BezConic([30.0, 32.5], [32, 33], [33.5, 34.0],steps,height);
	BezConic([33.5, 34.0], [35, 35], [35.5, 37.0],steps,height);
	BezConic([35.5, 37.0], [36, 39], [36, 42],steps,height);
	BezConic([36, 42], [36, 45], [33.0, 47.5],steps,height);
	BezConic([33.0, 47.5], [30, 50], [25, 50],steps,height);
}
}

module OpenDyslexicRegular_contour00x50_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x50(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x50_skeleton(height);
			OpenDyslexicRegular_contour00x50_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x50_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x50_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 53], [8, 55], [9, 55], 
		[16.5, 55.0], [24, 55], [43, 55], 
		[43, 39], [43, 30], [38.0, 25.5], 
		[33, 21], [24, 21], [20.5, 21.0], 
		[17, 21], [15, 21], [15, 20], 
		[15.0, 11.0], [15, 2], [15, 0], 
		[13, 0], [9.5, 0.0], [6, 0], 
		[5, 0], [5, 2], [6.0, 27.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 53], [8, 55], [9, 55], 
		[16.5, 55.0], [24, 55], [43, 55], 
		[43, 39], [43, 30], [38.0, 25.5], 
		[33, 21], [24, 21], [20.5, 21.0], 
		[17, 21], [15, 21], [15, 20], 
		[15.0, 11.0], [15, 2], [15, 0], 
		[13, 0], [9.5, 0.0], [6, 0], 
		[5, 0], [5, 2], [6.0, 27.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour10x50_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([17, 21], [15, 21], [15, 20],steps,height);
}
}

module OpenDyslexicRegular_contour10x50_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, 53], [8, 55], [9, 55],steps,height);
	BezConic([24, 55], [43, 55], [43, 39],steps,height);
	BezConic([43, 39], [43, 30], [38.0, 25.5],steps,height);
	BezConic([38.0, 25.5], [33, 21], [24, 21],steps,height);
	BezConic([15, 2], [15, 0], [13, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour10x50(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x50_skeleton(height);
			OpenDyslexicRegular_contour10x50_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x50_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x50(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x50(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x50(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x50(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x50=[[5, 0], [43, 55]];

module OpenDyslexicRegular_letter0x50(steps=2, height) {
	OpenDyslexicRegular_chunk00x50(steps, height);
	OpenDyslexicRegular_chunk10x50(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x51_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[29, 51], [25, 51], [22.0, 49.5], 
		[19, 48], [17.0, 45.0], [15, 42], 
		[13.5, 38.0], [12, 34], [12, 29], 
		[12, 25], [13.5, 22.5], [15, 20], 
		[16.5, 18.5], [18, 17], [20.0, 16.5], 
		[22, 16], [23, 16], [24.0, 16.0], 
		[25, 16], [26, 15], [26.5, 15.5], 
		[27, 16], [27.5, 16.0], [28, 16], 
		[28.5, 17.0], [29, 18], [30, 20], 
		[31, 22], [32, 21], [33, 20], 
		[34.5, 19.5], [36, 19], [37.0, 18.5], 
		[38, 18], [39.0, 18.0], [40, 18], 
		[41, 19], [42, 20], [43.0, 21.0], 
		[44, 22], [44.5, 23.0], [45, 24], 
		[45.5, 25.5], [46, 27], [46, 29], 
		[46, 34], [44.5, 38.0], [43, 42], 
		[41.0, 45.0], [39, 48], [36.0, 49.5], 
		[33, 51], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[29, 51], [25, 51], [22.0, 49.5], 
		[19, 48], [17.0, 45.0], [15, 42], 
		[13.5, 38.0], [12, 34], [12, 29], 
		[12, 25], [13.5, 22.5], [15, 20], 
		[16.5, 18.5], [18, 17], [20.0, 16.5], 
		[22, 16], [23, 16], [24.0, 16.0], 
		[25, 16], [26, 15], [26.5, 15.5], 
		[27, 16], [27.5, 16.0], [28, 16], 
		[28.5, 17.0], [29, 18], [30, 20], 
		[31, 22], [32, 21], [33, 20], 
		[34.5, 19.5], [36, 19], [37.0, 18.5], 
		[38, 18], [39.0, 18.0], [40, 18], 
		[41, 19], [42, 20], [43.0, 21.0], 
		[44, 22], [44.5, 23.0], [45, 24], 
		[45.5, 25.5], [46, 27], [46, 29], 
		[46, 34], [44.5, 38.0], [43, 42], 
		[41.0, 45.0], [39, 48], [36.0, 49.5], 
		[33, 51], ]);
}}}

module OpenDyslexicRegular_contour00x51_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29, 51], [25, 51], [22.0, 49.5],steps,height);
	BezConic([22.0, 49.5], [19, 48], [17.0, 45.0],steps,height);
	BezConic([17.0, 45.0], [15, 42], [13.5, 38.0],steps,height);
	BezConic([13.5, 38.0], [12, 34], [12, 29],steps,height);
	BezConic([12, 29], [12, 25], [13.5, 22.5],steps,height);
	BezConic([13.5, 22.5], [15, 20], [16.5, 18.5],steps,height);
	BezConic([16.5, 18.5], [18, 17], [20.0, 16.5],steps,height);
	BezConic([20.0, 16.5], [22, 16], [23, 16],steps,height);
	BezConic([25, 16], [26, 15], [26.5, 15.5],steps,height);
	BezConic([27.5, 16.0], [28, 16], [28.5, 17.0],steps,height);
	BezConic([28.5, 17.0], [29, 18], [30, 20],steps,height);
	BezConic([32, 21], [33, 20], [34.5, 19.5],steps,height);
	BezConic([37.0, 18.5], [38, 18], [39.0, 18.0],steps,height);
	BezConic([39.0, 18.0], [40, 18], [41, 19],steps,height);
	BezConic([41, 19], [42, 20], [43.0, 21.0],steps,height);
	BezConic([43.0, 21.0], [44, 22], [44.5, 23.0],steps,height);
	BezConic([44.5, 23.0], [45, 24], [45.5, 25.5],steps,height);
	BezConic([45.5, 25.5], [46, 27], [46, 29],steps,height);
	BezConic([46, 29], [46, 34], [44.5, 38.0],steps,height);
	BezConic([44.5, 38.0], [43, 42], [41.0, 45.0],steps,height);
	BezConic([41.0, 45.0], [39, 48], [36.0, 49.5],steps,height);
	BezConic([36.0, 49.5], [33, 51], [29, 51],steps,height);
}
}

module OpenDyslexicRegular_contour00x51_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([26.5, 15.5], [27, 16], [27.5, 16.0],steps,height);
	BezConic([30, 20], [31, 22], [32, 21],steps,height);
	BezConic([34.5, 19.5], [36, 19], [37.0, 18.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x51(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x51_skeleton(height);
			OpenDyslexicRegular_contour00x51_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x51_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x51_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[54, -6], [55, -7], [54.5, -7.5], 
		[54, -8], [53, -8], [47.0, -8.0], 
		[41, -8], [40, -8], [39, -7], 
		[36.0, -3.5], [33, 0], [32, 0], 
		[31.5, 0.5], [31, 1], [30, 1], 
		[30, 0], [29.5, 0.0], [29, 0], 
		[29, 0], [23, 0], [18.5, 2.0], 
		[14, 4], [11.0, 8.0], [8, 12], 
		[6.5, 17.0], [5, 22], [5, 29], 
		[5, 36], [6.5, 41.0], [8, 46], 
		[11.5, 50.0], [15, 54], [19.5, 56.0], 
		[24, 58], [29, 58], [35, 58], 
		[39.5, 56.0], [44, 54], [47.0, 50.0], 
		[50, 46], [51.5, 41.0], [53, 36], 
		[53, 29], [53, 25], [52.5, 21.5], 
		[52, 18], [51.0, 15.0], [50, 12], 
		[48.5, 10.0], [47, 8], [45, 6], 
		[44, 5], [46, 3], [50.0, -1.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[54, -6], [55, -7], [54.5, -7.5], 
		[54, -8], [53, -8], [47.0, -8.0], 
		[41, -8], [40, -8], [39, -7], 
		[36.0, -3.5], [33, 0], [32, 0], 
		[31.5, 0.5], [31, 1], [30, 1], 
		[30, 0], [29.5, 0.0], [29, 0], 
		[29, 0], [23, 0], [18.5, 2.0], 
		[14, 4], [11.0, 8.0], [8, 12], 
		[6.5, 17.0], [5, 22], [5, 29], 
		[5, 36], [6.5, 41.0], [8, 46], 
		[11.5, 50.0], [15, 54], [19.5, 56.0], 
		[24, 58], [29, 58], [35, 58], 
		[39.5, 56.0], [44, 54], [47.0, 50.0], 
		[50, 46], [51.5, 41.0], [53, 36], 
		[53, 29], [53, 25], [52.5, 21.5], 
		[52, 18], [51.0, 15.0], [50, 12], 
		[48.5, 10.0], [47, 8], [45, 6], 
		[44, 5], [46, 3], [50.0, -1.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour10x51_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([31.5, 0.5], [31, 1], [30, 1],steps,height);
	BezConic([29.5, 0.0], [29, 0], [29, 0],steps,height);
	BezConic([45, 6], [44, 5], [46, 3],steps,height);
}
}

module OpenDyslexicRegular_contour10x51_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([54, -6], [55, -7], [54.5, -7.5],steps,height);
	BezConic([54.5, -7.5], [54, -8], [53, -8],steps,height);
	BezConic([41, -8], [40, -8], [39, -7],steps,height);
	BezConic([33, 0], [32, 0], [31.5, 0.5],steps,height);
	BezConic([30, 1], [30, 0], [29.5, 0.0],steps,height);
	BezConic([29, 0], [23, 0], [18.5, 2.0],steps,height);
	BezConic([18.5, 2.0], [14, 4], [11.0, 8.0],steps,height);
	BezConic([11.0, 8.0], [8, 12], [6.5, 17.0],steps,height);
	BezConic([6.5, 17.0], [5, 22], [5, 29],steps,height);
	BezConic([5, 29], [5, 36], [6.5, 41.0],steps,height);
	BezConic([6.5, 41.0], [8, 46], [11.5, 50.0],steps,height);
	BezConic([11.5, 50.0], [15, 54], [19.5, 56.0],steps,height);
	BezConic([19.5, 56.0], [24, 58], [29, 58],steps,height);
	BezConic([29, 58], [35, 58], [39.5, 56.0],steps,height);
	BezConic([39.5, 56.0], [44, 54], [47.0, 50.0],steps,height);
	BezConic([47.0, 50.0], [50, 46], [51.5, 41.0],steps,height);
	BezConic([51.5, 41.0], [53, 36], [53, 29],steps,height);
	BezConic([53, 29], [53, 25], [52.5, 21.5],steps,height);
	BezConic([52.5, 21.5], [52, 18], [51.0, 15.0],steps,height);
	BezConic([51.0, 15.0], [50, 12], [48.5, 10.0],steps,height);
	BezConic([48.5, 10.0], [47, 8], [45, 6],steps,height);
}
}

module OpenDyslexicRegular_contour10x51(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x51_skeleton(height);
			OpenDyslexicRegular_contour10x51_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x51_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x51(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x51(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x51(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x51(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x51=[[5, -8], [55, 58]];

module OpenDyslexicRegular_letter0x51(steps=2, height) {
	OpenDyslexicRegular_chunk00x51(steps, height);
	OpenDyslexicRegular_chunk10x51(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x52_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[15, 50], [14, 50], [14, 48], 
		[13.5, 41.0], [13, 34], [13, 32], 
		[15, 32], [19.0, 32.0], [23, 32], 
		[25, 32], [27.0, 32.5], [29, 33], 
		[31.0, 34.0], [33, 35], [33.5, 36.5], 
		[34, 38], [34, 39], [34, 43], 
		[33.5, 45.0], [33, 47], [31.0, 48.0], 
		[29, 49], [27.0, 49.5], [25, 50], 
		[23, 50],[19.0, 50.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[15, 50], [14, 50], [14, 48], 
		[13.5, 41.0], [13, 34], [13, 32], 
		[15, 32], [19.0, 32.0], [23, 32], 
		[25, 32], [27.0, 32.5], [29, 33], 
		[31.0, 34.0], [33, 35], [33.5, 36.5], 
		[34, 38], [34, 39], [34, 43], 
		[33.5, 45.0], [33, 47], [31.0, 48.0], 
		[29, 49], [27.0, 49.5], [25, 50], 
		[23, 50],[19.0, 50.0], ]);
}}}

module OpenDyslexicRegular_contour00x52_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 50], [14, 50], [14, 48],steps,height);
	BezConic([13, 34], [13, 32], [15, 32],steps,height);
	BezConic([23, 32], [25, 32], [27.0, 32.5],steps,height);
	BezConic([27.0, 32.5], [29, 33], [31.0, 34.0],steps,height);
	BezConic([31.0, 34.0], [33, 35], [33.5, 36.5],steps,height);
	BezConic([33.5, 36.5], [34, 38], [34, 39],steps,height);
	BezConic([34, 39], [34, 43], [33.5, 45.0],steps,height);
	BezConic([33.5, 45.0], [33, 47], [31.0, 48.0],steps,height);
	BezConic([31.0, 48.0], [29, 49], [27.0, 49.5],steps,height);
	BezConic([27.0, 49.5], [25, 50], [23, 50],steps,height);
}
}

module OpenDyslexicRegular_contour00x52_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x52(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x52_skeleton(height);
			OpenDyslexicRegular_contour00x52_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x52_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x52_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[33, 25], [35, 24], [37.5, 21.5], 
		[40, 19], [42, 15], [45.0, 8.5], 
		[48, 2], [48, 1], [48.0, 0.5], 
		[48, 0], [47, 0], [43.0, 0.0], 
		[39, 0], [38, 0], [37, 1], 
		[34.5, 7.5], [32, 14], [31, 17], 
		[30.0, 19.0], [29, 21], [27.5, 22.0], 
		[26, 23], [24.0, 23.0], [22, 23], 
		[20, 23], [17.5, 23.0], [15, 23], 
		[14, 23], [14, 21], [14.5, 11.5], 
		[15, 2], [15, 0], [13, 0], 
		[9.5, 0.0], [6, 0], [5, 0], 
		[5, 2], [5.0, 27.5], [5, 53], 
		[5, 55], [7, 55], [14.5, 55.0], 
		[22, 55], [31, 55], [35.5, 51.0], 
		[40, 47], [40, 39], [40, 35], 
		[38.0, 31.5], [36, 28], [33, 27], 
		[33, 26], [33.0, 26.0], [33, 26], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[33, 25], [35, 24], [37.5, 21.5], 
		[40, 19], [42, 15], [45.0, 8.5], 
		[48, 2], [48, 1], [48.0, 0.5], 
		[48, 0], [47, 0], [43.0, 0.0], 
		[39, 0], [38, 0], [37, 1], 
		[34.5, 7.5], [32, 14], [31, 17], 
		[30.0, 19.0], [29, 21], [27.5, 22.0], 
		[26, 23], [24.0, 23.0], [22, 23], 
		[20, 23], [17.5, 23.0], [15, 23], 
		[14, 23], [14, 21], [14.5, 11.5], 
		[15, 2], [15, 0], [13, 0], 
		[9.5, 0.0], [6, 0], [5, 0], 
		[5, 2], [5.0, 27.5], [5, 53], 
		[5, 55], [7, 55], [14.5, 55.0], 
		[22, 55], [31, 55], [35.5, 51.0], 
		[40, 47], [40, 39], [40, 35], 
		[38.0, 31.5], [36, 28], [33, 27], 
		[33, 26], [33.0, 26.0], [33, 26], 
		 ]);
}}}

module OpenDyslexicRegular_contour10x52_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([48, 2], [48, 1], [48.0, 0.5],steps,height);
	BezConic([32, 14], [31, 17], [30.0, 19.0],steps,height);
	BezConic([30.0, 19.0], [29, 21], [27.5, 22.0],steps,height);
	BezConic([27.5, 22.0], [26, 23], [24.0, 23.0],steps,height);
	BezConic([24.0, 23.0], [22, 23], [20, 23],steps,height);
	BezConic([15, 23], [14, 23], [14, 21],steps,height);
	BezConic([33, 27], [33, 26], [33.0, 26.0],steps,height);
}
}

module OpenDyslexicRegular_contour10x52_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([33, 25], [35, 24], [37.5, 21.5],steps,height);
	BezConic([37.5, 21.5], [40, 19], [42, 15],steps,height);
	BezConic([48.0, 0.5], [48, 0], [47, 0],steps,height);
	BezConic([39, 0], [38, 0], [37, 1],steps,height);
	BezConic([15, 2], [15, 0], [13, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
	BezConic([5, 53], [5, 55], [7, 55],steps,height);
	BezConic([22, 55], [31, 55], [35.5, 51.0],steps,height);
	BezConic([35.5, 51.0], [40, 47], [40, 39],steps,height);
	BezConic([40, 39], [40, 35], [38.0, 31.5],steps,height);
	BezConic([38.0, 31.5], [36, 28], [33, 27],steps,height);
	BezConic([33.0, 26.0], [33, 26], [33, 25],steps,height);
}
}

module OpenDyslexicRegular_contour10x52(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x52_skeleton(height);
			OpenDyslexicRegular_contour10x52_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x52_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x52(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x52(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x52(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x52(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x52=[[5, 0], [48, 55]];

module OpenDyslexicRegular_letter0x52(steps=2, height) {
	OpenDyslexicRegular_chunk00x52(steps, height);
	OpenDyslexicRegular_chunk10x52(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x53_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[41, 49], [41, 47], [40.0, 47.0], 
		[39, 47], [39, 47], [35, 49], 
		[32.0, 49.5], [29, 50], [26, 50], 
		[20, 50], [17.0, 48.0], [14, 46], 
		[14, 41], [14, 39], [14.5, 38.0], 
		[15, 37], [16.0, 36.0], [17, 35], 
		[19.0, 34.0], [21, 33], [24, 33], 
		[26.5, 32.5], [29, 32], [37, 30], 
		[41.0, 26.0], [45, 22], [45, 15], 
		[45, 7], [39.5, 3.0], [34, -1], 
		[24, -1], [22, -1], [20.0, -1.0], 
		[18, -1], [15.5, -0.5], [13, 0], 
		[10.5, 0.5], [8, 1], [6, 2], 
		[5, 3], [5, 4], [5.0, 8.5], 
		[5, 13], [6, 16], [8, 15], 
		[10, 14], [12.0, 13.0], [14, 12], 
		[16.0, 11.5], [18, 11], [20.5, 11.0], 
		[23, 11], [24, 11], [28, 11], 
		[30.0, 11.5], [32, 12], [33.5, 13.0], 
		[35, 14], [35.5, 15.5], [36, 17], 
		[36, 17], [36, 18], [35.5, 19.5], 
		[35, 21], [34.0, 21.5], [33, 22], 
		[31.0, 23.0], [29, 24], [26, 25], 
		[24.0, 25.0], [22, 25], [14, 27], 
		[10.0, 30.5], [6, 34], [6, 41], 
		[6, 44], [7.5, 47.0], [9, 50], 
		[11.5, 52.0], [14, 54], [17.5, 55.0], 
		[21, 56], [25, 56], [29, 56], 
		[33.0, 55.5], [37, 55], [41, 54], 
		[42, 54], [42.0, 53.5], [42, 53], 
		[42, 52],[41.5, 50.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[41, 49], [41, 47], [40.0, 47.0], 
		[39, 47], [39, 47], [35, 49], 
		[32.0, 49.5], [29, 50], [26, 50], 
		[20, 50], [17.0, 48.0], [14, 46], 
		[14, 41], [14, 39], [14.5, 38.0], 
		[15, 37], [16.0, 36.0], [17, 35], 
		[19.0, 34.0], [21, 33], [24, 33], 
		[26.5, 32.5], [29, 32], [37, 30], 
		[41.0, 26.0], [45, 22], [45, 15], 
		[45, 7], [39.5, 3.0], [34, -1], 
		[24, -1], [22, -1], [20.0, -1.0], 
		[18, -1], [15.5, -0.5], [13, 0], 
		[10.5, 0.5], [8, 1], [6, 2], 
		[5, 3], [5, 4], [5.0, 8.5], 
		[5, 13], [6, 16], [8, 15], 
		[10, 14], [12.0, 13.0], [14, 12], 
		[16.0, 11.5], [18, 11], [20.5, 11.0], 
		[23, 11], [24, 11], [28, 11], 
		[30.0, 11.5], [32, 12], [33.5, 13.0], 
		[35, 14], [35.5, 15.5], [36, 17], 
		[36, 17], [36, 18], [35.5, 19.5], 
		[35, 21], [34.0, 21.5], [33, 22], 
		[31.0, 23.0], [29, 24], [26, 25], 
		[24.0, 25.0], [22, 25], [14, 27], 
		[10.0, 30.5], [6, 34], [6, 41], 
		[6, 44], [7.5, 47.0], [9, 50], 
		[11.5, 52.0], [14, 54], [17.5, 55.0], 
		[21, 56], [25, 56], [29, 56], 
		[33.0, 55.5], [37, 55], [41, 54], 
		[42, 54], [42.0, 53.5], [42, 53], 
		[42, 52],[41.5, 50.5], ]);
}}}

module OpenDyslexicRegular_contour00x53_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([40.0, 47.0], [39, 47], [39, 47],steps,height);
	BezConic([39, 47], [35, 49], [32.0, 49.5],steps,height);
	BezConic([32.0, 49.5], [29, 50], [26, 50],steps,height);
	BezConic([26, 50], [20, 50], [17.0, 48.0],steps,height);
	BezConic([17.0, 48.0], [14, 46], [14, 41],steps,height);
	BezConic([14, 41], [14, 39], [14.5, 38.0],steps,height);
	BezConic([14.5, 38.0], [15, 37], [16.0, 36.0],steps,height);
	BezConic([16.0, 36.0], [17, 35], [19.0, 34.0],steps,height);
	BezConic([19.0, 34.0], [21, 33], [24, 33],steps,height);
	BezConic([24, -1], [22, -1], [20.0, -1.0],steps,height);
	BezConic([15.5, -0.5], [13, 0], [10.5, 0.5],steps,height);
	BezConic([8, 15], [10, 14], [12.0, 13.0],steps,height);
	BezConic([12.0, 13.0], [14, 12], [16.0, 11.5],steps,height);
	BezConic([16.0, 11.5], [18, 11], [20.5, 11.0],steps,height);
	BezConic([20.5, 11.0], [23, 11], [24, 11],steps,height);
	BezConic([24, 11], [28, 11], [30.0, 11.5],steps,height);
	BezConic([30.0, 11.5], [32, 12], [33.5, 13.0],steps,height);
	BezConic([33.5, 13.0], [35, 14], [35.5, 15.5],steps,height);
	BezConic([35.5, 15.5], [36, 17], [36, 17],steps,height);
	BezConic([36, 17], [36, 18], [35.5, 19.5],steps,height);
	BezConic([35.5, 19.5], [35, 21], [34.0, 21.5],steps,height);
	BezConic([34.0, 21.5], [33, 22], [31.0, 23.0],steps,height);
	BezConic([31.0, 23.0], [29, 24], [26, 25],steps,height);
	BezConic([42.0, 53.5], [42, 53], [42, 52],steps,height);
}
}

module OpenDyslexicRegular_contour00x53_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([41, 49], [41, 47], [40.0, 47.0],steps,height);
	BezConic([29, 32], [37, 30], [41.0, 26.0],steps,height);
	BezConic([41.0, 26.0], [45, 22], [45, 15],steps,height);
	BezConic([45, 15], [45, 7], [39.5, 3.0],steps,height);
	BezConic([39.5, 3.0], [34, -1], [24, -1],steps,height);
	BezConic([20.0, -1.0], [18, -1], [15.5, -0.5],steps,height);
	BezConic([10.5, 0.5], [8, 1], [6, 2],steps,height);
	BezConic([6, 2], [5, 3], [5, 4],steps,height);
	BezConic([5, 13], [6, 16], [8, 15],steps,height);
	BezConic([22, 25], [14, 27], [10.0, 30.5],steps,height);
	BezConic([10.0, 30.5], [6, 34], [6, 41],steps,height);
	BezConic([6, 41], [6, 44], [7.5, 47.0],steps,height);
	BezConic([7.5, 47.0], [9, 50], [11.5, 52.0],steps,height);
	BezConic([11.5, 52.0], [14, 54], [17.5, 55.0],steps,height);
	BezConic([17.5, 55.0], [21, 56], [25, 56],steps,height);
	BezConic([25, 56], [29, 56], [33.0, 55.5],steps,height);
	BezConic([33.0, 55.5], [37, 55], [41, 54],steps,height);
	BezConic([41, 54], [42, 54], [42.0, 53.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x53(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x53_skeleton(height);
			OpenDyslexicRegular_contour00x53_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x53_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x53(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x53(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x53=[[5, -1], [45, 56]];

module OpenDyslexicRegular_letter0x53(steps=2, height) {
	OpenDyslexicRegular_chunk10x53(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x54_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 53], [5, 55], [7, 55], 
		[28.0, 55.0], [49, 55], [51, 55], 
		[51, 53], [51.0, 52.0], [51, 51], 
		[51, 49], [49, 49], [41.5, 49.0], 
		[34, 49], [32, 50], [32, 48], 
		[33.0, 25.0], [34, 2], [34, 0], 
		[32, 0], [28.0, 0.0], [24, 0], 
		[22, 0], [22, 2], [23.0, 25.0], 
		[24, 48], [24, 50], [22, 49], 
		[14.5, 49.0], [7, 49], [5, 49], 
		[5, 51],[5.0, 52.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 53], [5, 55], [7, 55], 
		[28.0, 55.0], [49, 55], [51, 55], 
		[51, 53], [51.0, 52.0], [51, 51], 
		[51, 49], [49, 49], [41.5, 49.0], 
		[34, 49], [32, 50], [32, 48], 
		[33.0, 25.0], [34, 2], [34, 0], 
		[32, 0], [28.0, 0.0], [24, 0], 
		[22, 0], [22, 2], [23.0, 25.0], 
		[24, 48], [24, 50], [22, 49], 
		[14.5, 49.0], [7, 49], [5, 49], 
		[5, 51],[5.0, 52.0], ]);
}}}

module OpenDyslexicRegular_contour00x54_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([34, 49], [32, 50], [32, 48],steps,height);
	BezConic([24, 48], [24, 50], [22, 49],steps,height);
}
}

module OpenDyslexicRegular_contour00x54_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 53], [5, 55], [7, 55],steps,height);
	BezConic([49, 55], [51, 55], [51, 53],steps,height);
	BezConic([51, 51], [51, 49], [49, 49],steps,height);
	BezConic([34, 2], [34, 0], [32, 0],steps,height);
	BezConic([24, 0], [22, 0], [22, 2],steps,height);
	BezConic([7, 49], [5, 49], [5, 51],steps,height);
}
}

module OpenDyslexicRegular_contour00x54(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x54_skeleton(height);
			OpenDyslexicRegular_contour00x54_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x54_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x54(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x54(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x54=[[5, 0], [51, 55]];

module OpenDyslexicRegular_letter0x54(steps=2, height) {
	OpenDyslexicRegular_chunk10x54(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x55_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 53], [5, 55], [6, 55], 
		[8.5, 55.0], [11, 55], [13, 55], 
		[13, 53], [12.5, 40.0], [12, 27], 
		[12, 20], [15.5, 16.5], [19, 13], 
		[26, 13], [33, 13], [36.5, 16.5], 
		[40, 20], [40, 27], [40.0, 40.0], 
		[40, 53], [40, 55], [42, 55], 
		[44.0, 55.0], [46, 55], [48, 55], 
		[48, 53], [47.5, 37.0], [47, 21], 
		[47, -1], [26, -1], [16, -1], 
		[10.5, 4.5], [5, 10], [5, 21], 
		[5.0, 37.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 53], [5, 55], [6, 55], 
		[8.5, 55.0], [11, 55], [13, 55], 
		[13, 53], [12.5, 40.0], [12, 27], 
		[12, 20], [15.5, 16.5], [19, 13], 
		[26, 13], [33, 13], [36.5, 16.5], 
		[40, 20], [40, 27], [40.0, 40.0], 
		[40, 53], [40, 55], [42, 55], 
		[44.0, 55.0], [46, 55], [48, 55], 
		[48, 53], [47.5, 37.0], [47, 21], 
		[47, -1], [26, -1], [16, -1], 
		[10.5, 4.5], [5, 10], [5, 21], 
		[5.0, 37.0], ]);
}}}

module OpenDyslexicRegular_contour00x55_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, 27], [12, 20], [15.5, 16.5],steps,height);
	BezConic([15.5, 16.5], [19, 13], [26, 13],steps,height);
	BezConic([26, 13], [33, 13], [36.5, 16.5],steps,height);
	BezConic([36.5, 16.5], [40, 20], [40, 27],steps,height);
}
}

module OpenDyslexicRegular_contour00x55_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 53], [5, 55], [6, 55],steps,height);
	BezConic([11, 55], [13, 55], [13, 53],steps,height);
	BezConic([40, 53], [40, 55], [42, 55],steps,height);
	BezConic([46, 55], [48, 55], [48, 53],steps,height);
	BezConic([47, 21], [47, -1], [26, -1],steps,height);
	BezConic([26, -1], [16, -1], [10.5, 4.5],steps,height);
	BezConic([10.5, 4.5], [5, 10], [5, 21],steps,height);
}
}

module OpenDyslexicRegular_contour00x55(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x55_skeleton(height);
			OpenDyslexicRegular_contour00x55_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x55_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x55(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x55(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x55=[[5, -1], [48, 55]];

module OpenDyslexicRegular_letter0x55(steps=2, height) {
	OpenDyslexicRegular_chunk10x55(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x56_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[23, 0], [21, 0], [21, 2], 
		[13.0, 27.5], [5, 53], [4, 54], 
		[4.5, 54.5], [5, 55], [6, 55], 
		[8.0, 55.0], [10, 55], [12, 55], 
		[12, 54], [19.0, 35.5], [26, 17], 
		[27, 16], [27.5, 16.0], [28, 16], 
		[29, 17], [36.0, 35.5], [43, 54], 
		[43, 55], [45, 55], [47.0, 55.0], 
		[49, 55], [50, 55], [50.0, 54.5], 
		[50, 54], [50, 53], [42.0, 27.5], 
		[34, 2], [34, 0], [32, 0], 
		[27.5, 0.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[23, 0], [21, 0], [21, 2], 
		[13.0, 27.5], [5, 53], [4, 54], 
		[4.5, 54.5], [5, 55], [6, 55], 
		[8.0, 55.0], [10, 55], [12, 55], 
		[12, 54], [19.0, 35.5], [26, 17], 
		[27, 16], [27.5, 16.0], [28, 16], 
		[29, 17], [36.0, 35.5], [43, 54], 
		[43, 55], [45, 55], [47.0, 55.0], 
		[49, 55], [50, 55], [50.0, 54.5], 
		[50, 54], [50, 53], [42.0, 27.5], 
		[34, 2], [34, 0], [32, 0], 
		[27.5, 0.0], ]);
}}}

module OpenDyslexicRegular_contour00x56_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([26, 17], [27, 16], [27.5, 16.0],steps,height);
	BezConic([27.5, 16.0], [28, 16], [29, 17],steps,height);
	BezConic([50.0, 54.5], [50, 54], [50, 53],steps,height);
}
}

module OpenDyslexicRegular_contour00x56_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([23, 0], [21, 0], [21, 2],steps,height);
	BezConic([5, 53], [4, 54], [4.5, 54.5],steps,height);
	BezConic([4.5, 54.5], [5, 55], [6, 55],steps,height);
	BezConic([10, 55], [12, 55], [12, 54],steps,height);
	BezConic([43, 54], [43, 55], [45, 55],steps,height);
	BezConic([49, 55], [50, 55], [50.0, 54.5],steps,height);
	BezConic([34, 2], [34, 0], [32, 0],steps,height);
}
}

module OpenDyslexicRegular_contour00x56(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x56_skeleton(height);
			OpenDyslexicRegular_contour00x56_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x56_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x56(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x56(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x56=[[4, 0], [50, 55]];

module OpenDyslexicRegular_letter0x56(steps=2, height) {
	OpenDyslexicRegular_chunk10x56(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x57_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 53], [4, 54], [4.5, 54.5], 
		[5, 55], [6, 55], [8.0, 55.0], 
		[10, 55], [11, 55], [12, 53], 
		[18.0, 35.5], [24, 18], [25, 17], 
		[25.5, 17.0], [26, 17], [27, 18], 
		[31.0, 25.5], [35, 33], [36, 35], 
		[37, 35], [39.0, 35.0], [41, 35], 
		[42, 35], [43, 33], [46.5, 25.5], 
		[50, 18], [51, 17], [51.5, 17.0], 
		[52, 17], [53, 18], [60.0, 35.5], 
		[67, 53], [68, 55], [69, 55], 
		[71.0, 55.0], [73, 55], [73, 55], 
		[73.5, 54.5], [74, 54], [74, 53], 
		[66.5, 27.5], [59, 2], [58, 0], 
		[57, 0], [53.0, 0.0], [49, 0], 
		[47, 0], [47, 1], [43.5, 8.5], 
		[40, 16], [39, 19], [38, 16], 
		[34.5, 8.5], [31, 1], [30, 0], 
		[29, 0], [24.5, 0.0], [20, 0], 
		[19, 0], [18, 2], [11.5, 27.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 53], [4, 54], [4.5, 54.5], 
		[5, 55], [6, 55], [8.0, 55.0], 
		[10, 55], [11, 55], [12, 53], 
		[18.0, 35.5], [24, 18], [25, 17], 
		[25.5, 17.0], [26, 17], [27, 18], 
		[31.0, 25.5], [35, 33], [36, 35], 
		[37, 35], [39.0, 35.0], [41, 35], 
		[42, 35], [43, 33], [46.5, 25.5], 
		[50, 18], [51, 17], [51.5, 17.0], 
		[52, 17], [53, 18], [60.0, 35.5], 
		[67, 53], [68, 55], [69, 55], 
		[71.0, 55.0], [73, 55], [73, 55], 
		[73.5, 54.5], [74, 54], [74, 53], 
		[66.5, 27.5], [59, 2], [58, 0], 
		[57, 0], [53.0, 0.0], [49, 0], 
		[47, 0], [47, 1], [43.5, 8.5], 
		[40, 16], [39, 19], [38, 16], 
		[34.5, 8.5], [31, 1], [30, 0], 
		[29, 0], [24.5, 0.0], [20, 0], 
		[19, 0], [18, 2], [11.5, 27.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x57_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 18], [25, 17], [25.5, 17.0],steps,height);
	BezConic([25.5, 17.0], [26, 17], [27, 18],steps,height);
	BezConic([50, 18], [51, 17], [51.5, 17.0],steps,height);
	BezConic([51.5, 17.0], [52, 17], [53, 18],steps,height);
	BezConic([40, 16], [39, 19], [38, 16],steps,height);
}
}

module OpenDyslexicRegular_contour00x57_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 53], [4, 54], [4.5, 54.5],steps,height);
	BezConic([4.5, 54.5], [5, 55], [6, 55],steps,height);
	BezConic([10, 55], [11, 55], [12, 53],steps,height);
	BezConic([35, 33], [36, 35], [37, 35],steps,height);
	BezConic([41, 35], [42, 35], [43, 33],steps,height);
	BezConic([67, 53], [68, 55], [69, 55],steps,height);
	BezConic([73, 55], [73, 55], [73.5, 54.5],steps,height);
	BezConic([73.5, 54.5], [74, 54], [74, 53],steps,height);
	BezConic([59, 2], [58, 0], [57, 0],steps,height);
	BezConic([49, 0], [47, 0], [47, 1],steps,height);
	BezConic([31, 1], [30, 0], [29, 0],steps,height);
	BezConic([20, 0], [19, 0], [18, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x57(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x57_skeleton(height);
			OpenDyslexicRegular_contour00x57_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x57_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x57(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x57(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x57=[[4, 0], [74, 55]];

module OpenDyslexicRegular_letter0x57(steps=2, height) {
	OpenDyslexicRegular_chunk10x57(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x58_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[8, 53], [7, 54], [7.5, 54.5], 
		[8, 55], [9, 55], [11.0, 55.0], 
		[13, 55], [15, 55], [16, 54], 
		[21.5, 44.0], [27, 34], [28, 33], 
		[28.5, 33.0], [29, 33], [30, 34], 
		[35.5, 44.0], [41, 54], [42, 55], 
		[44, 55], [46.0, 55.0], [48, 55], 
		[49, 55], [49.0, 54.5], [49, 54], 
		[49, 53], [41.5, 40.0], [34, 27], 
		[34, 26], [34.0, 25.5], [34, 25], 
		[34, 24], [42.5, 13.0], [51, 2], 
		[51, 1], [51.0, 0.5], [51, 0], 
		[49, 0], [45.0, 0.0], [41, 0], 
		[39, 0], [39, 1], [34.0, 9.0], 
		[29, 17], [29, 18], [28.0, 18.0], 
		[27, 18], [27, 17], [22.0, 9.0], 
		[17, 1], [16, 0], [15, 0], 
		[10.5, 0.0], [6, 0], [5, 0], 
		[4.5, 0.5], [4, 1], [5, 2], 
		[13.5, 13.0], [22, 24], [23, 26], 
		[22, 27],[15.0, 40.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[8, 53], [7, 54], [7.5, 54.5], 
		[8, 55], [9, 55], [11.0, 55.0], 
		[13, 55], [15, 55], [16, 54], 
		[21.5, 44.0], [27, 34], [28, 33], 
		[28.5, 33.0], [29, 33], [30, 34], 
		[35.5, 44.0], [41, 54], [42, 55], 
		[44, 55], [46.0, 55.0], [48, 55], 
		[49, 55], [49.0, 54.5], [49, 54], 
		[49, 53], [41.5, 40.0], [34, 27], 
		[34, 26], [34.0, 25.5], [34, 25], 
		[34, 24], [42.5, 13.0], [51, 2], 
		[51, 1], [51.0, 0.5], [51, 0], 
		[49, 0], [45.0, 0.0], [41, 0], 
		[39, 0], [39, 1], [34.0, 9.0], 
		[29, 17], [29, 18], [28.0, 18.0], 
		[27, 18], [27, 17], [22.0, 9.0], 
		[17, 1], [16, 0], [15, 0], 
		[10.5, 0.0], [6, 0], [5, 0], 
		[4.5, 0.5], [4, 1], [5, 2], 
		[13.5, 13.0], [22, 24], [23, 26], 
		[22, 27],[15.0, 40.0], ]);
}}}

module OpenDyslexicRegular_contour00x58_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([27, 34], [28, 33], [28.5, 33.0],steps,height);
	BezConic([28.5, 33.0], [29, 33], [30, 34],steps,height);
	BezConic([49.0, 54.5], [49, 54], [49, 53],steps,height);
	BezConic([34, 27], [34, 26], [34.0, 25.5],steps,height);
	BezConic([34.0, 25.5], [34, 25], [34, 24],steps,height);
	BezConic([51, 2], [51, 1], [51.0, 0.5],steps,height);
	BezConic([29, 17], [29, 18], [28.0, 18.0],steps,height);
	BezConic([28.0, 18.0], [27, 18], [27, 17],steps,height);
	BezConic([22, 24], [23, 26], [22, 27],steps,height);
}
}

module OpenDyslexicRegular_contour00x58_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([8, 53], [7, 54], [7.5, 54.5],steps,height);
	BezConic([7.5, 54.5], [8, 55], [9, 55],steps,height);
	BezConic([13, 55], [15, 55], [16, 54],steps,height);
	BezConic([41, 54], [42, 55], [44, 55],steps,height);
	BezConic([48, 55], [49, 55], [49.0, 54.5],steps,height);
	BezConic([51.0, 0.5], [51, 0], [49, 0],steps,height);
	BezConic([41, 0], [39, 0], [39, 1],steps,height);
	BezConic([17, 1], [16, 0], [15, 0],steps,height);
	BezConic([6, 0], [5, 0], [4.5, 0.5],steps,height);
	BezConic([4.5, 0.5], [4, 1], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x58(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x58_skeleton(height);
			OpenDyslexicRegular_contour00x58_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x58_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x58(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x58(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x58=[[4, 0], [51, 55]];

module OpenDyslexicRegular_letter0x58(steps=2, height) {
	OpenDyslexicRegular_chunk10x58(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x59_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 53], [4, 54], [4.5, 54.5], 
		[5, 55], [6, 55], [8.0, 55.0], 
		[10, 55], [12, 55], [13, 54], 
		[19.5, 41.5], [26, 29], [26, 28], 
		[27.0, 28.0], [28, 28], [28, 29], 
		[35.0, 41.5], [42, 54], [42, 55], 
		[44, 55], [46.0, 55.0], [48, 55], 
		[49, 55], [49.5, 54.5], [50, 54], 
		[49, 53], [41.0, 36.5], [33, 20], 
		[32, 19], [32.0, 18.5], [32, 18], 
		[32, 18], [32.5, 10.0], [33, 2], 
		[34, 1], [33.0, 0.5], [32, 0], 
		[32, 0], [27.0, 0.0], [22, 0], 
		[21, 0], [20.5, 0.5], [20, 1], 
		[20, 2], [21.0, 10.0], [22, 18], 
		[22, 18], [22.0, 18.5], [22, 19], 
		[21, 20],[13.0, 36.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 53], [4, 54], [4.5, 54.5], 
		[5, 55], [6, 55], [8.0, 55.0], 
		[10, 55], [12, 55], [13, 54], 
		[19.5, 41.5], [26, 29], [26, 28], 
		[27.0, 28.0], [28, 28], [28, 29], 
		[35.0, 41.5], [42, 54], [42, 55], 
		[44, 55], [46.0, 55.0], [48, 55], 
		[49, 55], [49.5, 54.5], [50, 54], 
		[49, 53], [41.0, 36.5], [33, 20], 
		[32, 19], [32.0, 18.5], [32, 18], 
		[32, 18], [32.5, 10.0], [33, 2], 
		[34, 1], [33.0, 0.5], [32, 0], 
		[32, 0], [27.0, 0.0], [22, 0], 
		[21, 0], [20.5, 0.5], [20, 1], 
		[20, 2], [21.0, 10.0], [22, 18], 
		[22, 18], [22.0, 18.5], [22, 19], 
		[21, 20],[13.0, 36.5], ]);
}}}

module OpenDyslexicRegular_contour00x59_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([26, 29], [26, 28], [27.0, 28.0],steps,height);
	BezConic([27.0, 28.0], [28, 28], [28, 29],steps,height);
	BezConic([33, 20], [32, 19], [32.0, 18.5],steps,height);
	BezConic([32.0, 18.5], [32, 18], [32, 18],steps,height);
	BezConic([33.0, 0.5], [32, 0], [32, 0],steps,height);
	BezConic([22, 18], [22, 18], [22.0, 18.5],steps,height);
	BezConic([22.0, 18.5], [22, 19], [21, 20],steps,height);
}
}

module OpenDyslexicRegular_contour00x59_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 53], [4, 54], [4.5, 54.5],steps,height);
	BezConic([4.5, 54.5], [5, 55], [6, 55],steps,height);
	BezConic([10, 55], [12, 55], [13, 54],steps,height);
	BezConic([42, 54], [42, 55], [44, 55],steps,height);
	BezConic([48, 55], [49, 55], [49.5, 54.5],steps,height);
	BezConic([49.5, 54.5], [50, 54], [49, 53],steps,height);
	BezConic([33, 2], [34, 1], [33.0, 0.5],steps,height);
	BezConic([22, 0], [21, 0], [20.5, 0.5],steps,height);
	BezConic([20.5, 0.5], [20, 1], [20, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x59(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x59_skeleton(height);
			OpenDyslexicRegular_contour00x59_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x59_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x59(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x59(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x59=[[4, 0], [50, 55]];

module OpenDyslexicRegular_letter0x59(steps=2, height) {
	OpenDyslexicRegular_chunk10x59(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x5a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 53], [5, 55], [7, 55], 
		[28.0, 55.0], [49, 55], [51, 55], 
		[51, 53], [51.0, 52.0], [51, 51], 
		[51, 49], [50, 48], [35.5, 31.5], 
		[21, 15], [21, 14], [21.0, 13.5], 
		[21, 13], [22, 13], [35.0, 13.0], 
		[48, 13], [50, 13], [50, 11], 
		[50.0, 6.5], [50, 2], [50, 0], 
		[48, 0], [27.0, 0.0], [6, 0], 
		[5, 0], [5, 2], [5.0, 6.5], 
		[5, 11], [5, 12], [6, 13], 
		[21.5, 30.0], [37, 47], [38, 47], 
		[37.5, 48.0], [37, 49], [36, 49], 
		[21.5, 49.0], [7, 49], [5, 49], 
		[5, 51],[5.0, 52.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 53], [5, 55], [7, 55], 
		[28.0, 55.0], [49, 55], [51, 55], 
		[51, 53], [51.0, 52.0], [51, 51], 
		[51, 49], [50, 48], [35.5, 31.5], 
		[21, 15], [21, 14], [21.0, 13.5], 
		[21, 13], [22, 13], [35.0, 13.0], 
		[48, 13], [50, 13], [50, 11], 
		[50.0, 6.5], [50, 2], [50, 0], 
		[48, 0], [27.0, 0.0], [6, 0], 
		[5, 0], [5, 2], [5.0, 6.5], 
		[5, 11], [5, 12], [6, 13], 
		[21.5, 30.0], [37, 47], [38, 47], 
		[37.5, 48.0], [37, 49], [36, 49], 
		[21.5, 49.0], [7, 49], [5, 49], 
		[5, 51],[5.0, 52.0], ]);
}}}

module OpenDyslexicRegular_contour00x5a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21, 15], [21, 14], [21.0, 13.5],steps,height);
	BezConic([21.0, 13.5], [21, 13], [22, 13],steps,height);
	BezConic([37, 47], [38, 47], [37.5, 48.0],steps,height);
	BezConic([37.5, 48.0], [37, 49], [36, 49],steps,height);
}
}

module OpenDyslexicRegular_contour00x5a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 53], [5, 55], [7, 55],steps,height);
	BezConic([49, 55], [51, 55], [51, 53],steps,height);
	BezConic([51, 51], [51, 49], [50, 48],steps,height);
	BezConic([48, 13], [50, 13], [50, 11],steps,height);
	BezConic([50, 2], [50, 0], [48, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
	BezConic([5, 11], [5, 12], [6, 13],steps,height);
	BezConic([7, 49], [5, 49], [5, 51],steps,height);
}
}

module OpenDyslexicRegular_contour00x5a(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x5a_skeleton(height);
			OpenDyslexicRegular_contour00x5a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x5a_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x5a(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x5a(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x5a=[[5, 0], [51, 55]];

module OpenDyslexicRegular_letter0x5a(steps=2, height) {
	OpenDyslexicRegular_chunk10x5a(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x5b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 61], [6, 62], [7, 62], 
		[13.5, 62.0], [20, 62], [22, 62], 
		[22, 61], [21.5, 59.5], [21, 58], 
		[21, 57], [20, 57], [17.0, 57.0], 
		[14, 57], [13, 57], [13, 56], 
		[12.5, 27.0], [12, -2], [12, -3], 
		[13, -3], [16.0, -3.0], [19, -3], 
		[20, -3], [20, -4], [20.0, -8.5], 
		[20, -13], [20, -14], [19, -14], 
		[12.5, -13.5], [6, -13], [5, -13], 
		[5, -12],[5.5, 24.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 61], [6, 62], [7, 62], 
		[13.5, 62.0], [20, 62], [22, 62], 
		[22, 61], [21.5, 59.5], [21, 58], 
		[21, 57], [20, 57], [17.0, 57.0], 
		[14, 57], [13, 57], [13, 56], 
		[12.5, 27.0], [12, -2], [12, -3], 
		[13, -3], [16.0, -3.0], [19, -3], 
		[20, -3], [20, -4], [20.0, -8.5], 
		[20, -13], [20, -14], [19, -14], 
		[12.5, -13.5], [6, -13], [5, -13], 
		[5, -12],[5.5, 24.5], ]);
}}}

module OpenDyslexicRegular_contour00x5b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([14, 57], [13, 57], [13, 56],steps,height);
	BezConic([12, -2], [12, -3], [13, -3],steps,height);
}
}

module OpenDyslexicRegular_contour00x5b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 61], [6, 62], [7, 62],steps,height);
	BezConic([20, 62], [22, 62], [22, 61],steps,height);
	BezConic([21, 58], [21, 57], [20, 57],steps,height);
	BezConic([19, -3], [20, -3], [20, -4],steps,height);
	BezConic([20, -13], [20, -14], [19, -14],steps,height);
	BezConic([6, -13], [5, -13], [5, -12],steps,height);
}
}

module OpenDyslexicRegular_contour00x5b(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x5b_skeleton(height);
			OpenDyslexicRegular_contour00x5b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x5b_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x5b(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x5b(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x5b=[[5, -14], [22, 62]];

module OpenDyslexicRegular_letter0x5b(steps=2, height) {
	OpenDyslexicRegular_chunk10x5b(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x5c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[35, -4], [36, -6], [34, -6], 
		[32.0, -6.0], [30, -6], [28, -6], 
		[28, -5], [16.5, 24.5], [5, 54], 
		[4, 55], [4.5, 55.0], [5, 55], 
		[6, 56], [7.0, 56.0], [8, 56], 
		[9, 56], [9, 54], [22.0, 25.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[35, -4], [36, -6], [34, -6], 
		[32.0, -6.0], [30, -6], [28, -6], 
		[28, -5], [16.5, 24.5], [5, 54], 
		[4, 55], [4.5, 55.0], [5, 55], 
		[6, 56], [7.0, 56.0], [8, 56], 
		[9, 56], [9, 54], [22.0, 25.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x5c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4.5, 55.0], [5, 55], [6, 56],steps,height);
}
}

module OpenDyslexicRegular_contour00x5c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([35, -4], [36, -6], [34, -6],steps,height);
	BezConic([30, -6], [28, -6], [28, -5],steps,height);
	BezConic([5, 54], [4, 55], [4.5, 55.0],steps,height);
	BezConic([8, 56], [9, 56], [9, 54],steps,height);
}
}

module OpenDyslexicRegular_contour00x5c(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x5c_skeleton(height);
			OpenDyslexicRegular_contour00x5c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x5c_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x5c(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x5c(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x5c=[[4, -6], [36, 56]];

module OpenDyslexicRegular_letter0x5c(steps=2, height) {
	OpenDyslexicRegular_chunk10x5c(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x5d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[22, -12], [22, -13], [20, -13], 
		[13.5, -13.5], [7, -14], [6, -14], 
		[6, -13], [6.0, -8.5], [6, -4], 
		[6, -3], [7, -3], [10.0, -3.0], 
		[13, -3], [14, -3], [14, -2], 
		[14.0, 27.0], [14, 56], [14, 57], 
		[12, 57], [9.0, 57.0], [6, 57], 
		[5, 57], [5, 58], [5.0, 59.5], 
		[5, 61], [5, 62], [6, 62], 
		[12.5, 62.0], [19, 62], [20, 62], 
		[20, 61],[21.0, 24.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[22, -12], [22, -13], [20, -13], 
		[13.5, -13.5], [7, -14], [6, -14], 
		[6, -13], [6.0, -8.5], [6, -4], 
		[6, -3], [7, -3], [10.0, -3.0], 
		[13, -3], [14, -3], [14, -2], 
		[14.0, 27.0], [14, 56], [14, 57], 
		[12, 57], [9.0, 57.0], [6, 57], 
		[5, 57], [5, 58], [5.0, 59.5], 
		[5, 61], [5, 62], [6, 62], 
		[12.5, 62.0], [19, 62], [20, 62], 
		[20, 61],[21.0, 24.5], ]);
}}}

module OpenDyslexicRegular_contour00x5d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([13, -3], [14, -3], [14, -2],steps,height);
	BezConic([14, 56], [14, 57], [12, 57],steps,height);
}
}

module OpenDyslexicRegular_contour00x5d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([22, -12], [22, -13], [20, -13],steps,height);
	BezConic([7, -14], [6, -14], [6, -13],steps,height);
	BezConic([6, -4], [6, -3], [7, -3],steps,height);
	BezConic([6, 57], [5, 57], [5, 58],steps,height);
	BezConic([5, 61], [5, 62], [6, 62],steps,height);
	BezConic([19, 62], [20, 62], [20, 61],steps,height);
}
}

module OpenDyslexicRegular_contour00x5d(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x5d_skeleton(height);
			OpenDyslexicRegular_contour00x5d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x5d_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x5d(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x5d(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x5d=[[5, -14], [22, 62]];

module OpenDyslexicRegular_letter0x5d(steps=2, height) {
	OpenDyslexicRegular_chunk10x5d(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x5e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[26, 47], [26, 47], [27, 46], 
		[35.0, 38.0], [43, 30], [43, 30], 
		[43.0, 29.5], [43, 29], [42, 29], 
		[38.5, 29.0], [35, 29], [34, 29], 
		[34, 30], [29.5, 36.0], [25, 42], 
		[24, 43], [23, 42], [18.5, 36.0], 
		[14, 30], [14, 29], [13, 29], 
		[9.5, 29.0], [6, 29], [5, 29], 
		[5.0, 29.5], [5, 30], [5, 30], 
		[13.0, 38.0], [21, 46], [21, 47], 
		[22, 47],[24.0, 47.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[26, 47], [26, 47], [27, 46], 
		[35.0, 38.0], [43, 30], [43, 30], 
		[43.0, 29.5], [43, 29], [42, 29], 
		[38.5, 29.0], [35, 29], [34, 29], 
		[34, 30], [29.5, 36.0], [25, 42], 
		[24, 43], [23, 42], [18.5, 36.0], 
		[14, 30], [14, 29], [13, 29], 
		[9.5, 29.0], [6, 29], [5, 29], 
		[5.0, 29.5], [5, 30], [5, 30], 
		[13.0, 38.0], [21, 46], [21, 47], 
		[22, 47],[24.0, 47.0], ]);
}}}

module OpenDyslexicRegular_contour00x5e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 42], [24, 43], [23, 42],steps,height);
	BezConic([5.0, 29.5], [5, 30], [5, 30],steps,height);
}
}

module OpenDyslexicRegular_contour00x5e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([26, 47], [26, 47], [27, 46],steps,height);
	BezConic([43, 30], [43, 30], [43.0, 29.5],steps,height);
	BezConic([43.0, 29.5], [43, 29], [42, 29],steps,height);
	BezConic([35, 29], [34, 29], [34, 30],steps,height);
	BezConic([14, 30], [14, 29], [13, 29],steps,height);
	BezConic([6, 29], [5, 29], [5.0, 29.5],steps,height);
	BezConic([21, 46], [21, 47], [22, 47],steps,height);
}
}

module OpenDyslexicRegular_contour00x5e(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x5e_skeleton(height);
			OpenDyslexicRegular_contour00x5e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x5e_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x5e(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x5e(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x5e=[[5, 29], [43, 47]];

module OpenDyslexicRegular_letter0x5e(steps=2, height) {
	OpenDyslexicRegular_chunk10x5e(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x5f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[37, -8], [38, -8], [38, -9], 
		[38.0, -11.0], [38, -13], [38, -14], 
		[37, -14], [21.5, -14.0], [6, -14], 
		[5, -14], [5, -13], [5.0, -11.0], 
		[5, -9], [5, -8], [6, -8], 
		[21.5, -8.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[37, -8], [38, -8], [38, -9], 
		[38.0, -11.0], [38, -13], [38, -14], 
		[37, -14], [21.5, -14.0], [6, -14], 
		[5, -14], [5, -13], [5.0, -11.0], 
		[5, -9], [5, -8], [6, -8], 
		[21.5, -8.0], ]);
}}}

module OpenDyslexicRegular_contour00x5f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x5f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([37, -8], [38, -8], [38, -9],steps,height);
	BezConic([38, -13], [38, -14], [37, -14],steps,height);
	BezConic([6, -14], [5, -14], [5, -13],steps,height);
	BezConic([5, -9], [5, -8], [6, -8],steps,height);
}
}

module OpenDyslexicRegular_contour00x5f(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x5f_skeleton(height);
			OpenDyslexicRegular_contour00x5f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x5f_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x5f(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x5f(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x5f=[[5, -14], [38, -8]];

module OpenDyslexicRegular_letter0x5f(steps=2, height) {
	OpenDyslexicRegular_chunk10x5f(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x60_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 54], [10, 54], [11, 53], 
		[14.5, 48.0], [18, 43], [19, 42], 
		[18, 42], [14.5, 42.0], [11, 42], 
		[11, 42], [10, 43], [7.5, 48.0], 
		[5, 53], [5, 53], [5.0, 53.5], 
		[5, 54], [6, 54], [8.0, 54.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 54], [10, 54], [11, 53], 
		[14.5, 48.0], [18, 43], [19, 42], 
		[18, 42], [14.5, 42.0], [11, 42], 
		[11, 42], [10, 43], [7.5, 48.0], 
		[5, 53], [5, 53], [5.0, 53.5], 
		[5, 54], [6, 54], [8.0, 54.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x60_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([11, 42], [11, 42], [10, 43],steps,height);
	BezConic([5, 53], [5, 53], [5.0, 53.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x60_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([10, 54], [10, 54], [11, 53],steps,height);
	BezConic([18, 43], [19, 42], [18, 42],steps,height);
	BezConic([5.0, 53.5], [5, 54], [6, 54],steps,height);
}
}

module OpenDyslexicRegular_contour00x60(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x60_skeleton(height);
			OpenDyslexicRegular_contour00x60_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x60_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x60(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x60(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x60=[[5, 42], [19, 54]];

module OpenDyslexicRegular_letter0x60(steps=2, height) {
	OpenDyslexicRegular_chunk10x60(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x61_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[17, 8], [19, 8], [20.5, 8.0], 
		[22, 8], [23.0, 9.0], [24, 10], 
		[24.5, 12.0], [25, 14], [25, 16], 
		[25, 18], [24, 18], [22.0, 18.0], 
		[20, 18], [17, 18], [15.0, 17.5], 
		[13, 17], [12.0, 16.5], [11, 16], 
		[10.5, 15.0], [10, 14], [10, 13], 
		[9, 12], [9.5, 11.5], [10, 11], 
		[10, 11], [10, 10], [11.0, 9.5], 
		[12, 9], [12.5, 8.5], [13, 8], 
		[14.5, 8.0],[16, 8], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[17, 8], [19, 8], [20.5, 8.0], 
		[22, 8], [23.0, 9.0], [24, 10], 
		[24.5, 12.0], [25, 14], [25, 16], 
		[25, 18], [24, 18], [22.0, 18.0], 
		[20, 18], [17, 18], [15.0, 17.5], 
		[13, 17], [12.0, 16.5], [11, 16], 
		[10.5, 15.0], [10, 14], [10, 13], 
		[9, 12], [9.5, 11.5], [10, 11], 
		[10, 11], [10, 10], [11.0, 9.5], 
		[12, 9], [12.5, 8.5], [13, 8], 
		[14.5, 8.0],[16, 8], ]);
}}}

module OpenDyslexicRegular_contour00x61_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([17, 8], [19, 8], [20.5, 8.0],steps,height);
	BezConic([20.5, 8.0], [22, 8], [23.0, 9.0],steps,height);
	BezConic([23.0, 9.0], [24, 10], [24.5, 12.0],steps,height);
	BezConic([24.5, 12.0], [25, 14], [25, 16],steps,height);
	BezConic([25, 16], [25, 18], [24, 18],steps,height);
	BezConic([20, 18], [17, 18], [15.0, 17.5],steps,height);
	BezConic([15.0, 17.5], [13, 17], [12.0, 16.5],steps,height);
	BezConic([12.0, 16.5], [11, 16], [10.5, 15.0],steps,height);
	BezConic([10.5, 15.0], [10, 14], [10, 13],steps,height);
	BezConic([10, 13], [9, 12], [9.5, 11.5],steps,height);
	BezConic([9.5, 11.5], [10, 11], [10, 11],steps,height);
	BezConic([10, 11], [10, 10], [11.0, 9.5],steps,height);
	BezConic([12.5, 8.5], [13, 8], [14.5, 8.0],steps,height);
	BezConic([14.5, 8.0], [16, 8], [17, 8],steps,height);
}
}

module OpenDyslexicRegular_contour00x61_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([11.0, 9.5], [12, 9], [12.5, 8.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x61(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x61_skeleton(height);
			OpenDyslexicRegular_contour00x61_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x61_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x61_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 36], [34, 36], [34, 20], 
		[34.0, 11.0], [34, 2], [34, 0], 
		[33, 0], [31.5, 0.0], [30, 0], 
		[28, 0], [28, 2], [28.0, 2.0], 
		[28, 2], [28, 3], [28.0, 3.5], 
		[28, 4], [27, 3], [25, 1], 
		[22.5, 0.0], [20, -1], [16, -1], 
		[14, -1], [11.5, 0.0], [9, 1], 
		[7.5, 2.5], [6, 4], [5.5, 6.0], 
		[5, 8], [5, 10], [5, 22], 
		[20, 22], [23.5, 22.0], [27, 22], 
		[28, 22], [28, 23], [28, 27], 
		[26.0, 29.0], [24, 31], [19, 32], 
		[16, 32], [13.5, 31.5], [11, 31], 
		[9, 30], [8, 29], [7.5, 29.5], 
		[7, 30], [7, 31], [7.0, 31.5], 
		[7, 32], [7, 33], [9, 34], 
		[14, 36], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 36], [34, 36], [34, 20], 
		[34.0, 11.0], [34, 2], [34, 0], 
		[33, 0], [31.5, 0.0], [30, 0], 
		[28, 0], [28, 2], [28.0, 2.0], 
		[28, 2], [28, 3], [28.0, 3.5], 
		[28, 4], [27, 3], [25, 1], 
		[22.5, 0.0], [20, -1], [16, -1], 
		[14, -1], [11.5, 0.0], [9, 1], 
		[7.5, 2.5], [6, 4], [5.5, 6.0], 
		[5, 8], [5, 10], [5, 22], 
		[20, 22], [23.5, 22.0], [27, 22], 
		[28, 22], [28, 23], [28, 27], 
		[26.0, 29.0], [24, 31], [19, 32], 
		[16, 32], [13.5, 31.5], [11, 31], 
		[9, 30], [8, 29], [7.5, 29.5], 
		[7, 30], [7, 31], [7.0, 31.5], 
		[7, 32], [7, 33], [9, 34], 
		[14, 36], ]);
}}}

module OpenDyslexicRegular_contour10x61_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([28, 2], [28, 3], [28.0, 3.5],steps,height);
	BezConic([28.0, 3.5], [28, 4], [27, 3],steps,height);
	BezConic([27, 22], [28, 22], [28, 23],steps,height);
	BezConic([28, 23], [28, 27], [26.0, 29.0],steps,height);
	BezConic([26.0, 29.0], [24, 31], [19, 32],steps,height);
	BezConic([19, 32], [16, 32], [13.5, 31.5],steps,height);
	BezConic([13.5, 31.5], [11, 31], [9, 30],steps,height);
}
}

module OpenDyslexicRegular_contour10x61_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([19, 36], [34, 36], [34, 20],steps,height);
	BezConic([34, 2], [34, 0], [33, 0],steps,height);
	BezConic([30, 0], [28, 0], [28, 2],steps,height);
	BezConic([27, 3], [25, 1], [22.5, 0.0],steps,height);
	BezConic([22.5, 0.0], [20, -1], [16, -1],steps,height);
	BezConic([16, -1], [14, -1], [11.5, 0.0],steps,height);
	BezConic([11.5, 0.0], [9, 1], [7.5, 2.5],steps,height);
	BezConic([7.5, 2.5], [6, 4], [5.5, 6.0],steps,height);
	BezConic([5.5, 6.0], [5, 8], [5, 10],steps,height);
	BezConic([5, 10], [5, 22], [20, 22],steps,height);
	BezConic([9, 30], [8, 29], [7.5, 29.5],steps,height);
	BezConic([7.5, 29.5], [7, 30], [7, 31],steps,height);
	BezConic([7, 32], [7, 33], [9, 34],steps,height);
	BezConic([9, 34], [14, 36], [19, 36],steps,height);
}
}

module OpenDyslexicRegular_contour10x61(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x61_skeleton(height);
			OpenDyslexicRegular_contour10x61_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x61_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x61(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x61(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x61(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x61(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x61=[[5, -1], [34, 36]];

module OpenDyslexicRegular_letter0x61(steps=2, height) {
	OpenDyslexicRegular_chunk00x61(steps, height);
	OpenDyslexicRegular_chunk10x61(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x62_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[22, 9], [24, 9], [26.0, 10.0], 
		[28, 11], [29.0, 12.5], [30, 14], 
		[30.5, 15.5], [31, 17], [31, 19], 
		[31, 25], [28.5, 28.0], [26, 31], 
		[22, 31], [17, 31], [14.5, 27.5], 
		[12, 24], [12, 18], [12, 15], 
		[12.5, 13.5], [13, 12], [14.0, 11.0], 
		[15, 10], [16.5, 9.5], [18, 9], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[22, 9], [24, 9], [26.0, 10.0], 
		[28, 11], [29.0, 12.5], [30, 14], 
		[30.5, 15.5], [31, 17], [31, 19], 
		[31, 25], [28.5, 28.0], [26, 31], 
		[22, 31], [17, 31], [14.5, 27.5], 
		[12, 24], [12, 18], [12, 15], 
		[12.5, 13.5], [13, 12], [14.0, 11.0], 
		[15, 10], [16.5, 9.5], [18, 9], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x62_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([22, 9], [24, 9], [26.0, 10.0],steps,height);
	BezConic([26.0, 10.0], [28, 11], [29.0, 12.5],steps,height);
	BezConic([29.0, 12.5], [30, 14], [30.5, 15.5],steps,height);
	BezConic([30.5, 15.5], [31, 17], [31, 19],steps,height);
	BezConic([31, 19], [31, 25], [28.5, 28.0],steps,height);
	BezConic([28.5, 28.0], [26, 31], [22, 31],steps,height);
	BezConic([22, 31], [17, 31], [14.5, 27.5],steps,height);
	BezConic([14.5, 27.5], [12, 24], [12, 18],steps,height);
	BezConic([12, 18], [12, 15], [12.5, 13.5],steps,height);
	BezConic([12.5, 13.5], [13, 12], [14.0, 11.0],steps,height);
	BezConic([14.0, 11.0], [15, 10], [16.5, 9.5],steps,height);
	BezConic([16.5, 9.5], [18, 9], [22, 9],steps,height);
}
}

module OpenDyslexicRegular_contour00x62_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x62(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x62_skeleton(height);
			OpenDyslexicRegular_contour00x62_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x62_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x62_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 6], [7, 7], [6.5, 9.5], 
		[6, 12], [6.0, 15.5], [6, 19], 
		[5.5, 23.5], [5, 28], [5.0, 33.0], 
		[5, 38], [4.5, 43.0], [4, 48], 
		[4, 53], [4, 55], [6, 55], 
		[7.5, 55.0], [9, 55], [10, 55], 
		[10, 53], [10.0, 43.0], [10, 33], 
		[10, 31], [11, 33], [13, 34], 
		[15.5, 35.0], [18, 36], [21, 36], 
		[24, 36], [26.5, 34.5], [29, 33], 
		[31.0, 30.5], [33, 28], [34.0, 25.0], 
		[35, 22], [35, 17], [35, 13], 
		[34.0, 10.0], [33, 7], [31.0, 4.5], 
		[29, 2], [26.5, 0.5], [24, -1], 
		[21, -1], [17, -1], [15.0, -0.5], 
		[13, 0], [11.5, 1.0], [10, 2], 
		[9.0, 3.5],[8, 5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 6], [7, 7], [6.5, 9.5], 
		[6, 12], [6.0, 15.5], [6, 19], 
		[5.5, 23.5], [5, 28], [5.0, 33.0], 
		[5, 38], [4.5, 43.0], [4, 48], 
		[4, 53], [4, 55], [6, 55], 
		[7.5, 55.0], [9, 55], [10, 55], 
		[10, 53], [10.0, 43.0], [10, 33], 
		[10, 31], [11, 33], [13, 34], 
		[15.5, 35.0], [18, 36], [21, 36], 
		[24, 36], [26.5, 34.5], [29, 33], 
		[31.0, 30.5], [33, 28], [34.0, 25.0], 
		[35, 22], [35, 17], [35, 13], 
		[34.0, 10.0], [33, 7], [31.0, 4.5], 
		[29, 2], [26.5, 0.5], [24, -1], 
		[21, -1], [17, -1], [15.0, -0.5], 
		[13, 0], [11.5, 1.0], [10, 2], 
		[9.0, 3.5],[8, 5], ]);
}}}

module OpenDyslexicRegular_contour10x62_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, 6], [7, 7], [6.5, 9.5],steps,height);
	BezConic([6.0, 15.5], [6, 19], [5.5, 23.5],steps,height);
	BezConic([5.0, 33.0], [5, 38], [4.5, 43.0],steps,height);
	BezConic([10, 33], [10, 31], [11, 33],steps,height);
	BezConic([9.0, 3.5], [8, 5], [7, 6],steps,height);
}
}

module OpenDyslexicRegular_contour10x62_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6.5, 9.5], [6, 12], [6.0, 15.5],steps,height);
	BezConic([5.5, 23.5], [5, 28], [5.0, 33.0],steps,height);
	BezConic([4.5, 43.0], [4, 48], [4, 53],steps,height);
	BezConic([4, 53], [4, 55], [6, 55],steps,height);
	BezConic([9, 55], [10, 55], [10, 53],steps,height);
	BezConic([11, 33], [13, 34], [15.5, 35.0],steps,height);
	BezConic([15.5, 35.0], [18, 36], [21, 36],steps,height);
	BezConic([21, 36], [24, 36], [26.5, 34.5],steps,height);
	BezConic([26.5, 34.5], [29, 33], [31.0, 30.5],steps,height);
	BezConic([31.0, 30.5], [33, 28], [34.0, 25.0],steps,height);
	BezConic([34.0, 25.0], [35, 22], [35, 17],steps,height);
	BezConic([35, 17], [35, 13], [34.0, 10.0],steps,height);
	BezConic([34.0, 10.0], [33, 7], [31.0, 4.5],steps,height);
	BezConic([31.0, 4.5], [29, 2], [26.5, 0.5],steps,height);
	BezConic([26.5, 0.5], [24, -1], [21, -1],steps,height);
	BezConic([21, -1], [17, -1], [15.0, -0.5],steps,height);
	BezConic([15.0, -0.5], [13, 0], [11.5, 1.0],steps,height);
	BezConic([11.5, 1.0], [10, 2], [9.0, 3.5],steps,height);
}
}

module OpenDyslexicRegular_contour10x62(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x62_skeleton(height);
			OpenDyslexicRegular_contour10x62_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x62_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x62(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x62(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x62(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x62(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x62=[[4, -1], [35, 55]];

module OpenDyslexicRegular_letter0x62(steps=2, height) {
	OpenDyslexicRegular_chunk00x62(steps, height);
	OpenDyslexicRegular_chunk10x62(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x63_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[32, 31], [32, 30], [31.5, 29.5], 
		[31, 29], [31, 30], [27, 31], 
		[23, 31], [17, 31], [14.0, 27.5], 
		[11, 24], [11, 17], [12, 13], 
		[14.5, 10.5], [17, 8], [22, 8], 
		[24, 8], [26.0, 8.5], [28, 9], 
		[30, 10], [32, 10], [32, 8], 
		[32.0, 5.5], [32, 3], [32, 1], 
		[31, 1], [27, -1], [22, -1], 
		[18, -1], [15.0, 0.5], [12, 2], 
		[9.5, 4.0], [7, 6], [6.0, 9.5], 
		[5, 13], [5, 17], [5, 22], 
		[6.0, 25.5], [7, 29], [9.5, 31.0], 
		[12, 33], [15.0, 34.5], [18, 36], 
		[22, 36], [27, 36], [31, 34], 
		[32, 34], [32, 32], [32.0, 31.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[32, 31], [32, 30], [31.5, 29.5], 
		[31, 29], [31, 30], [27, 31], 
		[23, 31], [17, 31], [14.0, 27.5], 
		[11, 24], [11, 17], [12, 13], 
		[14.5, 10.5], [17, 8], [22, 8], 
		[24, 8], [26.0, 8.5], [28, 9], 
		[30, 10], [32, 10], [32, 8], 
		[32.0, 5.5], [32, 3], [32, 1], 
		[31, 1], [27, -1], [22, -1], 
		[18, -1], [15.0, 0.5], [12, 2], 
		[9.5, 4.0], [7, 6], [6.0, 9.5], 
		[5, 13], [5, 17], [5, 22], 
		[6.0, 25.5], [7, 29], [9.5, 31.0], 
		[12, 33], [15.0, 34.5], [18, 36], 
		[22, 36], [27, 36], [31, 34], 
		[32, 34], [32, 32], [32.0, 31.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x63_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([31, 30], [27, 31], [23, 31],steps,height);
	BezConic([23, 31], [17, 31], [14.0, 27.5],steps,height);
	BezConic([14.0, 27.5], [11, 24], [11, 17],steps,height);
	BezConic([11, 17], [12, 13], [14.5, 10.5],steps,height);
	BezConic([14.5, 10.5], [17, 8], [22, 8],steps,height);
	BezConic([22, 8], [24, 8], [26.0, 8.5],steps,height);
	BezConic([26.0, 8.5], [28, 9], [30, 10],steps,height);
}
}

module OpenDyslexicRegular_contour00x63_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([32, 31], [32, 30], [31.5, 29.5],steps,height);
	BezConic([31.5, 29.5], [31, 29], [31, 30],steps,height);
	BezConic([30, 10], [32, 10], [32, 8],steps,height);
	BezConic([32, 3], [32, 1], [31, 1],steps,height);
	BezConic([31, 1], [27, -1], [22, -1],steps,height);
	BezConic([22, -1], [18, -1], [15.0, 0.5],steps,height);
	BezConic([15.0, 0.5], [12, 2], [9.5, 4.0],steps,height);
	BezConic([9.5, 4.0], [7, 6], [6.0, 9.5],steps,height);
	BezConic([6.0, 9.5], [5, 13], [5, 17],steps,height);
	BezConic([5, 17], [5, 22], [6.0, 25.5],steps,height);
	BezConic([6.0, 25.5], [7, 29], [9.5, 31.0],steps,height);
	BezConic([9.5, 31.0], [12, 33], [15.0, 34.5],steps,height);
	BezConic([15.0, 34.5], [18, 36], [22, 36],steps,height);
	BezConic([22, 36], [27, 36], [31, 34],steps,height);
	BezConic([31, 34], [32, 34], [32, 32],steps,height);
}
}

module OpenDyslexicRegular_contour00x63(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x63_skeleton(height);
			OpenDyslexicRegular_contour00x63_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x63_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x63(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x63(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x63=[[5, -1], [32, 36]];

module OpenDyslexicRegular_letter0x63(steps=2, height) {
	OpenDyslexicRegular_chunk10x63(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x64_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 32], [14, 32], [11.5, 28.5], 
		[9, 25], [9, 19], [9, 19], 
		[9.0, 18.5], [9, 18], [9, 17], 
		[10, 13], [12.0, 11.5], [14, 10], 
		[18, 10], [21, 10], [22.5, 10.0], 
		[24, 10], [25.0, 11.0], [26, 12], 
		[27.0, 14.0], [28, 16], [28, 19], 
		[28, 25], [25.5, 28.5], [23, 32], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 32], [14, 32], [11.5, 28.5], 
		[9, 25], [9, 19], [9, 19], 
		[9.0, 18.5], [9, 18], [9, 17], 
		[10, 13], [12.0, 11.5], [14, 10], 
		[18, 10], [21, 10], [22.5, 10.0], 
		[24, 10], [25.0, 11.0], [26, 12], 
		[27.0, 14.0], [28, 16], [28, 19], 
		[28, 25], [25.5, 28.5], [23, 32], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x64_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([19, 32], [14, 32], [11.5, 28.5],steps,height);
	BezConic([11.5, 28.5], [9, 25], [9, 19],steps,height);
	BezConic([9.0, 18.5], [9, 18], [9, 17],steps,height);
	BezConic([9, 17], [10, 13], [12.0, 11.5],steps,height);
	BezConic([12.0, 11.5], [14, 10], [18, 10],steps,height);
	BezConic([18, 10], [21, 10], [22.5, 10.0],steps,height);
	BezConic([22.5, 10.0], [24, 10], [25.0, 11.0],steps,height);
	BezConic([25.0, 11.0], [26, 12], [27.0, 14.0],steps,height);
	BezConic([27.0, 14.0], [28, 16], [28, 19],steps,height);
	BezConic([28, 19], [28, 25], [25.5, 28.5],steps,height);
	BezConic([25.5, 28.5], [23, 32], [19, 32],steps,height);
}
}

module OpenDyslexicRegular_contour00x64_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([9, 19], [9, 19], [9.0, 18.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x64(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x64_skeleton(height);
			OpenDyslexicRegular_contour00x64_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x64_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x64_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[35, 55], [37, 55], [37, 53], 
		[36.5, 27.5], [36, 2], [36, 0], 
		[34, 0], [33.0, 0.0], [32, 0], 
		[30, 0], [30, 2], [30.0, 2.0], 
		[30, 2], [30, 4], [29.5, 4.0], 
		[29, 4], [29, 3], [25, -1], 
		[19, -1], [16, -1], [13.5, 0.5], 
		[11, 2], [9.0, 4.5], [7, 7], 
		[6.0, 10.0], [5, 13], [5, 17], 
		[5, 22], [6.0, 25.0], [7, 28], 
		[9.0, 30.5], [11, 33], [13.5, 34.5], 
		[16, 36], [19, 36], [22, 36], 
		[24.5, 35.0], [27, 34], [29, 32], 
		[29, 31], [29.5, 31.0], [30, 31], 
		[30, 32], [30.5, 43.0], [31, 54], 
		[31, 55], [32, 55], [33.5, 55.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[35, 55], [37, 55], [37, 53], 
		[36.5, 27.5], [36, 2], [36, 0], 
		[34, 0], [33.0, 0.0], [32, 0], 
		[30, 0], [30, 2], [30.0, 2.0], 
		[30, 2], [30, 4], [29.5, 4.0], 
		[29, 4], [29, 3], [25, -1], 
		[19, -1], [16, -1], [13.5, 0.5], 
		[11, 2], [9.0, 4.5], [7, 7], 
		[6.0, 10.0], [5, 13], [5, 17], 
		[5, 22], [6.0, 25.0], [7, 28], 
		[9.0, 30.5], [11, 33], [13.5, 34.5], 
		[16, 36], [19, 36], [22, 36], 
		[24.5, 35.0], [27, 34], [29, 32], 
		[29, 31], [29.5, 31.0], [30, 31], 
		[30, 32], [30.5, 43.0], [31, 54], 
		[31, 55], [32, 55], [33.5, 55.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour10x64_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([30, 2], [30, 4], [29.5, 4.0],steps,height);
	BezConic([29.5, 4.0], [29, 4], [29, 3],steps,height);
	BezConic([29, 32], [29, 31], [29.5, 31.0],steps,height);
	BezConic([29.5, 31.0], [30, 31], [30, 32],steps,height);
}
}

module OpenDyslexicRegular_contour10x64_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([35, 55], [37, 55], [37, 53],steps,height);
	BezConic([36, 2], [36, 0], [34, 0],steps,height);
	BezConic([32, 0], [30, 0], [30, 2],steps,height);
	BezConic([29, 3], [25, -1], [19, -1],steps,height);
	BezConic([19, -1], [16, -1], [13.5, 0.5],steps,height);
	BezConic([13.5, 0.5], [11, 2], [9.0, 4.5],steps,height);
	BezConic([9.0, 4.5], [7, 7], [6.0, 10.0],steps,height);
	BezConic([6.0, 10.0], [5, 13], [5, 17],steps,height);
	BezConic([5, 17], [5, 22], [6.0, 25.0],steps,height);
	BezConic([6.0, 25.0], [7, 28], [9.0, 30.5],steps,height);
	BezConic([9.0, 30.5], [11, 33], [13.5, 34.5],steps,height);
	BezConic([13.5, 34.5], [16, 36], [19, 36],steps,height);
	BezConic([19, 36], [22, 36], [24.5, 35.0],steps,height);
	BezConic([24.5, 35.0], [27, 34], [29, 32],steps,height);
	BezConic([31, 54], [31, 55], [32, 55],steps,height);
}
}

module OpenDyslexicRegular_contour10x64(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x64_skeleton(height);
			OpenDyslexicRegular_contour10x64_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x64_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x64(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x64(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x64(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x64(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x64=[[5, -1], [37, 55]];

module OpenDyslexicRegular_letter0x64(steps=2, height) {
	OpenDyslexicRegular_chunk00x64(steps, height);
	OpenDyslexicRegular_chunk10x64(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x65_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[30, 23], [31, 23], [31.0, 23.5], 
		[31, 24], [31, 25], [30, 28], 
		[27.5, 30.5], [25, 33], [21, 33], 
		[19, 33], [17.5, 32.0], [16, 31], 
		[14.5, 30.0], [13, 29], [12.0, 27.5], 
		[11, 26], [11, 25], [11, 23], 
		[13, 23],[21.5, 23.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[30, 23], [31, 23], [31.0, 23.5], 
		[31, 24], [31, 25], [30, 28], 
		[27.5, 30.5], [25, 33], [21, 33], 
		[19, 33], [17.5, 32.0], [16, 31], 
		[14.5, 30.0], [13, 29], [12.0, 27.5], 
		[11, 26], [11, 25], [11, 23], 
		[13, 23],[21.5, 23.0], ]);
}}}

module OpenDyslexicRegular_contour00x65_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([30, 23], [31, 23], [31.0, 23.5],steps,height);
	BezConic([31.0, 23.5], [31, 24], [31, 25],steps,height);
	BezConic([31, 25], [30, 28], [27.5, 30.5],steps,height);
	BezConic([27.5, 30.5], [25, 33], [21, 33],steps,height);
	BezConic([21, 33], [19, 33], [17.5, 32.0],steps,height);
	BezConic([17.5, 32.0], [16, 31], [14.5, 30.0],steps,height);
	BezConic([14.5, 30.0], [13, 29], [12.0, 27.5],steps,height);
	BezConic([12.0, 27.5], [11, 26], [11, 25],steps,height);
	BezConic([11, 25], [11, 23], [13, 23],steps,height);
}
}

module OpenDyslexicRegular_contour00x65_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x65(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x65_skeleton(height);
			OpenDyslexicRegular_contour00x65_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x65_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x65_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[36, 20], [36, 18], [34, 18], 
		[23.5, 18.0], [13, 18], [11, 18], 
		[11, 17], [11, 14], [11.5, 12.0], 
		[12, 10], [13.5, 9.5], [15, 9], 
		[17.0, 8.5], [19, 8], [22, 8], 
		[25, 8], [28.0, 8.0], [31, 8], 
		[33, 9], [34, 9], [34.5, 8.5], 
		[35, 8], [35, 7], [35.0, 5.0], 
		[35, 3], [35, 1], [34, 1], 
		[33, 0], [31.5, -0.5], [30, -1], 
		[28.5, -1.0], [27, -1], [25.5, -1.0], 
		[24, -1], [22, -1], [13, -1], 
		[9.0, 3.5], [5, 8], [5, 16], 
		[5, 21], [6.0, 24.5], [7, 28], 
		[9.0, 30.5], [11, 33], [14.0, 34.5], 
		[17, 36], [21, 36], [24, 36], 
		[26.5, 35.0], [29, 34], [31.0, 32.0], 
		[33, 30], [34.5, 27.0], [36, 24], 
		[36, 20],[36.0, 20.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[36, 20], [36, 18], [34, 18], 
		[23.5, 18.0], [13, 18], [11, 18], 
		[11, 17], [11, 14], [11.5, 12.0], 
		[12, 10], [13.5, 9.5], [15, 9], 
		[17.0, 8.5], [19, 8], [22, 8], 
		[25, 8], [28.0, 8.0], [31, 8], 
		[33, 9], [34, 9], [34.5, 8.5], 
		[35, 8], [35, 7], [35.0, 5.0], 
		[35, 3], [35, 1], [34, 1], 
		[33, 0], [31.5, -0.5], [30, -1], 
		[28.5, -1.0], [27, -1], [25.5, -1.0], 
		[24, -1], [22, -1], [13, -1], 
		[9.0, 3.5], [5, 8], [5, 16], 
		[5, 21], [6.0, 24.5], [7, 28], 
		[9.0, 30.5], [11, 33], [14.0, 34.5], 
		[17, 36], [21, 36], [24, 36], 
		[26.5, 35.0], [29, 34], [31.0, 32.0], 
		[33, 30], [34.5, 27.0], [36, 24], 
		[36, 20],[36.0, 20.0], ]);
}}}

module OpenDyslexicRegular_contour10x65_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([13, 18], [11, 18], [11, 17],steps,height);
	BezConic([11, 17], [11, 14], [11.5, 12.0],steps,height);
	BezConic([11.5, 12.0], [12, 10], [13.5, 9.5],steps,height);
	BezConic([13.5, 9.5], [15, 9], [17.0, 8.5],steps,height);
	BezConic([17.0, 8.5], [19, 8], [22, 8],steps,height);
	BezConic([22, 8], [25, 8], [28.0, 8.0],steps,height);
	BezConic([28.0, 8.0], [31, 8], [33, 9],steps,height);
	BezConic([28.5, -1.0], [27, -1], [25.5, -1.0],steps,height);
	BezConic([25.5, -1.0], [24, -1], [22, -1],steps,height);
}
}

module OpenDyslexicRegular_contour10x65_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([36, 20], [36, 18], [34, 18],steps,height);
	BezConic([33, 9], [34, 9], [34.5, 8.5],steps,height);
	BezConic([34.5, 8.5], [35, 8], [35, 7],steps,height);
	BezConic([35, 3], [35, 1], [34, 1],steps,height);
	BezConic([34, 1], [33, 0], [31.5, -0.5],steps,height);
	BezConic([31.5, -0.5], [30, -1], [28.5, -1.0],steps,height);
	BezConic([22, -1], [13, -1], [9.0, 3.5],steps,height);
	BezConic([9.0, 3.5], [5, 8], [5, 16],steps,height);
	BezConic([5, 16], [5, 21], [6.0, 24.5],steps,height);
	BezConic([6.0, 24.5], [7, 28], [9.0, 30.5],steps,height);
	BezConic([9.0, 30.5], [11, 33], [14.0, 34.5],steps,height);
	BezConic([14.0, 34.5], [17, 36], [21, 36],steps,height);
	BezConic([21, 36], [24, 36], [26.5, 35.0],steps,height);
	BezConic([26.5, 35.0], [29, 34], [31.0, 32.0],steps,height);
	BezConic([31.0, 32.0], [33, 30], [34.5, 27.0],steps,height);
	BezConic([34.5, 27.0], [36, 24], [36, 20],steps,height);
}
}

module OpenDyslexicRegular_contour10x65(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x65_skeleton(height);
			OpenDyslexicRegular_contour10x65_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x65_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x65(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x65(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x65(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x65(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x65=[[5, -1], [36, 36]];

module OpenDyslexicRegular_letter0x65(steps=2, height) {
	OpenDyslexicRegular_chunk00x65(steps, height);
	OpenDyslexicRegular_chunk10x65(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x66_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[28, 54], [30, 53], [30, 52], 
		[30.0, 51.0], [30, 50], [30, 49], 
		[28, 49], [26.5, 49.0], [25, 49], 
		[23, 49], [22.5, 49.0], [22, 49], 
		[21.5, 48.0], [21, 47], [20.5, 44.5], 
		[20, 42], [20, 38], [20.5, 37.0], 
		[21, 36], [21, 35], [22, 35], 
		[26.0, 35.0], [30, 35], [32, 35], 
		[32, 33], [32.0, 32.0], [32, 31], 
		[32, 29], [30, 29], [26.0, 29.0], 
		[22, 29], [21, 29], [21, 28], 
		[21.5, 15.0], [22, 2], [22, 0], 
		[20, 0], [17.0, 0.0], [14, 0], 
		[12, 0], [12, 2], [13.0, 15.0], 
		[14, 28], [14, 29], [13, 29], 
		[9.5, 29.0], [6, 29], [5, 29], 
		[5, 31], [5.0, 32.0], [5, 33], 
		[5, 35], [6, 35], [9.5, 35.0], 
		[13, 35], [14, 35], [15, 36], 
		[15.0, 36.5], [15, 37], [15, 43], 
		[15.5, 46.0], [16, 49], [17.5, 51.0], 
		[19, 53], [21.0, 53.5], [23, 54], 
		[25, 54],[26.5, 54.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[28, 54], [30, 53], [30, 52], 
		[30.0, 51.0], [30, 50], [30, 49], 
		[28, 49], [26.5, 49.0], [25, 49], 
		[23, 49], [22.5, 49.0], [22, 49], 
		[21.5, 48.0], [21, 47], [20.5, 44.5], 
		[20, 42], [20, 38], [20.5, 37.0], 
		[21, 36], [21, 35], [22, 35], 
		[26.0, 35.0], [30, 35], [32, 35], 
		[32, 33], [32.0, 32.0], [32, 31], 
		[32, 29], [30, 29], [26.0, 29.0], 
		[22, 29], [21, 29], [21, 28], 
		[21.5, 15.0], [22, 2], [22, 0], 
		[20, 0], [17.0, 0.0], [14, 0], 
		[12, 0], [12, 2], [13.0, 15.0], 
		[14, 28], [14, 29], [13, 29], 
		[9.5, 29.0], [6, 29], [5, 29], 
		[5, 31], [5.0, 32.0], [5, 33], 
		[5, 35], [6, 35], [9.5, 35.0], 
		[13, 35], [14, 35], [15, 36], 
		[15.0, 36.5], [15, 37], [15, 43], 
		[15.5, 46.0], [16, 49], [17.5, 51.0], 
		[19, 53], [21.0, 53.5], [23, 54], 
		[25, 54],[26.5, 54.0], ]);
}}}

module OpenDyslexicRegular_contour00x66_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 49], [23, 49], [22.5, 49.0],steps,height);
	BezConic([22.5, 49.0], [22, 49], [21.5, 48.0],steps,height);
	BezConic([21.5, 48.0], [21, 47], [20.5, 44.5],steps,height);
	BezConic([20.5, 44.5], [20, 42], [20, 38],steps,height);
	BezConic([21, 36], [21, 35], [22, 35],steps,height);
	BezConic([22, 29], [21, 29], [21, 28],steps,height);
	BezConic([14, 28], [14, 29], [13, 29],steps,height);
	BezConic([13, 35], [14, 35], [15, 36],steps,height);
}
}

module OpenDyslexicRegular_contour00x66_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([28, 54], [30, 53], [30, 52],steps,height);
	BezConic([30, 50], [30, 49], [28, 49],steps,height);
	BezConic([30, 35], [32, 35], [32, 33],steps,height);
	BezConic([32, 31], [32, 29], [30, 29],steps,height);
	BezConic([22, 2], [22, 0], [20, 0],steps,height);
	BezConic([14, 0], [12, 0], [12, 2],steps,height);
	BezConic([6, 29], [5, 29], [5, 31],steps,height);
	BezConic([5, 33], [5, 35], [6, 35],steps,height);
	BezConic([15, 37], [15, 43], [15.5, 46.0],steps,height);
	BezConic([15.5, 46.0], [16, 49], [17.5, 51.0],steps,height);
	BezConic([17.5, 51.0], [19, 53], [21.0, 53.5],steps,height);
	BezConic([21.0, 53.5], [23, 54], [25, 54],steps,height);
}
}

module OpenDyslexicRegular_contour00x66(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x66_skeleton(height);
			OpenDyslexicRegular_contour00x66_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x66_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x66(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x66(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x66=[[5, 0], [32, 54]];

module OpenDyslexicRegular_letter0x66(steps=2, height) {
	OpenDyslexicRegular_chunk10x66(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x67_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[28, 18], [28, 25], [25.5, 28.0], 
		[23, 31], [18, 31], [14, 31], 
		[11.5, 28.0], [9, 25], [9, 18], 
		[9, 15], [9.5, 13.5], [10, 12], 
		[11.0, 11.0], [12, 10], [13.5, 9.5], 
		[15, 9], [18, 9], [20, 9], 
		[22.0, 9.5], [24, 10], [25.0, 11.0], 
		[26, 12], [27.0, 13.5], [28, 15], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[28, 18], [28, 25], [25.5, 28.0], 
		[23, 31], [18, 31], [14, 31], 
		[11.5, 28.0], [9, 25], [9, 18], 
		[9, 15], [9.5, 13.5], [10, 12], 
		[11.0, 11.0], [12, 10], [13.5, 9.5], 
		[15, 9], [18, 9], [20, 9], 
		[22.0, 9.5], [24, 10], [25.0, 11.0], 
		[26, 12], [27.0, 13.5], [28, 15], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x67_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([28, 18], [28, 25], [25.5, 28.0],steps,height);
	BezConic([25.5, 28.0], [23, 31], [18, 31],steps,height);
	BezConic([18, 31], [14, 31], [11.5, 28.0],steps,height);
	BezConic([11.5, 28.0], [9, 25], [9, 18],steps,height);
	BezConic([9, 18], [9, 15], [9.5, 13.5],steps,height);
	BezConic([9.5, 13.5], [10, 12], [11.0, 11.0],steps,height);
	BezConic([11.0, 11.0], [12, 10], [13.5, 9.5],steps,height);
	BezConic([13.5, 9.5], [15, 9], [18, 9],steps,height);
	BezConic([18, 9], [20, 9], [22.0, 9.5],steps,height);
	BezConic([22.0, 9.5], [24, 10], [25.0, 11.0],steps,height);
	BezConic([25.0, 11.0], [26, 12], [27.0, 13.5],steps,height);
	BezConic([27.0, 13.5], [28, 15], [28, 18],steps,height);
}
}

module OpenDyslexicRegular_contour00x67_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x67(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x67_skeleton(height);
			OpenDyslexicRegular_contour00x67_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x67_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x67_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[36, 4], [35, -4], [34.0, -9.0], 
		[33, -14], [31.0, -17.0], [29, -20], 
		[26.0, -21.5], [23, -23], [19, -23], 
		[14, -23], [10, -21], [8, -21], 
		[8, -20], [8.0, -16.5], [8, -13], 
		[8, -12], [8.5, -11.5], [9, -11], 
		[10, -12], [12, -12], [14.0, -12.5], 
		[16, -13], [18, -13], [23, -13], 
		[25.5, -10.0], [28, -7], [29, 1], 
		[29, 2], [29.5, 2.5], [30, 3], 
		[29.5, 3.5], [29, 4], [29.0, 4.0], 
		[29, 4], [28, 3], [27, 2], 
		[24.5, 1.0], [22, 0], [19, 0], 
		[16, 0], [13.0, 1.5], [10, 3], 
		[8.5, 5.0], [7, 7], [6.0, 10.5], 
		[5, 14], [5, 18], [5, 22], 
		[6.0, 25.5], [7, 29], [8.5, 31.0], 
		[10, 33], [13.0, 34.5], [16, 36], 
		[19, 36], [25, 36], [29, 32], 
		[29, 31], [29.5, 31.0], [30, 31], 
		[31, 32], [31.0, 33.0], [31, 34], 
		[31, 35], [32, 35], [33.5, 35.0], 
		[35, 35], [37, 35], [37, 33], 
		[36.5, 18.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[36, 4], [35, -4], [34.0, -9.0], 
		[33, -14], [31.0, -17.0], [29, -20], 
		[26.0, -21.5], [23, -23], [19, -23], 
		[14, -23], [10, -21], [8, -21], 
		[8, -20], [8.0, -16.5], [8, -13], 
		[8, -12], [8.5, -11.5], [9, -11], 
		[10, -12], [12, -12], [14.0, -12.5], 
		[16, -13], [18, -13], [23, -13], 
		[25.5, -10.0], [28, -7], [29, 1], 
		[29, 2], [29.5, 2.5], [30, 3], 
		[29.5, 3.5], [29, 4], [29.0, 4.0], 
		[29, 4], [28, 3], [27, 2], 
		[24.5, 1.0], [22, 0], [19, 0], 
		[16, 0], [13.0, 1.5], [10, 3], 
		[8.5, 5.0], [7, 7], [6.0, 10.5], 
		[5, 14], [5, 18], [5, 22], 
		[6.0, 25.5], [7, 29], [8.5, 31.0], 
		[10, 33], [13.0, 34.5], [16, 36], 
		[19, 36], [25, 36], [29, 32], 
		[29, 31], [29.5, 31.0], [30, 31], 
		[31, 32], [31.0, 33.0], [31, 34], 
		[31, 35], [32, 35], [33.5, 35.0], 
		[35, 35], [37, 35], [37, 33], 
		[36.5, 18.5], ]);
}}}

module OpenDyslexicRegular_contour10x67_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([14.0, -12.5], [16, -13], [18, -13],steps,height);
	BezConic([18, -13], [23, -13], [25.5, -10.0],steps,height);
	BezConic([25.5, -10.0], [28, -7], [29, 1],steps,height);
	BezConic([29.5, 2.5], [30, 3], [29.5, 3.5],steps,height);
	BezConic([29.5, 3.5], [29, 4], [29.0, 4.0],steps,height);
	BezConic([29, 32], [29, 31], [29.5, 31.0],steps,height);
	BezConic([29.5, 31.0], [30, 31], [31, 32],steps,height);
}
}

module OpenDyslexicRegular_contour10x67_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([36, 4], [35, -4], [34.0, -9.0],steps,height);
	BezConic([34.0, -9.0], [33, -14], [31.0, -17.0],steps,height);
	BezConic([31.0, -17.0], [29, -20], [26.0, -21.5],steps,height);
	BezConic([26.0, -21.5], [23, -23], [19, -23],steps,height);
	BezConic([19, -23], [14, -23], [10, -21],steps,height);
	BezConic([10, -21], [8, -21], [8, -20],steps,height);
	BezConic([8, -13], [8, -12], [8.5, -11.5],steps,height);
	BezConic([8.5, -11.5], [9, -11], [10, -12],steps,height);
	BezConic([10, -12], [12, -12], [14.0, -12.5],steps,height);
	BezConic([29, 1], [29, 2], [29.5, 2.5],steps,height);
	BezConic([29.0, 4.0], [29, 4], [28, 3],steps,height);
	BezConic([28, 3], [27, 2], [24.5, 1.0],steps,height);
	BezConic([24.5, 1.0], [22, 0], [19, 0],steps,height);
	BezConic([19, 0], [16, 0], [13.0, 1.5],steps,height);
	BezConic([13.0, 1.5], [10, 3], [8.5, 5.0],steps,height);
	BezConic([8.5, 5.0], [7, 7], [6.0, 10.5],steps,height);
	BezConic([6.0, 10.5], [5, 14], [5, 18],steps,height);
	BezConic([5, 18], [5, 22], [6.0, 25.5],steps,height);
	BezConic([6.0, 25.5], [7, 29], [8.5, 31.0],steps,height);
	BezConic([8.5, 31.0], [10, 33], [13.0, 34.5],steps,height);
	BezConic([13.0, 34.5], [16, 36], [19, 36],steps,height);
	BezConic([19, 36], [25, 36], [29, 32],steps,height);
	BezConic([31, 34], [31, 35], [32, 35],steps,height);
	BezConic([35, 35], [37, 35], [37, 33],steps,height);
}
}

module OpenDyslexicRegular_contour10x67(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x67_skeleton(height);
			OpenDyslexicRegular_contour10x67_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x67_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x67(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x67(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x67(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x67(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x67=[[5, -23], [37, 36]];

module OpenDyslexicRegular_letter0x67(steps=2, height) {
	OpenDyslexicRegular_chunk00x67(steps, height);
	OpenDyslexicRegular_chunk10x67(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x68_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[36, 2], [36, 0], [35, 0], 
		[33.0, 0.0], [31, 0], [29, 0], 
		[29, 2], [29.5, 11.5], [30, 21], 
		[30, 24], [29.5, 26.0], [29, 28], 
		[28.0, 29.0], [27, 30], [25.5, 30.5], 
		[24, 31], [22, 31], [20, 31], 
		[18.0, 30.5], [16, 30], [15.0, 28.5], 
		[14, 27], [13.0, 24.5], [12, 22], 
		[12, 20], [12.5, 11.0], [13, 2], 
		[13, 0], [11, 0], [8.5, 0.0], 
		[6, 0], [5, 0], [5, 2], 
		[6.0, 28.0], [7, 54], [7, 55], 
		[9, 55], [10.0, 55.0], [11, 55], 
		[13, 55], [13, 53], [12.5, 42.5], 
		[12, 32], [12, 31], [12.5, 31.0], 
		[13, 31], [14, 32], [18, 36], 
		[24, 36], [30, 36], [33.0, 32.0], 
		[36, 28], [36, 21], [36.0, 11.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[36, 2], [36, 0], [35, 0], 
		[33.0, 0.0], [31, 0], [29, 0], 
		[29, 2], [29.5, 11.5], [30, 21], 
		[30, 24], [29.5, 26.0], [29, 28], 
		[28.0, 29.0], [27, 30], [25.5, 30.5], 
		[24, 31], [22, 31], [20, 31], 
		[18.0, 30.5], [16, 30], [15.0, 28.5], 
		[14, 27], [13.0, 24.5], [12, 22], 
		[12, 20], [12.5, 11.0], [13, 2], 
		[13, 0], [11, 0], [8.5, 0.0], 
		[6, 0], [5, 0], [5, 2], 
		[6.0, 28.0], [7, 54], [7, 55], 
		[9, 55], [10.0, 55.0], [11, 55], 
		[13, 55], [13, 53], [12.5, 42.5], 
		[12, 32], [12, 31], [12.5, 31.0], 
		[13, 31], [14, 32], [18, 36], 
		[24, 36], [30, 36], [33.0, 32.0], 
		[36, 28], [36, 21], [36.0, 11.5], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x68_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([30, 21], [30, 24], [29.5, 26.0],steps,height);
	BezConic([29.5, 26.0], [29, 28], [28.0, 29.0],steps,height);
	BezConic([28.0, 29.0], [27, 30], [25.5, 30.5],steps,height);
	BezConic([25.5, 30.5], [24, 31], [22, 31],steps,height);
	BezConic([22, 31], [20, 31], [18.0, 30.5],steps,height);
	BezConic([18.0, 30.5], [16, 30], [15.0, 28.5],steps,height);
	BezConic([15.0, 28.5], [14, 27], [13.0, 24.5],steps,height);
	BezConic([13.0, 24.5], [12, 22], [12, 20],steps,height);
	BezConic([12, 32], [12, 31], [12.5, 31.0],steps,height);
	BezConic([12.5, 31.0], [13, 31], [14, 32],steps,height);
}
}

module OpenDyslexicRegular_contour00x68_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([36, 2], [36, 0], [35, 0],steps,height);
	BezConic([31, 0], [29, 0], [29, 2],steps,height);
	BezConic([13, 2], [13, 0], [11, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
	BezConic([7, 54], [7, 55], [9, 55],steps,height);
	BezConic([11, 55], [13, 55], [13, 53],steps,height);
	BezConic([14, 32], [18, 36], [24, 36],steps,height);
	BezConic([24, 36], [30, 36], [33.0, 32.0],steps,height);
	BezConic([33.0, 32.0], [36, 28], [36, 21],steps,height);
}
}

module OpenDyslexicRegular_contour00x68(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x68_skeleton(height);
			OpenDyslexicRegular_contour00x68_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x68_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x68(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x68(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x68=[[5, 0], [36, 55]];

module OpenDyslexicRegular_letter0x68(steps=2, height) {
	OpenDyslexicRegular_chunk10x68(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x69_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 1], [5, 5], [5.5, 9.0], 
		[6, 13], [6.5, 16.5], [7, 20], 
		[7.0, 24.0], [7, 28], [7, 33], 
		[7, 34], [7.0, 34.5], [7, 35], 
		[8, 35], [9.5, 35.0], [11, 35], 
		[12, 35], [12.5, 34.5], [13, 34], 
		[12, 33], [12, 29], [12.0, 25.0], 
		[12, 21], [12.0, 17.0], [12, 13], 
		[12.5, 9.0], [13, 5], [14, 1], 
		[14, 1], [13.5, 0.5], [13, 0], 
		[12, 0], [9.0, 0.0], [6, 0], 
		[4, 0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 1], [5, 5], [5.5, 9.0], 
		[6, 13], [6.5, 16.5], [7, 20], 
		[7.0, 24.0], [7, 28], [7, 33], 
		[7, 34], [7.0, 34.5], [7, 35], 
		[8, 35], [9.5, 35.0], [11, 35], 
		[12, 35], [12.5, 34.5], [13, 34], 
		[12, 33], [12, 29], [12.0, 25.0], 
		[12, 21], [12.0, 17.0], [12, 13], 
		[12.5, 9.0], [13, 5], [14, 1], 
		[14, 1], [13.5, 0.5], [13, 0], 
		[12, 0], [9.0, 0.0], [6, 0], 
		[4, 0], ]);
}}}

module OpenDyslexicRegular_contour00x69_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6.5, 16.5], [7, 20], [7.0, 24.0],steps,height);
	BezConic([7.0, 24.0], [7, 28], [7, 33],steps,height);
	BezConic([7, 33], [7, 34], [7.0, 34.5],steps,height);
	BezConic([12, 33], [12, 29], [12.0, 25.0],steps,height);
	BezConic([12.0, 25.0], [12, 21], [12.0, 17.0],steps,height);
	BezConic([12.0, 17.0], [12, 13], [12.5, 9.0],steps,height);
	BezConic([12.5, 9.0], [13, 5], [14, 1],steps,height);
}
}

module OpenDyslexicRegular_contour00x69_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 1], [5, 5], [5.5, 9.0],steps,height);
	BezConic([5.5, 9.0], [6, 13], [6.5, 16.5],steps,height);
	BezConic([7.0, 34.5], [7, 35], [8, 35],steps,height);
	BezConic([11, 35], [12, 35], [12.5, 34.5],steps,height);
	BezConic([12.5, 34.5], [13, 34], [12, 33],steps,height);
	BezConic([14, 1], [14, 1], [13.5, 0.5],steps,height);
	BezConic([13.5, 0.5], [13, 0], [12, 0],steps,height);
	BezConic([6, 0], [4, 0], [5, 1],steps,height);
}
}

module OpenDyslexicRegular_contour00x69(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x69_skeleton(height);
			OpenDyslexicRegular_contour00x69_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x69_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x69_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 48], [6, 49], [7, 49], 
		[9.5, 49.0], [12, 49], [12, 49], 
		[12, 48], [12.5, 45.5], [13, 43], 
		[13, 42], [12, 42], [9.5, 42.0], 
		[7, 42], [6, 42], [6, 43], 
		[6.0, 45.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 48], [6, 49], [7, 49], 
		[9.5, 49.0], [12, 49], [12, 49], 
		[12, 48], [12.5, 45.5], [13, 43], 
		[13, 42], [12, 42], [9.5, 42.0], 
		[7, 42], [6, 42], [6, 43], 
		[6.0, 45.5], ]);
}}}

module OpenDyslexicRegular_contour10x69_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x69_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 48], [6, 49], [7, 49],steps,height);
	BezConic([12, 49], [12, 49], [12, 48],steps,height);
	BezConic([13, 43], [13, 42], [12, 42],steps,height);
	BezConic([7, 42], [6, 42], [6, 43],steps,height);
}
}

module OpenDyslexicRegular_contour10x69(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x69_skeleton(height);
			OpenDyslexicRegular_contour10x69_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x69_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x69(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x69(steps, height);
		
	}
}

module OpenDyslexicRegular_chunk20x69(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x69(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x69=[[4, 0], [14, 49]];

module OpenDyslexicRegular_letter0x69(steps=2, height) {
	OpenDyslexicRegular_chunk10x69(steps, height);
	OpenDyslexicRegular_chunk20x69(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x6a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 33], [19, 35], [20, 35], 
		[22.5, 35.0], [25, 35], [27, 35], 
		[27, 33], [25.5, 14.0], [24, -5], 
		[24, -8], [22.5, -11.0], [21, -14], 
		[18.5, -16.5], [16, -19], [13.5, -20.5], 
		[11, -22], [8, -22], [7.0, -22.0], 
		[6, -22], [5, -22], [5, -21], 
		[5.0, -17.0], [5, -13], [5, -11], 
		[6, -11], [6.5, -11.0], [7, -11], 
		[9, -11], [11.0, -10.5], [13, -10], 
		[14.5, -8.5], [16, -7], [17.0, -4.0], 
		[18, -1], [18, 3], [18.5, 18.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 33], [19, 35], [20, 35], 
		[22.5, 35.0], [25, 35], [27, 35], 
		[27, 33], [25.5, 14.0], [24, -5], 
		[24, -8], [22.5, -11.0], [21, -14], 
		[18.5, -16.5], [16, -19], [13.5, -20.5], 
		[11, -22], [8, -22], [7.0, -22.0], 
		[6, -22], [5, -22], [5, -21], 
		[5.0, -17.0], [5, -13], [5, -11], 
		[6, -11], [6.5, -11.0], [7, -11], 
		[9, -11], [11.0, -10.5], [13, -10], 
		[14.5, -8.5], [16, -7], [17.0, -4.0], 
		[18, -1], [18, 3], [18.5, 18.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x6a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, -11], [9, -11], [11.0, -10.5],steps,height);
	BezConic([11.0, -10.5], [13, -10], [14.5, -8.5],steps,height);
	BezConic([14.5, -8.5], [16, -7], [17.0, -4.0],steps,height);
	BezConic([17.0, -4.0], [18, -1], [18, 3],steps,height);
}
}

module OpenDyslexicRegular_contour00x6a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([19, 33], [19, 35], [20, 35],steps,height);
	BezConic([25, 35], [27, 35], [27, 33],steps,height);
	BezConic([24, -5], [24, -8], [22.5, -11.0],steps,height);
	BezConic([22.5, -11.0], [21, -14], [18.5, -16.5],steps,height);
	BezConic([18.5, -16.5], [16, -19], [13.5, -20.5],steps,height);
	BezConic([13.5, -20.5], [11, -22], [8, -22],steps,height);
	BezConic([6, -22], [5, -22], [5, -21],steps,height);
	BezConic([5, -13], [5, -11], [6, -11],steps,height);
}
}

module OpenDyslexicRegular_contour00x6a(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x6a_skeleton(height);
			OpenDyslexicRegular_contour00x6a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x6a_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x6a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[20, 47], [20, 49], [22, 49], 
		[23.0, 49.0], [24, 49], [25, 49], 
		[25, 47], [25.5, 45.0], [26, 43], 
		[26, 41], [24, 41], [23.0, 41.0], 
		[22, 41], [20, 41], [20, 43], 
		[20.0, 45.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[20, 47], [20, 49], [22, 49], 
		[23.0, 49.0], [24, 49], [25, 49], 
		[25, 47], [25.5, 45.0], [26, 43], 
		[26, 41], [24, 41], [23.0, 41.0], 
		[22, 41], [20, 41], [20, 43], 
		[20.0, 45.0], ]);
}}}

module OpenDyslexicRegular_contour10x6a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x6a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20, 47], [20, 49], [22, 49],steps,height);
	BezConic([24, 49], [25, 49], [25, 47],steps,height);
	BezConic([26, 43], [26, 41], [24, 41],steps,height);
	BezConic([22, 41], [20, 41], [20, 43],steps,height);
}
}

module OpenDyslexicRegular_contour10x6a(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x6a_skeleton(height);
			OpenDyslexicRegular_contour10x6a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x6a_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x6a(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x6a(steps, height);
		
	}
}

module OpenDyslexicRegular_chunk20x6a(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x6a(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x6a=[[5, -22], [27, 49]];

module OpenDyslexicRegular_letter0x6a(steps=2, height) {
	OpenDyslexicRegular_chunk10x6a(steps, height);
	OpenDyslexicRegular_chunk20x6a(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x6b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 47], [6, 49], [7, 49], 
		[8.5, 49.0], [10, 49], [12, 49], 
		[12, 47], [11.5, 35.5], [11, 24], 
		[11, 23], [12.0, 23.0], [13, 23], 
		[13, 23], [17.5, 28.5], [22, 34], 
		[23, 35], [24, 35], [26.0, 35.0], 
		[28, 35], [29, 35], [29.5, 34.5], 
		[30, 34], [29, 33], [23.5, 26.5], 
		[18, 20], [17, 19], [18, 18], 
		[26.5, 10.0], [35, 2], [35, 1], 
		[35.0, 0.5], [35, 0], [34, 0], 
		[30.0, 0.0], [26, 0], [25, 0], 
		[24, 1], [18.5, 7.5], [13, 14], 
		[13, 15], [12.5, 14.5], [12, 14], 
		[12, 13], [12.0, 7.5], [12, 2], 
		[12, 0], [11, 0], [8.5, 0.0], 
		[6, 0], [5, 0], [5, 2], 
		[5.5, 24.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 47], [6, 49], [7, 49], 
		[8.5, 49.0], [10, 49], [12, 49], 
		[12, 47], [11.5, 35.5], [11, 24], 
		[11, 23], [12.0, 23.0], [13, 23], 
		[13, 23], [17.5, 28.5], [22, 34], 
		[23, 35], [24, 35], [26.0, 35.0], 
		[28, 35], [29, 35], [29.5, 34.5], 
		[30, 34], [29, 33], [23.5, 26.5], 
		[18, 20], [17, 19], [18, 18], 
		[26.5, 10.0], [35, 2], [35, 1], 
		[35.0, 0.5], [35, 0], [34, 0], 
		[30.0, 0.0], [26, 0], [25, 0], 
		[24, 1], [18.5, 7.5], [13, 14], 
		[13, 15], [12.5, 14.5], [12, 14], 
		[12, 13], [12.0, 7.5], [12, 2], 
		[12, 0], [11, 0], [8.5, 0.0], 
		[6, 0], [5, 0], [5, 2], 
		[5.5, 24.5], ]);
}}}

module OpenDyslexicRegular_contour00x6b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([11, 24], [11, 23], [12.0, 23.0],steps,height);
	BezConic([12.0, 23.0], [13, 23], [13, 23],steps,height);
	BezConic([18, 20], [17, 19], [18, 18],steps,height);
	BezConic([35, 2], [35, 1], [35.0, 0.5],steps,height);
	BezConic([13, 14], [13, 15], [12.5, 14.5],steps,height);
	BezConic([12.5, 14.5], [12, 14], [12, 13],steps,height);
}
}

module OpenDyslexicRegular_contour00x6b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 47], [6, 49], [7, 49],steps,height);
	BezConic([10, 49], [12, 49], [12, 47],steps,height);
	BezConic([22, 34], [23, 35], [24, 35],steps,height);
	BezConic([28, 35], [29, 35], [29.5, 34.5],steps,height);
	BezConic([29.5, 34.5], [30, 34], [29, 33],steps,height);
	BezConic([35.0, 0.5], [35, 0], [34, 0],steps,height);
	BezConic([26, 0], [25, 0], [24, 1],steps,height);
	BezConic([12, 2], [12, 0], [11, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x6b(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x6b_skeleton(height);
			OpenDyslexicRegular_contour00x6b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x6b_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x6b(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x6b(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x6b=[[5, 0], [35, 49]];

module OpenDyslexicRegular_letter0x6b(steps=2, height) {
	OpenDyslexicRegular_chunk10x6b(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x6c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 2], [5, 8], [5.5, 14.0], 
		[6, 20], [6.0, 25.5], [6, 31], 
		[6.0, 36.0], [6, 41], [5, 46], 
		[4, 46], [5.0, 46.5], [6, 47], 
		[6, 47], [8.0, 47.0], [10, 47], 
		[10, 47], [10.5, 46.5], [11, 46], 
		[11, 46], [12, 42], [12.0, 37.5], 
		[12, 33], [12.0, 28.0], [12, 23], 
		[12.0, 18.5], [12, 14], [13, 9], 
		[13, 9], [13.0, 8.5], [13, 8], 
		[14, 8], [16.0, 8.0], [18, 8], 
		[20, 8], [20, 6], [20.0, 4.0], 
		[20, 2], [20, 0], [18, 0], 
		[12.5, 0.0], [7, 0], [6, 0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 2], [5, 8], [5.5, 14.0], 
		[6, 20], [6.0, 25.5], [6, 31], 
		[6.0, 36.0], [6, 41], [5, 46], 
		[4, 46], [5.0, 46.5], [6, 47], 
		[6, 47], [8.0, 47.0], [10, 47], 
		[10, 47], [10.5, 46.5], [11, 46], 
		[11, 46], [12, 42], [12.0, 37.5], 
		[12, 33], [12.0, 28.0], [12, 23], 
		[12.0, 18.5], [12, 14], [13, 9], 
		[13, 9], [13.0, 8.5], [13, 8], 
		[14, 8], [16.0, 8.0], [18, 8], 
		[20, 8], [20, 6], [20.0, 4.0], 
		[20, 2], [20, 0], [18, 0], 
		[12.5, 0.0], [7, 0], [6, 0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x6c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5.5, 14.0], [6, 20], [6.0, 25.5],steps,height);
	BezConic([6.0, 25.5], [6, 31], [6.0, 36.0],steps,height);
	BezConic([6.0, 36.0], [6, 41], [5, 46],steps,height);
	BezConic([5.0, 46.5], [6, 47], [6, 47],steps,height);
	BezConic([10.5, 46.5], [11, 46], [11, 46],steps,height);
	BezConic([12.0, 37.5], [12, 33], [12.0, 28.0],steps,height);
	BezConic([12.0, 28.0], [12, 23], [12.0, 18.5],steps,height);
	BezConic([12.0, 18.5], [12, 14], [13, 9],steps,height);
	BezConic([13.0, 8.5], [13, 8], [14, 8],steps,height);
}
}

module OpenDyslexicRegular_contour00x6c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 2], [5, 8], [5.5, 14.0],steps,height);
	BezConic([5, 46], [4, 46], [5.0, 46.5],steps,height);
	BezConic([10, 47], [10, 47], [10.5, 46.5],steps,height);
	BezConic([11, 46], [12, 42], [12.0, 37.5],steps,height);
	BezConic([13, 9], [13, 9], [13.0, 8.5],steps,height);
	BezConic([18, 8], [20, 8], [20, 6],steps,height);
	BezConic([20, 2], [20, 0], [18, 0],steps,height);
	BezConic([7, 0], [6, 0], [6, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x6c(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x6c_skeleton(height);
			OpenDyslexicRegular_contour00x6c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x6c_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x6c(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x6c(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x6c=[[4, 0], [20, 47]];

module OpenDyslexicRegular_letter0x6c(steps=2, height) {
	OpenDyslexicRegular_chunk10x6c(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x6d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[34, 29], [36, 33], [39.0, 34.5], 
		[42, 36], [45, 36], [48, 36], 
		[50.0, 35.0], [52, 34], [53.5, 32.0], 
		[55, 30], [56.0, 27.0], [57, 24], 
		[57, 21], [57.0, 11.0], [57, 1], 
		[57, 0], [56, 0], [53.0, 0.0], 
		[50, 0], [49, 0], [49, 1], 
		[50.0, 11.5], [51, 22], [51, 26], 
		[49.5, 28.5], [48, 31], [45, 31], 
		[42, 31], [40.5, 30.0], [39, 29], 
		[38.0, 27.5], [37, 26], [36.0, 24.0], 
		[35, 22], [35, 20], [34.5, 10.5], 
		[34, 1], [34, 0], [33, 0], 
		[30.0, 0.0], [27, 0], [26, 0], 
		[26, 1], [27.5, 11.5], [29, 22], 
		[30, 25], [29.5, 26.5], [29, 28], 
		[28.0, 29.5], [27, 31], [25.5, 31.0], 
		[24, 31], [22, 31], [20, 31], 
		[18.5, 30.5], [17, 30], [15.5, 28.0], 
		[14, 26], [13.5, 24.0], [13, 22], 
		[13, 20], [13.0, 10.5], [13, 1], 
		[13, 0], [12, 0], [9.0, 0.0], 
		[6, 0], [5, 0], [5, 1], 
		[6.0, 17.5], [7, 34], [7, 35], 
		[8, 35], [10.0, 35.0], [12, 35], 
		[13, 35], [12, 34], [12.0, 33.0], 
		[12, 32], [12, 31], [12.5, 31.0], 
		[13, 31], [13, 31], [15, 34], 
		[17.5, 35.0], [20, 36], [23, 36], 
		[26, 36], [29.0, 34.5], [32, 33], 
		[33, 30],[34, 28], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[34, 29], [36, 33], [39.0, 34.5], 
		[42, 36], [45, 36], [48, 36], 
		[50.0, 35.0], [52, 34], [53.5, 32.0], 
		[55, 30], [56.0, 27.0], [57, 24], 
		[57, 21], [57.0, 11.0], [57, 1], 
		[57, 0], [56, 0], [53.0, 0.0], 
		[50, 0], [49, 0], [49, 1], 
		[50.0, 11.5], [51, 22], [51, 26], 
		[49.5, 28.5], [48, 31], [45, 31], 
		[42, 31], [40.5, 30.0], [39, 29], 
		[38.0, 27.5], [37, 26], [36.0, 24.0], 
		[35, 22], [35, 20], [34.5, 10.5], 
		[34, 1], [34, 0], [33, 0], 
		[30.0, 0.0], [27, 0], [26, 0], 
		[26, 1], [27.5, 11.5], [29, 22], 
		[30, 25], [29.5, 26.5], [29, 28], 
		[28.0, 29.5], [27, 31], [25.5, 31.0], 
		[24, 31], [22, 31], [20, 31], 
		[18.5, 30.5], [17, 30], [15.5, 28.0], 
		[14, 26], [13.5, 24.0], [13, 22], 
		[13, 20], [13.0, 10.5], [13, 1], 
		[13, 0], [12, 0], [9.0, 0.0], 
		[6, 0], [5, 0], [5, 1], 
		[6.0, 17.5], [7, 34], [7, 35], 
		[8, 35], [10.0, 35.0], [12, 35], 
		[13, 35], [12, 34], [12.0, 33.0], 
		[12, 32], [12, 31], [12.5, 31.0], 
		[13, 31], [13, 31], [15, 34], 
		[17.5, 35.0], [20, 36], [23, 36], 
		[26, 36], [29.0, 34.5], [32, 33], 
		[33, 30],[34, 28], ]);
}}}

module OpenDyslexicRegular_contour00x6d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([51, 22], [51, 26], [49.5, 28.5],steps,height);
	BezConic([49.5, 28.5], [48, 31], [45, 31],steps,height);
	BezConic([45, 31], [42, 31], [40.5, 30.0],steps,height);
	BezConic([40.5, 30.0], [39, 29], [38.0, 27.5],steps,height);
	BezConic([38.0, 27.5], [37, 26], [36.0, 24.0],steps,height);
	BezConic([36.0, 24.0], [35, 22], [35, 20],steps,height);
	BezConic([29, 22], [30, 25], [29.5, 26.5],steps,height);
	BezConic([29.5, 26.5], [29, 28], [28.0, 29.5],steps,height);
	BezConic([28.0, 29.5], [27, 31], [25.5, 31.0],steps,height);
	BezConic([25.5, 31.0], [24, 31], [22, 31],steps,height);
	BezConic([22, 31], [20, 31], [18.5, 30.5],steps,height);
	BezConic([18.5, 30.5], [17, 30], [15.5, 28.0],steps,height);
	BezConic([15.5, 28.0], [14, 26], [13.5, 24.0],steps,height);
	BezConic([13.5, 24.0], [13, 22], [13, 20],steps,height);
	BezConic([12, 32], [12, 31], [12.5, 31.0],steps,height);
	BezConic([12.5, 31.0], [13, 31], [13, 31],steps,height);
	BezConic([33, 30], [34, 28], [34, 29],steps,height);
}
}

module OpenDyslexicRegular_contour00x6d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([34, 29], [36, 33], [39.0, 34.5],steps,height);
	BezConic([39.0, 34.5], [42, 36], [45, 36],steps,height);
	BezConic([45, 36], [48, 36], [50.0, 35.0],steps,height);
	BezConic([50.0, 35.0], [52, 34], [53.5, 32.0],steps,height);
	BezConic([53.5, 32.0], [55, 30], [56.0, 27.0],steps,height);
	BezConic([56.0, 27.0], [57, 24], [57, 21],steps,height);
	BezConic([57, 1], [57, 0], [56, 0],steps,height);
	BezConic([50, 0], [49, 0], [49, 1],steps,height);
	BezConic([34, 1], [34, 0], [33, 0],steps,height);
	BezConic([27, 0], [26, 0], [26, 1],steps,height);
	BezConic([13, 1], [13, 0], [12, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 1],steps,height);
	BezConic([7, 34], [7, 35], [8, 35],steps,height);
	BezConic([12, 35], [13, 35], [12, 34],steps,height);
	BezConic([13, 31], [15, 34], [17.5, 35.0],steps,height);
	BezConic([17.5, 35.0], [20, 36], [23, 36],steps,height);
	BezConic([23, 36], [26, 36], [29.0, 34.5],steps,height);
	BezConic([29.0, 34.5], [32, 33], [33, 30],steps,height);
}
}

module OpenDyslexicRegular_contour00x6d(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x6d_skeleton(height);
			OpenDyslexicRegular_contour00x6d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x6d_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x6d(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x6d(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x6d=[[5, 0], [57, 36]];

module OpenDyslexicRegular_letter0x6d(steps=2, height) {
	OpenDyslexicRegular_chunk10x6d(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x6e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[37, 2], [38, 0], [36, 0], 
		[33.0, 0.0], [30, 0], [28, 0], 
		[28, 2], [28.5, 11.5], [29, 21], 
		[30, 31], [22, 31], [17, 31], 
		[14.0, 28.0], [11, 25], [12, 20], 
		[12.5, 11.0], [13, 2], [13, 0], 
		[12, 0], [9.0, 0.0], [6, 0], 
		[5, 0], [5, 2], [5.5, 18.0], 
		[6, 34], [6, 35], [7, 35], 
		[8.5, 35.0], [10, 35], [11, 35], 
		[11, 34], [11.0, 33.5], [11, 33], 
		[11, 32], [11.5, 32.0], [12, 32], 
		[13, 33], [15, 34], [17.5, 35.0], 
		[20, 36], [23, 36], [29, 36], 
		[31.5, 32.0], [34, 28], [35, 21], 
		[36.0, 11.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[37, 2], [38, 0], [36, 0], 
		[33.0, 0.0], [30, 0], [28, 0], 
		[28, 2], [28.5, 11.5], [29, 21], 
		[30, 31], [22, 31], [17, 31], 
		[14.0, 28.0], [11, 25], [12, 20], 
		[12.5, 11.0], [13, 2], [13, 0], 
		[12, 0], [9.0, 0.0], [6, 0], 
		[5, 0], [5, 2], [5.5, 18.0], 
		[6, 34], [6, 35], [7, 35], 
		[8.5, 35.0], [10, 35], [11, 35], 
		[11, 34], [11.0, 33.5], [11, 33], 
		[11, 32], [11.5, 32.0], [12, 32], 
		[13, 33], [15, 34], [17.5, 35.0], 
		[20, 36], [23, 36], [29, 36], 
		[31.5, 32.0], [34, 28], [35, 21], 
		[36.0, 11.5], ]);
}}}

module OpenDyslexicRegular_contour00x6e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29, 21], [30, 31], [22, 31],steps,height);
	BezConic([22, 31], [17, 31], [14.0, 28.0],steps,height);
	BezConic([14.0, 28.0], [11, 25], [12, 20],steps,height);
	BezConic([11, 33], [11, 32], [11.5, 32.0],steps,height);
	BezConic([11.5, 32.0], [12, 32], [13, 33],steps,height);
}
}

module OpenDyslexicRegular_contour00x6e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([37, 2], [38, 0], [36, 0],steps,height);
	BezConic([30, 0], [28, 0], [28, 2],steps,height);
	BezConic([13, 2], [13, 0], [12, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
	BezConic([6, 34], [6, 35], [7, 35],steps,height);
	BezConic([10, 35], [11, 35], [11, 34],steps,height);
	BezConic([13, 33], [15, 34], [17.5, 35.0],steps,height);
	BezConic([17.5, 35.0], [20, 36], [23, 36],steps,height);
	BezConic([23, 36], [29, 36], [31.5, 32.0],steps,height);
	BezConic([31.5, 32.0], [34, 28], [35, 21],steps,height);
}
}

module OpenDyslexicRegular_contour00x6e(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x6e_skeleton(height);
			OpenDyslexicRegular_contour00x6e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x6e_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x6e(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x6e(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x6e=[[5, 0], [38, 36]];

module OpenDyslexicRegular_letter0x6e(steps=2, height) {
	OpenDyslexicRegular_chunk10x6e(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x6f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[21, 32], [16, 32], [13.5, 28.5], 
		[11, 25], [11, 18], [11, 15], 
		[11.5, 13.5], [12, 12], [13.5, 11.0], 
		[15, 10], [16.5, 9.5], [18, 9], 
		[21, 9], [23, 9], [25.0, 9.5], 
		[27, 10], [28.0, 11.0], [29, 12], 
		[30.0, 13.5], [31, 15], [31, 18], 
		[31, 25], [28.0, 28.5], [25, 32], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[21, 32], [16, 32], [13.5, 28.5], 
		[11, 25], [11, 18], [11, 15], 
		[11.5, 13.5], [12, 12], [13.5, 11.0], 
		[15, 10], [16.5, 9.5], [18, 9], 
		[21, 9], [23, 9], [25.0, 9.5], 
		[27, 10], [28.0, 11.0], [29, 12], 
		[30.0, 13.5], [31, 15], [31, 18], 
		[31, 25], [28.0, 28.5], [25, 32], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x6f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21, 32], [16, 32], [13.5, 28.5],steps,height);
	BezConic([13.5, 28.5], [11, 25], [11, 18],steps,height);
	BezConic([11, 18], [11, 15], [11.5, 13.5],steps,height);
	BezConic([11.5, 13.5], [12, 12], [13.5, 11.0],steps,height);
	BezConic([13.5, 11.0], [15, 10], [16.5, 9.5],steps,height);
	BezConic([16.5, 9.5], [18, 9], [21, 9],steps,height);
	BezConic([21, 9], [23, 9], [25.0, 9.5],steps,height);
	BezConic([25.0, 9.5], [27, 10], [28.0, 11.0],steps,height);
	BezConic([28.0, 11.0], [29, 12], [30.0, 13.5],steps,height);
	BezConic([30.0, 13.5], [31, 15], [31, 18],steps,height);
	BezConic([31, 18], [31, 25], [28.0, 28.5],steps,height);
	BezConic([28.0, 28.5], [25, 32], [21, 32],steps,height);
}
}

module OpenDyslexicRegular_contour00x6f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x6f(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x6f_skeleton(height);
			OpenDyslexicRegular_contour00x6f_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x6f_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x6f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[21, 36], [28, 36], [32.5, 31.0], 
		[37, 26], [37, 17], [37, 9], 
		[32.5, 4.0], [28, -1], [21, -1], 
		[17, -1], [14.0, 0.5], [11, 2], 
		[9.0, 4.0], [7, 6], [6.0, 9.5], 
		[5, 13], [5, 17], [5, 22], 
		[6.0, 25.5], [7, 29], [9.0, 31.0], 
		[11, 33], [14.0, 34.5], [17, 36], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[21, 36], [28, 36], [32.5, 31.0], 
		[37, 26], [37, 17], [37, 9], 
		[32.5, 4.0], [28, -1], [21, -1], 
		[17, -1], [14.0, 0.5], [11, 2], 
		[9.0, 4.0], [7, 6], [6.0, 9.5], 
		[5, 13], [5, 17], [5, 22], 
		[6.0, 25.5], [7, 29], [9.0, 31.0], 
		[11, 33], [14.0, 34.5], [17, 36], 
		 ]);
}}}

module OpenDyslexicRegular_contour10x6f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour10x6f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21, 36], [28, 36], [32.5, 31.0],steps,height);
	BezConic([32.5, 31.0], [37, 26], [37, 17],steps,height);
	BezConic([37, 17], [37, 9], [32.5, 4.0],steps,height);
	BezConic([32.5, 4.0], [28, -1], [21, -1],steps,height);
	BezConic([21, -1], [17, -1], [14.0, 0.5],steps,height);
	BezConic([14.0, 0.5], [11, 2], [9.0, 4.0],steps,height);
	BezConic([9.0, 4.0], [7, 6], [6.0, 9.5],steps,height);
	BezConic([6.0, 9.5], [5, 13], [5, 17],steps,height);
	BezConic([5, 17], [5, 22], [6.0, 25.5],steps,height);
	BezConic([6.0, 25.5], [7, 29], [9.0, 31.0],steps,height);
	BezConic([9.0, 31.0], [11, 33], [14.0, 34.5],steps,height);
	BezConic([14.0, 34.5], [17, 36], [21, 36],steps,height);
}
}

module OpenDyslexicRegular_contour10x6f(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x6f_skeleton(height);
			OpenDyslexicRegular_contour10x6f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x6f_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x6f(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x6f(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x6f(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x6f(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x6f=[[5, -1], [37, 36]];

module OpenDyslexicRegular_letter0x6f(steps=2, height) {
	OpenDyslexicRegular_chunk00x6f(steps, height);
	OpenDyslexicRegular_chunk10x6f(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x70_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[34, 18], [34, 24], [31.5, 27.5], 
		[29, 31], [24, 31], [20, 31], 
		[17.0, 27.5], [14, 24], [14, 18], 
		[14, 15], [15.0, 13.0], [16, 11], 
		[17.0, 10.0], [18, 9], [20.0, 8.5], 
		[22, 8], [24, 8], [27, 8], 
		[28.5, 8.5], [30, 9], [31.5, 10.0], 
		[33, 11], [33.5, 13.0], [34, 15], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[34, 18], [34, 24], [31.5, 27.5], 
		[29, 31], [24, 31], [20, 31], 
		[17.0, 27.5], [14, 24], [14, 18], 
		[14, 15], [15.0, 13.0], [16, 11], 
		[17.0, 10.0], [18, 9], [20.0, 8.5], 
		[22, 8], [24, 8], [27, 8], 
		[28.5, 8.5], [30, 9], [31.5, 10.0], 
		[33, 11], [33.5, 13.0], [34, 15], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x70_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([34, 18], [34, 24], [31.5, 27.5],steps,height);
	BezConic([31.5, 27.5], [29, 31], [24, 31],steps,height);
	BezConic([24, 31], [20, 31], [17.0, 27.5],steps,height);
	BezConic([17.0, 27.5], [14, 24], [14, 18],steps,height);
	BezConic([14, 18], [14, 15], [15.0, 13.0],steps,height);
	BezConic([15.0, 13.0], [16, 11], [17.0, 10.0],steps,height);
	BezConic([17.0, 10.0], [18, 9], [20.0, 8.5],steps,height);
	BezConic([20.0, 8.5], [22, 8], [24, 8],steps,height);
	BezConic([24, 8], [27, 8], [28.5, 8.5],steps,height);
	BezConic([28.5, 8.5], [30, 9], [31.5, 10.0],steps,height);
	BezConic([31.5, 10.0], [33, 11], [33.5, 13.0],steps,height);
	BezConic([33.5, 13.0], [34, 15], [34, 18],steps,height);
}
}

module OpenDyslexicRegular_contour00x70_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x70(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x70_skeleton(height);
			OpenDyslexicRegular_contour00x70_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x70_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x70_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[12, -12], [12, -13], [10, -13], 
		[8.0, -13.0], [6, -13], [5, -13], 
		[5, -12], [6.0, -2.0], [7, 8], 
		[7.0, 20.5], [7, 33], [7, 34], 
		[9, 34], [10.0, 34.0], [11, 34], 
		[13, 34], [13, 33], [13.0, 33.0], 
		[13, 33], [12, 30], [14, 32], 
		[17, 36], [23, 36], [26, 36], 
		[29.0, 34.5], [32, 33], [34.0, 30.5], 
		[36, 28], [37.0, 25.0], [38, 22], 
		[38, 17], [38, 13], [37.0, 9.5], 
		[36, 6], [34.0, 3.5], [32, 1], 
		[29.5, 0.0], [27, -1], [23, -1], 
		[23, -1], [21.5, -1.0], [20, -1], 
		[19.0, -0.5], [18, 0], [16.5, 0.5], 
		[15, 1], [14, 2], [14, 2], 
		[13.5, 2.0], [13, 2], [13, 1], 
		[12.5, -5.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[12, -12], [12, -13], [10, -13], 
		[8.0, -13.0], [6, -13], [5, -13], 
		[5, -12], [6.0, -2.0], [7, 8], 
		[7.0, 20.5], [7, 33], [7, 34], 
		[9, 34], [10.0, 34.0], [11, 34], 
		[13, 34], [13, 33], [13.0, 33.0], 
		[13, 33], [12, 30], [14, 32], 
		[17, 36], [23, 36], [26, 36], 
		[29.0, 34.5], [32, 33], [34.0, 30.5], 
		[36, 28], [37.0, 25.0], [38, 22], 
		[38, 17], [38, 13], [37.0, 9.5], 
		[36, 6], [34.0, 3.5], [32, 1], 
		[29.5, 0.0], [27, -1], [23, -1], 
		[23, -1], [21.5, -1.0], [20, -1], 
		[19.0, -0.5], [18, 0], [16.5, 0.5], 
		[15, 1], [14, 2], [14, 2], 
		[13.5, 2.0], [13, 2], [13, 1], 
		[12.5, -5.5], ]);
}}}

module OpenDyslexicRegular_contour10x70_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([13, 33], [12, 30], [14, 32],steps,height);
	BezConic([23, -1], [23, -1], [21.5, -1.0],steps,height);
	BezConic([19.0, -0.5], [18, 0], [16.5, 0.5],steps,height);
	BezConic([14, 2], [14, 2], [13.5, 2.0],steps,height);
	BezConic([13.5, 2.0], [13, 2], [13, 1],steps,height);
}
}

module OpenDyslexicRegular_contour10x70_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, -12], [12, -13], [10, -13],steps,height);
	BezConic([6, -13], [5, -13], [5, -12],steps,height);
	BezConic([7, 33], [7, 34], [9, 34],steps,height);
	BezConic([11, 34], [13, 34], [13, 33],steps,height);
	BezConic([14, 32], [17, 36], [23, 36],steps,height);
	BezConic([23, 36], [26, 36], [29.0, 34.5],steps,height);
	BezConic([29.0, 34.5], [32, 33], [34.0, 30.5],steps,height);
	BezConic([34.0, 30.5], [36, 28], [37.0, 25.0],steps,height);
	BezConic([37.0, 25.0], [38, 22], [38, 17],steps,height);
	BezConic([38, 17], [38, 13], [37.0, 9.5],steps,height);
	BezConic([37.0, 9.5], [36, 6], [34.0, 3.5],steps,height);
	BezConic([34.0, 3.5], [32, 1], [29.5, 0.0],steps,height);
	BezConic([29.5, 0.0], [27, -1], [23, -1],steps,height);
	BezConic([21.5, -1.0], [20, -1], [19.0, -0.5],steps,height);
	BezConic([16.5, 0.5], [15, 1], [14, 2],steps,height);
}
}

module OpenDyslexicRegular_contour10x70(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x70_skeleton(height);
			OpenDyslexicRegular_contour10x70_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x70_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x70(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x70(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x70(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x70(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x70=[[5, -13], [38, 36]];

module OpenDyslexicRegular_letter0x70(steps=2, height) {
	OpenDyslexicRegular_chunk00x70(steps, height);
	OpenDyslexicRegular_chunk10x70(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x71_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[9, 18], [9, 15], [9.5, 13.0], 
		[10, 11], [11.0, 10.0], [12, 9], 
		[14.0, 9.0], [16, 9], [18, 9], 
		[20, 9], [22.0, 9.0], [24, 9], 
		[25.5, 10.0], [27, 11], [27.5, 13.0], 
		[28, 15], [28, 18], [28, 25], 
		[25.5, 28.5], [23, 32], [18, 32], 
		[14, 32], [11.5, 28.5], [9, 25], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[9, 18], [9, 15], [9.5, 13.0], 
		[10, 11], [11.0, 10.0], [12, 9], 
		[14.0, 9.0], [16, 9], [18, 9], 
		[20, 9], [22.0, 9.0], [24, 9], 
		[25.5, 10.0], [27, 11], [27.5, 13.0], 
		[28, 15], [28, 18], [28, 25], 
		[25.5, 28.5], [23, 32], [18, 32], 
		[14, 32], [11.5, 28.5], [9, 25], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x71_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([9, 18], [9, 15], [9.5, 13.0],steps,height);
	BezConic([9.5, 13.0], [10, 11], [11.0, 10.0],steps,height);
	BezConic([11.0, 10.0], [12, 9], [14.0, 9.0],steps,height);
	BezConic([14.0, 9.0], [16, 9], [18, 9],steps,height);
	BezConic([18, 9], [20, 9], [22.0, 9.0],steps,height);
	BezConic([22.0, 9.0], [24, 9], [25.5, 10.0],steps,height);
	BezConic([25.5, 10.0], [27, 11], [27.5, 13.0],steps,height);
	BezConic([27.5, 13.0], [28, 15], [28, 18],steps,height);
	BezConic([28, 18], [28, 25], [25.5, 28.5],steps,height);
	BezConic([25.5, 28.5], [23, 32], [18, 32],steps,height);
	BezConic([18, 32], [14, 32], [11.5, 28.5],steps,height);
	BezConic([11.5, 28.5], [9, 25], [9, 18],steps,height);
}
}

module OpenDyslexicRegular_contour00x71_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x71(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x71_skeleton(height);
			OpenDyslexicRegular_contour00x71_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x71_additive_curves(steps, height);
	}
}

module OpenDyslexicRegular_contour10x71_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[30, 2], [30, 3], [29.5, 3.5], 
		[29, 4], [28, 3], [25, -1], 
		[19, -1], [16, -1], [13.0, 0.5], 
		[10, 2], [8.5, 4.5], [7, 7], 
		[6.0, 10.0], [5, 13], [5, 17], 
		[5, 22], [6.0, 25.0], [7, 28], 
		[8.5, 30.5], [10, 33], [13.0, 34.5], 
		[16, 36], [19, 36], [25, 36], 
		[29, 32], [30, 30], [31, 32], 
		[31.0, 32.5], [31, 33], [31, 35], 
		[33, 35], [34.0, 35.0], [35, 35], 
		[37, 35], [37, 33], [35.5, 11.0], 
		[34, -11], [34, -11], [34.0, -12.0], 
		[34, -13], [35, -13], [38.0, -13.0], 
		[41, -13], [42, -13], [41.5, -13.5], 
		[41, -14], [41, -15], [38.5, -17.0], 
		[36, -19], [35, -20], [34, -20], 
		[31.5, -20.0], [29, -20], [27, -20], 
		[28, -18],[29.0, -8.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[30, 2], [30, 3], [29.5, 3.5], 
		[29, 4], [28, 3], [25, -1], 
		[19, -1], [16, -1], [13.0, 0.5], 
		[10, 2], [8.5, 4.5], [7, 7], 
		[6.0, 10.0], [5, 13], [5, 17], 
		[5, 22], [6.0, 25.0], [7, 28], 
		[8.5, 30.5], [10, 33], [13.0, 34.5], 
		[16, 36], [19, 36], [25, 36], 
		[29, 32], [30, 30], [31, 32], 
		[31.0, 32.5], [31, 33], [31, 35], 
		[33, 35], [34.0, 35.0], [35, 35], 
		[37, 35], [37, 33], [35.5, 11.0], 
		[34, -11], [34, -11], [34.0, -12.0], 
		[34, -13], [35, -13], [38.0, -13.0], 
		[41, -13], [42, -13], [41.5, -13.5], 
		[41, -14], [41, -15], [38.5, -17.0], 
		[36, -19], [35, -20], [34, -20], 
		[31.5, -20.0], [29, -20], [27, -20], 
		[28, -18],[29.0, -8.0], ]);
}}}

module OpenDyslexicRegular_contour10x71_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([30, 2], [30, 3], [29.5, 3.5],steps,height);
	BezConic([29.5, 3.5], [29, 4], [28, 3],steps,height);
	BezConic([29, 32], [30, 30], [31, 32],steps,height);
	BezConic([34.0, -12.0], [34, -13], [35, -13],steps,height);
	BezConic([41.5, -13.5], [41, -14], [41, -15],steps,height);
}
}

module OpenDyslexicRegular_contour10x71_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([28, 3], [25, -1], [19, -1],steps,height);
	BezConic([19, -1], [16, -1], [13.0, 0.5],steps,height);
	BezConic([13.0, 0.5], [10, 2], [8.5, 4.5],steps,height);
	BezConic([8.5, 4.5], [7, 7], [6.0, 10.0],steps,height);
	BezConic([6.0, 10.0], [5, 13], [5, 17],steps,height);
	BezConic([5, 17], [5, 22], [6.0, 25.0],steps,height);
	BezConic([6.0, 25.0], [7, 28], [8.5, 30.5],steps,height);
	BezConic([8.5, 30.5], [10, 33], [13.0, 34.5],steps,height);
	BezConic([13.0, 34.5], [16, 36], [19, 36],steps,height);
	BezConic([19, 36], [25, 36], [29, 32],steps,height);
	BezConic([31, 33], [31, 35], [33, 35],steps,height);
	BezConic([35, 35], [37, 35], [37, 33],steps,height);
	BezConic([34, -11], [34, -11], [34.0, -12.0],steps,height);
	BezConic([41, -13], [42, -13], [41.5, -13.5],steps,height);
	BezConic([36, -19], [35, -20], [34, -20],steps,height);
	BezConic([29, -20], [27, -20], [28, -18],steps,height);
}
}

module OpenDyslexicRegular_contour10x71(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour10x71_skeleton(height);
			OpenDyslexicRegular_contour10x71_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour10x71_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk00x71(steps=2, height) {
	difference() {
		
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x71(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x71(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour10x71(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x71=[[5, -20], [42, 36]];

module OpenDyslexicRegular_letter0x71(steps=2, height) {
	OpenDyslexicRegular_chunk00x71(steps, height);
	OpenDyslexicRegular_chunk10x71(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x72_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[26, 31], [26, 30], [25.5, 30.0], 
		[25, 30], [24, 30], [23, 30], 
		[22.5, 30.0], [22, 30], [21, 30], 
		[19, 30], [17.0, 29.5], [15, 29], 
		[14.0, 28.0], [13, 27], [12.5, 25.0], 
		[12, 23], [12, 20], [13.0, 11.0], 
		[14, 2], [14, 0], [12, 0], 
		[9.0, 0.0], [6, 0], [4, 0], 
		[5, 2], [6, 6], [6.5, 10.0], 
		[7, 14], [7.0, 17.5], [7, 21], 
		[7.0, 24.5], [7, 28], [7, 33], 
		[7, 35], [8, 35], [9.5, 35.0], 
		[11, 35], [12, 35], [12, 33], 
		[12, 32], [12.5, 32.0], [13, 32], 
		[14, 32], [15, 33], [17.5, 34.0], 
		[20, 35], [23, 35], [23, 35], 
		[23.5, 35.0], [24, 35], [24, 35], 
		[26, 35], [26, 33], [26.0, 32.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[26, 31], [26, 30], [25.5, 30.0], 
		[25, 30], [24, 30], [23, 30], 
		[22.5, 30.0], [22, 30], [21, 30], 
		[19, 30], [17.0, 29.5], [15, 29], 
		[14.0, 28.0], [13, 27], [12.5, 25.0], 
		[12, 23], [12, 20], [13.0, 11.0], 
		[14, 2], [14, 0], [12, 0], 
		[9.0, 0.0], [6, 0], [4, 0], 
		[5, 2], [6, 6], [6.5, 10.0], 
		[7, 14], [7.0, 17.5], [7, 21], 
		[7.0, 24.5], [7, 28], [7, 33], 
		[7, 35], [8, 35], [9.5, 35.0], 
		[11, 35], [12, 35], [12, 33], 
		[12, 32], [12.5, 32.0], [13, 32], 
		[14, 32], [15, 33], [17.5, 34.0], 
		[20, 35], [23, 35], [23, 35], 
		[23.5, 35.0], [24, 35], [24, 35], 
		[26, 35], [26, 33], [26.0, 32.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x72_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25.5, 30.0], [25, 30], [24, 30],steps,height);
	BezConic([24, 30], [23, 30], [22.5, 30.0],steps,height);
	BezConic([22.5, 30.0], [22, 30], [21, 30],steps,height);
	BezConic([21, 30], [19, 30], [17.0, 29.5],steps,height);
	BezConic([17.0, 29.5], [15, 29], [14.0, 28.0],steps,height);
	BezConic([14.0, 28.0], [13, 27], [12.5, 25.0],steps,height);
	BezConic([12.5, 25.0], [12, 23], [12, 20],steps,height);
	BezConic([5, 2], [6, 6], [6.5, 10.0],steps,height);
	BezConic([6.5, 10.0], [7, 14], [7.0, 17.5],steps,height);
	BezConic([7.0, 17.5], [7, 21], [7.0, 24.5],steps,height);
	BezConic([7.0, 24.5], [7, 28], [7, 33],steps,height);
	BezConic([12, 33], [12, 32], [12.5, 32.0],steps,height);
	BezConic([12.5, 32.0], [13, 32], [14, 32],steps,height);
	BezConic([23, 35], [23, 35], [23.5, 35.0],steps,height);
	BezConic([23.5, 35.0], [24, 35], [24, 35],steps,height);
}
}

module OpenDyslexicRegular_contour00x72_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([26, 31], [26, 30], [25.5, 30.0],steps,height);
	BezConic([14, 2], [14, 0], [12, 0],steps,height);
	BezConic([6, 0], [4, 0], [5, 2],steps,height);
	BezConic([7, 33], [7, 35], [8, 35],steps,height);
	BezConic([11, 35], [12, 35], [12, 33],steps,height);
	BezConic([14, 32], [15, 33], [17.5, 34.0],steps,height);
	BezConic([17.5, 34.0], [20, 35], [23, 35],steps,height);
	BezConic([24, 35], [26, 35], [26, 33],steps,height);
}
}

module OpenDyslexicRegular_contour00x72(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x72_skeleton(height);
			OpenDyslexicRegular_contour00x72_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x72_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x72(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x72(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x72=[[4, 0], [26, 35]];

module OpenDyslexicRegular_letter0x72(steps=2, height) {
	OpenDyslexicRegular_chunk10x72(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x73_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[30, 31], [30, 30], [29.5, 30.0], 
		[29, 30], [28, 30], [24, 32], 
		[19, 32], [15, 32], [12.5, 30.5], 
		[10, 29], [10, 26], [10, 25], 
		[10.5, 24.0], [11, 23], [12.0, 22.5], 
		[13, 22], [14.5, 21.5], [16, 21], 
		[18, 20], [19.0, 20.0], [20, 20], 
		[23, 19], [25.5, 18.0], [28, 17], 
		[29.0, 16.0], [30, 15], [30.5, 13.5], 
		[31, 12], [31, 10], [31, 5], 
		[27.5, 2.0], [24, -1], [17, -1], 
		[12, -1], [6, 1], [5, 1], 
		[5, 3], [5.0, 6.0], [5, 9], 
		[5, 10], [5.5, 10.0], [6, 10], 
		[7, 10], [12, 8], [17, 8], 
		[20, 8], [21.5, 9.0], [23, 10], 
		[23.0, 11.0], [23, 12], [21.5, 13.5], 
		[20, 15], [18, 15], [16.5, 15.5], 
		[15, 16], [10, 17], [7.5, 19.0], 
		[5, 21], [5, 26], [5, 31], 
		[8.5, 33.5], [12, 36], [18, 36], 
		[24, 36], [28, 34], [30, 34], 
		[30, 33],[30.0, 32.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[30, 31], [30, 30], [29.5, 30.0], 
		[29, 30], [28, 30], [24, 32], 
		[19, 32], [15, 32], [12.5, 30.5], 
		[10, 29], [10, 26], [10, 25], 
		[10.5, 24.0], [11, 23], [12.0, 22.5], 
		[13, 22], [14.5, 21.5], [16, 21], 
		[18, 20], [19.0, 20.0], [20, 20], 
		[23, 19], [25.5, 18.0], [28, 17], 
		[29.0, 16.0], [30, 15], [30.5, 13.5], 
		[31, 12], [31, 10], [31, 5], 
		[27.5, 2.0], [24, -1], [17, -1], 
		[12, -1], [6, 1], [5, 1], 
		[5, 3], [5.0, 6.0], [5, 9], 
		[5, 10], [5.5, 10.0], [6, 10], 
		[7, 10], [12, 8], [17, 8], 
		[20, 8], [21.5, 9.0], [23, 10], 
		[23.0, 11.0], [23, 12], [21.5, 13.5], 
		[20, 15], [18, 15], [16.5, 15.5], 
		[15, 16], [10, 17], [7.5, 19.0], 
		[5, 21], [5, 26], [5, 31], 
		[8.5, 33.5], [12, 36], [18, 36], 
		[24, 36], [28, 34], [30, 34], 
		[30, 33],[30.0, 32.0], ]);
}}}

module OpenDyslexicRegular_contour00x73_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29.5, 30.0], [29, 30], [28, 30],steps,height);
	BezConic([28, 30], [24, 32], [19, 32],steps,height);
	BezConic([19, 32], [15, 32], [12.5, 30.5],steps,height);
	BezConic([12.5, 30.5], [10, 29], [10, 26],steps,height);
	BezConic([10, 26], [10, 25], [10.5, 24.0],steps,height);
	BezConic([10.5, 24.0], [11, 23], [12.0, 22.5],steps,height);
	BezConic([12.0, 22.5], [13, 22], [14.5, 21.5],steps,height);
	BezConic([5.5, 10.0], [6, 10], [7, 10],steps,height);
	BezConic([7, 10], [12, 8], [17, 8],steps,height);
	BezConic([17, 8], [20, 8], [21.5, 9.0],steps,height);
	BezConic([21.5, 9.0], [23, 10], [23.0, 11.0],steps,height);
	BezConic([23.0, 11.0], [23, 12], [21.5, 13.5],steps,height);
	BezConic([21.5, 13.5], [20, 15], [18, 15],steps,height);
}
}

module OpenDyslexicRegular_contour00x73_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([30, 31], [30, 30], [29.5, 30.0],steps,height);
	BezConic([14.5, 21.5], [16, 21], [18, 20],steps,height);
	BezConic([20, 20], [23, 19], [25.5, 18.0],steps,height);
	BezConic([25.5, 18.0], [28, 17], [29.0, 16.0],steps,height);
	BezConic([29.0, 16.0], [30, 15], [30.5, 13.5],steps,height);
	BezConic([30.5, 13.5], [31, 12], [31, 10],steps,height);
	BezConic([31, 10], [31, 5], [27.5, 2.0],steps,height);
	BezConic([27.5, 2.0], [24, -1], [17, -1],steps,height);
	BezConic([17, -1], [12, -1], [6, 1],steps,height);
	BezConic([6, 1], [5, 1], [5, 3],steps,height);
	BezConic([5, 9], [5, 10], [5.5, 10.0],steps,height);
	BezConic([15, 16], [10, 17], [7.5, 19.0],steps,height);
	BezConic([7.5, 19.0], [5, 21], [5, 26],steps,height);
	BezConic([5, 26], [5, 31], [8.5, 33.5],steps,height);
	BezConic([8.5, 33.5], [12, 36], [18, 36],steps,height);
	BezConic([18, 36], [24, 36], [28, 34],steps,height);
	BezConic([28, 34], [30, 34], [30, 33],steps,height);
}
}

module OpenDyslexicRegular_contour00x73(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x73_skeleton(height);
			OpenDyslexicRegular_contour00x73_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x73_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x73(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x73(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x73=[[5, -1], [31, 36]];

module OpenDyslexicRegular_letter0x73(steps=2, height) {
	OpenDyslexicRegular_chunk10x73(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x74_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[14, 44], [15, 44], [15, 42], 
		[15.0, 39.5], [15, 37], [15, 35], 
		[17, 35], [19.5, 35.0], [22, 35], 
		[23, 35], [23, 33], [23.0, 32.5], 
		[23, 32], [23, 31], [22, 31], 
		[19.5, 31.0], [17, 31], [15, 31], 
		[15, 29], [15.0, 22.0], [15, 15], 
		[15, 12], [15.0, 10.5], [15, 9], 
		[15.5, 8.5], [16, 8], [17.0, 8.0], 
		[18, 8], [21, 8], [21.5, 8.0], 
		[22, 8], [24, 8], [24, 6], 
		[24.0, 4.0], [24, 2], [24, 0], 
		[22, 0], [21.5, 0.0], [21, 0], 
		[16, 0], [13.5, 0.5], [11, 1], 
		[10.0, 2.0], [9, 3], [8.5, 5.0], 
		[8, 7], [8, 12], [8.5, 20.5], 
		[9, 29], [9, 31], [7, 31], 
		[6.5, 31.0], [6, 31], [5, 31], 
		[5, 32], [5.0, 32.5], [5, 33], 
		[5, 35], [6, 35], [6.5, 35.0], 
		[7, 35], [9, 35], [9, 37], 
		[9.0, 39.5], [9, 42], [9, 44], 
		[11, 44],[12.5, 44.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[14, 44], [15, 44], [15, 42], 
		[15.0, 39.5], [15, 37], [15, 35], 
		[17, 35], [19.5, 35.0], [22, 35], 
		[23, 35], [23, 33], [23.0, 32.5], 
		[23, 32], [23, 31], [22, 31], 
		[19.5, 31.0], [17, 31], [15, 31], 
		[15, 29], [15.0, 22.0], [15, 15], 
		[15, 12], [15.0, 10.5], [15, 9], 
		[15.5, 8.5], [16, 8], [17.0, 8.0], 
		[18, 8], [21, 8], [21.5, 8.0], 
		[22, 8], [24, 8], [24, 6], 
		[24.0, 4.0], [24, 2], [24, 0], 
		[22, 0], [21.5, 0.0], [21, 0], 
		[16, 0], [13.5, 0.5], [11, 1], 
		[10.0, 2.0], [9, 3], [8.5, 5.0], 
		[8, 7], [8, 12], [8.5, 20.5], 
		[9, 29], [9, 31], [7, 31], 
		[6.5, 31.0], [6, 31], [5, 31], 
		[5, 32], [5.0, 32.5], [5, 33], 
		[5, 35], [6, 35], [6.5, 35.0], 
		[7, 35], [9, 35], [9, 37], 
		[9.0, 39.5], [9, 42], [9, 44], 
		[11, 44],[12.5, 44.0], ]);
}}}

module OpenDyslexicRegular_contour00x74_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 37], [15, 35], [17, 35],steps,height);
	BezConic([17, 31], [15, 31], [15, 29],steps,height);
	BezConic([15, 15], [15, 12], [15.0, 10.5],steps,height);
	BezConic([15.0, 10.5], [15, 9], [15.5, 8.5],steps,height);
	BezConic([15.5, 8.5], [16, 8], [17.0, 8.0],steps,height);
	BezConic([17.0, 8.0], [18, 8], [21, 8],steps,height);
	BezConic([9, 29], [9, 31], [7, 31],steps,height);
	BezConic([7, 35], [9, 35], [9, 37],steps,height);
}
}

module OpenDyslexicRegular_contour00x74_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([14, 44], [15, 44], [15, 42],steps,height);
	BezConic([22, 35], [23, 35], [23, 33],steps,height);
	BezConic([23, 32], [23, 31], [22, 31],steps,height);
	BezConic([22, 8], [24, 8], [24, 6],steps,height);
	BezConic([24, 2], [24, 0], [22, 0],steps,height);
	BezConic([21, 0], [16, 0], [13.5, 0.5],steps,height);
	BezConic([13.5, 0.5], [11, 1], [10.0, 2.0],steps,height);
	BezConic([10.0, 2.0], [9, 3], [8.5, 5.0],steps,height);
	BezConic([8.5, 5.0], [8, 7], [8, 12],steps,height);
	BezConic([6, 31], [5, 31], [5, 32],steps,height);
	BezConic([5, 33], [5, 35], [6, 35],steps,height);
	BezConic([9, 42], [9, 44], [11, 44],steps,height);
}
}

module OpenDyslexicRegular_contour00x74(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x74_skeleton(height);
			OpenDyslexicRegular_contour00x74_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x74_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x74(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x74(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x74=[[5, 0], [24, 44]];

module OpenDyslexicRegular_letter0x74(steps=2, height) {
	OpenDyslexicRegular_chunk10x74(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x75_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 33], [5, 35], [6, 35], 
		[7.5, 35.0], [9, 35], [10, 35], 
		[10, 33], [10.0, 25.5], [10, 18], 
		[9, 15], [9.5, 12.5], [10, 10], 
		[11.0, 9.0], [12, 8], [13.5, 8.0], 
		[15, 8], [17, 8], [20, 8], 
		[21.5, 8.5], [23, 9], [24.5, 10.0], 
		[26, 11], [26.5, 13.5], [27, 16], 
		[27, 19], [27.0, 26.0], [27, 33], 
		[27, 35], [29, 35], [30.5, 35.0], 
		[32, 35], [33, 35], [33, 34], 
		[33.0, 18.0], [33, 2], [33, 0], 
		[32, 0], [31.0, 0.0], [30, 0], 
		[28, 0], [28, 2], [28.0, 2.0], 
		[28, 2], [28, 4], [27.5, 4.0], 
		[27, 4], [26, 3], [23, -1], 
		[17, -1], [5, -1], [5, 14], 
		[5.0, 23.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 33], [5, 35], [6, 35], 
		[7.5, 35.0], [9, 35], [10, 35], 
		[10, 33], [10.0, 25.5], [10, 18], 
		[9, 15], [9.5, 12.5], [10, 10], 
		[11.0, 9.0], [12, 8], [13.5, 8.0], 
		[15, 8], [17, 8], [20, 8], 
		[21.5, 8.5], [23, 9], [24.5, 10.0], 
		[26, 11], [26.5, 13.5], [27, 16], 
		[27, 19], [27.0, 26.0], [27, 33], 
		[27, 35], [29, 35], [30.5, 35.0], 
		[32, 35], [33, 35], [33, 34], 
		[33.0, 18.0], [33, 2], [33, 0], 
		[32, 0], [31.0, 0.0], [30, 0], 
		[28, 0], [28, 2], [28.0, 2.0], 
		[28, 2], [28, 4], [27.5, 4.0], 
		[27, 4], [26, 3], [23, -1], 
		[17, -1], [5, -1], [5, 14], 
		[5.0, 23.5], ]);
}}}

module OpenDyslexicRegular_contour00x75_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([10, 18], [9, 15], [9.5, 12.5],steps,height);
	BezConic([9.5, 12.5], [10, 10], [11.0, 9.0],steps,height);
	BezConic([11.0, 9.0], [12, 8], [13.5, 8.0],steps,height);
	BezConic([13.5, 8.0], [15, 8], [17, 8],steps,height);
	BezConic([17, 8], [20, 8], [21.5, 8.5],steps,height);
	BezConic([21.5, 8.5], [23, 9], [24.5, 10.0],steps,height);
	BezConic([24.5, 10.0], [26, 11], [26.5, 13.5],steps,height);
	BezConic([26.5, 13.5], [27, 16], [27, 19],steps,height);
	BezConic([28, 2], [28, 4], [27.5, 4.0],steps,height);
	BezConic([27.5, 4.0], [27, 4], [26, 3],steps,height);
}
}

module OpenDyslexicRegular_contour00x75_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 33], [5, 35], [6, 35],steps,height);
	BezConic([9, 35], [10, 35], [10, 33],steps,height);
	BezConic([27, 33], [27, 35], [29, 35],steps,height);
	BezConic([32, 35], [33, 35], [33, 34],steps,height);
	BezConic([33, 2], [33, 0], [32, 0],steps,height);
	BezConic([30, 0], [28, 0], [28, 2],steps,height);
	BezConic([26, 3], [23, -1], [17, -1],steps,height);
	BezConic([17, -1], [5, -1], [5, 14],steps,height);
}
}

module OpenDyslexicRegular_contour00x75(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x75_skeleton(height);
			OpenDyslexicRegular_contour00x75_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x75_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x75(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x75(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x75=[[5, -1], [33, 35]];

module OpenDyslexicRegular_letter0x75(steps=2, height) {
	OpenDyslexicRegular_chunk10x75(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x76_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 33], [4, 34], [4.5, 34.5], 
		[5, 35], [6, 35], [7.5, 35.0], 
		[9, 35], [10, 35], [11, 34], 
		[16.0, 23.0], [21, 12], [21, 11], 
		[21.5, 11.0], [22, 11], [23, 12], 
		[28.0, 23.0], [33, 34], [33, 35], 
		[35, 35], [36.5, 35.0], [38, 35], 
		[39, 35], [39.0, 34.5], [39, 34], 
		[39, 33], [32.5, 17.0], [26, 1], 
		[26, 0], [25, 0], [22.0, 0.0], 
		[19, 0], [18, 0], [17, 1], 
		[11.0, 17.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 33], [4, 34], [4.5, 34.5], 
		[5, 35], [6, 35], [7.5, 35.0], 
		[9, 35], [10, 35], [11, 34], 
		[16.0, 23.0], [21, 12], [21, 11], 
		[21.5, 11.0], [22, 11], [23, 12], 
		[28.0, 23.0], [33, 34], [33, 35], 
		[35, 35], [36.5, 35.0], [38, 35], 
		[39, 35], [39.0, 34.5], [39, 34], 
		[39, 33], [32.5, 17.0], [26, 1], 
		[26, 0], [25, 0], [22.0, 0.0], 
		[19, 0], [18, 0], [17, 1], 
		[11.0, 17.0], ]);
}}}

module OpenDyslexicRegular_contour00x76_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21, 12], [21, 11], [21.5, 11.0],steps,height);
	BezConic([21.5, 11.0], [22, 11], [23, 12],steps,height);
	BezConic([39.0, 34.5], [39, 34], [39, 33],steps,height);
}
}

module OpenDyslexicRegular_contour00x76_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 33], [4, 34], [4.5, 34.5],steps,height);
	BezConic([4.5, 34.5], [5, 35], [6, 35],steps,height);
	BezConic([9, 35], [10, 35], [11, 34],steps,height);
	BezConic([33, 34], [33, 35], [35, 35],steps,height);
	BezConic([38, 35], [39, 35], [39.0, 34.5],steps,height);
	BezConic([26, 1], [26, 0], [25, 0],steps,height);
	BezConic([19, 0], [18, 0], [17, 1],steps,height);
}
}

module OpenDyslexicRegular_contour00x76(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x76_skeleton(height);
			OpenDyslexicRegular_contour00x76_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x76_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x76(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x76(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x76=[[4, 0], [39, 35]];

module OpenDyslexicRegular_letter0x76(steps=2, height) {
	OpenDyslexicRegular_chunk10x76(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x77_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 33], [4, 35], [6, 35], 
		[7.5, 35.0], [9, 35], [10, 35], 
		[10, 34], [13.5, 23.5], [17, 13], 
		[17, 12], [17.5, 12.0], [18, 12], 
		[19, 13], [21.0, 17.0], [23, 21], 
		[24, 22], [25, 22], [27.5, 22.0], 
		[30, 22], [31, 22], [32, 21], 
		[34.0, 17.0], [36, 13], [37, 12], 
		[37.5, 12.0], [38, 12], [38, 13], 
		[41.5, 23.5], [45, 34], [45, 35], 
		[47, 35], [48.0, 35.0], [49, 35], 
		[51, 35], [50, 33], [46.0, 17.0], 
		[42, 1], [41, 0], [40, 0], 
		[37.5, 0.0], [35, 0], [33, 0], 
		[33, 1], [31.0, 6.0], [29, 11], 
		[28, 12], [27.5, 12.0], [27, 12], 
		[27, 11], [24.5, 6.0], [22, 1], 
		[22, 0], [20, 0], [17.5, 0.0], 
		[15, 0], [14, 0], [14, 1], 
		[9.5, 17.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 33], [4, 35], [6, 35], 
		[7.5, 35.0], [9, 35], [10, 35], 
		[10, 34], [13.5, 23.5], [17, 13], 
		[17, 12], [17.5, 12.0], [18, 12], 
		[19, 13], [21.0, 17.0], [23, 21], 
		[24, 22], [25, 22], [27.5, 22.0], 
		[30, 22], [31, 22], [32, 21], 
		[34.0, 17.0], [36, 13], [37, 12], 
		[37.5, 12.0], [38, 12], [38, 13], 
		[41.5, 23.5], [45, 34], [45, 35], 
		[47, 35], [48.0, 35.0], [49, 35], 
		[51, 35], [50, 33], [46.0, 17.0], 
		[42, 1], [41, 0], [40, 0], 
		[37.5, 0.0], [35, 0], [33, 0], 
		[33, 1], [31.0, 6.0], [29, 11], 
		[28, 12], [27.5, 12.0], [27, 12], 
		[27, 11], [24.5, 6.0], [22, 1], 
		[22, 0], [20, 0], [17.5, 0.0], 
		[15, 0], [14, 0], [14, 1], 
		[9.5, 17.0], ]);
}}}

module OpenDyslexicRegular_contour00x77_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([17, 13], [17, 12], [17.5, 12.0],steps,height);
	BezConic([17.5, 12.0], [18, 12], [19, 13],steps,height);
	BezConic([36, 13], [37, 12], [37.5, 12.0],steps,height);
	BezConic([37.5, 12.0], [38, 12], [38, 13],steps,height);
	BezConic([29, 11], [28, 12], [27.5, 12.0],steps,height);
	BezConic([27.5, 12.0], [27, 12], [27, 11],steps,height);
}
}

module OpenDyslexicRegular_contour00x77_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 33], [4, 35], [6, 35],steps,height);
	BezConic([9, 35], [10, 35], [10, 34],steps,height);
	BezConic([23, 21], [24, 22], [25, 22],steps,height);
	BezConic([30, 22], [31, 22], [32, 21],steps,height);
	BezConic([45, 34], [45, 35], [47, 35],steps,height);
	BezConic([49, 35], [51, 35], [50, 33],steps,height);
	BezConic([42, 1], [41, 0], [40, 0],steps,height);
	BezConic([35, 0], [33, 0], [33, 1],steps,height);
	BezConic([22, 1], [22, 0], [20, 0],steps,height);
	BezConic([15, 0], [14, 0], [14, 1],steps,height);
}
}

module OpenDyslexicRegular_contour00x77(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x77_skeleton(height);
			OpenDyslexicRegular_contour00x77_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x77_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x77(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x77(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x77=[[4, 0], [51, 35]];

module OpenDyslexicRegular_letter0x77(steps=2, height) {
	OpenDyslexicRegular_chunk10x77(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x78_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[36, 35], [37, 35], [37.0, 34.5], 
		[37, 34], [37, 33], [31.5, 25.5], 
		[26, 18], [26, 16], [27, 15], 
		[32.5, 8.5], [38, 2], [39, 1], 
		[39.0, 0.5], [39, 0], [38, 0], 
		[34.5, 0.0], [31, 0], [30, 0], 
		[29, 1], [26.0, 5.0], [23, 9], 
		[22, 11], [21, 9], [17.5, 5.0], 
		[14, 1], [13, 0], [12, 0], 
		[9.0, 0.0], [6, 0], [5, 0], 
		[4.5, 0.5], [4, 1], [5, 2], 
		[11.0, 9.0], [17, 16], [18, 17], 
		[17, 18], [12.0, 25.5], [7, 33], 
		[7, 34], [7.0, 34.5], [7, 35], 
		[8, 35], [9.5, 35.0], [11, 35], 
		[12, 35], [13, 34], [17.0, 28.0], 
		[21, 22], [21, 22], [21.5, 22.0], 
		[22, 22], [23, 22], [27.5, 28.0], 
		[32, 34], [32, 35], [33, 35], 
		[34.5, 35.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[36, 35], [37, 35], [37.0, 34.5], 
		[37, 34], [37, 33], [31.5, 25.5], 
		[26, 18], [26, 16], [27, 15], 
		[32.5, 8.5], [38, 2], [39, 1], 
		[39.0, 0.5], [39, 0], [38, 0], 
		[34.5, 0.0], [31, 0], [30, 0], 
		[29, 1], [26.0, 5.0], [23, 9], 
		[22, 11], [21, 9], [17.5, 5.0], 
		[14, 1], [13, 0], [12, 0], 
		[9.0, 0.0], [6, 0], [5, 0], 
		[4.5, 0.5], [4, 1], [5, 2], 
		[11.0, 9.0], [17, 16], [18, 17], 
		[17, 18], [12.0, 25.5], [7, 33], 
		[7, 34], [7.0, 34.5], [7, 35], 
		[8, 35], [9.5, 35.0], [11, 35], 
		[12, 35], [13, 34], [17.0, 28.0], 
		[21, 22], [21, 22], [21.5, 22.0], 
		[22, 22], [23, 22], [27.5, 28.0], 
		[32, 34], [32, 35], [33, 35], 
		[34.5, 35.0], ]);
}}}

module OpenDyslexicRegular_contour00x78_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([37.0, 34.5], [37, 34], [37, 33],steps,height);
	BezConic([26, 18], [26, 16], [27, 15],steps,height);
	BezConic([23, 9], [22, 11], [21, 9],steps,height);
	BezConic([17, 16], [18, 17], [17, 18],steps,height);
	BezConic([7, 33], [7, 34], [7.0, 34.5],steps,height);
	BezConic([21, 22], [21, 22], [21.5, 22.0],steps,height);
	BezConic([21.5, 22.0], [22, 22], [23, 22],steps,height);
}
}

module OpenDyslexicRegular_contour00x78_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([36, 35], [37, 35], [37.0, 34.5],steps,height);
	BezConic([38, 2], [39, 1], [39.0, 0.5],steps,height);
	BezConic([39.0, 0.5], [39, 0], [38, 0],steps,height);
	BezConic([31, 0], [30, 0], [29, 1],steps,height);
	BezConic([14, 1], [13, 0], [12, 0],steps,height);
	BezConic([6, 0], [5, 0], [4.5, 0.5],steps,height);
	BezConic([4.5, 0.5], [4, 1], [5, 2],steps,height);
	BezConic([7.0, 34.5], [7, 35], [8, 35],steps,height);
	BezConic([11, 35], [12, 35], [13, 34],steps,height);
	BezConic([32, 34], [32, 35], [33, 35],steps,height);
}
}

module OpenDyslexicRegular_contour00x78(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x78_skeleton(height);
			OpenDyslexicRegular_contour00x78_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x78_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x78(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x78(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x78=[[4, 0], [39, 35]];

module OpenDyslexicRegular_letter0x78(steps=2, height) {
	OpenDyslexicRegular_chunk10x78(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x79_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[25, -3], [23, -8], [21.0, -11.0], 
		[19, -14], [17.5, -15.5], [16, -17], 
		[14.0, -17.5], [12, -18], [10, -18], 
		[8.0, -18.0], [6, -18], [5, -18], 
		[5, -17], [5.0, -14.5], [5, -12], 
		[5, -10], [6, -10], [7.5, -10.0], 
		[9, -10], [10, -10], [12.0, -9.0], 
		[14, -8], [15.5, -6.5], [17, -5], 
		[18.0, -2.5], [19, 0], [20, 2], 
		[20, 2], [20.0, 2.5], [20, 3], 
		[20, 4], [13.0, 18.5], [6, 33], 
		[6, 34], [6.5, 34.5], [7, 35], 
		[8, 35], [9.0, 35.0], [10, 35], 
		[12, 35], [12, 34], [17.5, 25.5], 
		[23, 17], [23, 16], [24.0, 16.0], 
		[25, 16], [25, 17], [29.0, 25.5], 
		[33, 34], [34, 35], [35, 35], 
		[36.5, 35.0], [38, 35], [39, 35], 
		[39.0, 34.5], [39, 34], [39, 33], 
		[32.0, 15.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[25, -3], [23, -8], [21.0, -11.0], 
		[19, -14], [17.5, -15.5], [16, -17], 
		[14.0, -17.5], [12, -18], [10, -18], 
		[8.0, -18.0], [6, -18], [5, -18], 
		[5, -17], [5.0, -14.5], [5, -12], 
		[5, -10], [6, -10], [7.5, -10.0], 
		[9, -10], [10, -10], [12.0, -9.0], 
		[14, -8], [15.5, -6.5], [17, -5], 
		[18.0, -2.5], [19, 0], [20, 2], 
		[20, 2], [20.0, 2.5], [20, 3], 
		[20, 4], [13.0, 18.5], [6, 33], 
		[6, 34], [6.5, 34.5], [7, 35], 
		[8, 35], [9.0, 35.0], [10, 35], 
		[12, 35], [12, 34], [17.5, 25.5], 
		[23, 17], [23, 16], [24.0, 16.0], 
		[25, 16], [25, 17], [29.0, 25.5], 
		[33, 34], [34, 35], [35, 35], 
		[36.5, 35.0], [38, 35], [39, 35], 
		[39.0, 34.5], [39, 34], [39, 33], 
		[32.0, 15.0], ]);
}}}

module OpenDyslexicRegular_contour00x79_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([9, -10], [10, -10], [12.0, -9.0],steps,height);
	BezConic([12.0, -9.0], [14, -8], [15.5, -6.5],steps,height);
	BezConic([15.5, -6.5], [17, -5], [18.0, -2.5],steps,height);
	BezConic([20, 2], [20, 2], [20.0, 2.5],steps,height);
	BezConic([20.0, 2.5], [20, 3], [20, 4],steps,height);
	BezConic([23, 17], [23, 16], [24.0, 16.0],steps,height);
	BezConic([24.0, 16.0], [25, 16], [25, 17],steps,height);
	BezConic([39.0, 34.5], [39, 34], [39, 33],steps,height);
}
}

module OpenDyslexicRegular_contour00x79_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, -3], [23, -8], [21.0, -11.0],steps,height);
	BezConic([21.0, -11.0], [19, -14], [17.5, -15.5],steps,height);
	BezConic([17.5, -15.5], [16, -17], [14.0, -17.5],steps,height);
	BezConic([14.0, -17.5], [12, -18], [10, -18],steps,height);
	BezConic([6, -18], [5, -18], [5, -17],steps,height);
	BezConic([5, -12], [5, -10], [6, -10],steps,height);
	BezConic([18.0, -2.5], [19, 0], [20, 2],steps,height);
	BezConic([6, 33], [6, 34], [6.5, 34.5],steps,height);
	BezConic([6.5, 34.5], [7, 35], [8, 35],steps,height);
	BezConic([10, 35], [12, 35], [12, 34],steps,height);
	BezConic([33, 34], [34, 35], [35, 35],steps,height);
	BezConic([38, 35], [39, 35], [39.0, 34.5],steps,height);
}
}

module OpenDyslexicRegular_contour00x79(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x79_skeleton(height);
			OpenDyslexicRegular_contour00x79_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x79_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x79(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x79(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x79=[[5, -18], [39, 35]];

module OpenDyslexicRegular_letter0x79(steps=2, height) {
	OpenDyslexicRegular_chunk10x79(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x7a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 33], [7, 35], [8, 35], 
		[20.0, 35.0], [32, 35], [34, 35], 
		[34, 33], [34.0, 32.0], [34, 31], 
		[34, 30], [33, 29], [24.0, 19.5], 
		[15, 10], [14, 9], [14.5, 8.5], 
		[15, 8], [16, 8], [24.5, 8.0], 
		[33, 8], [34, 8], [34, 6], 
		[34.0, 4.0], [34, 2], [34, 0], 
		[33, 0], [19.5, 0.0], [6, 0], 
		[5, 0], [5, 2], [5.0, 4.5], 
		[5, 7], [5, 8], [5, 9], 
		[15.5, 19.0], [26, 29], [26, 30], 
		[26.0, 30.5], [26, 31], [25, 31], 
		[16.5, 31.0], [8, 31], [7, 31], 
		[7, 32],[7.0, 32.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 33], [7, 35], [8, 35], 
		[20.0, 35.0], [32, 35], [34, 35], 
		[34, 33], [34.0, 32.0], [34, 31], 
		[34, 30], [33, 29], [24.0, 19.5], 
		[15, 10], [14, 9], [14.5, 8.5], 
		[15, 8], [16, 8], [24.5, 8.0], 
		[33, 8], [34, 8], [34, 6], 
		[34.0, 4.0], [34, 2], [34, 0], 
		[33, 0], [19.5, 0.0], [6, 0], 
		[5, 0], [5, 2], [5.0, 4.5], 
		[5, 7], [5, 8], [5, 9], 
		[15.5, 19.0], [26, 29], [26, 30], 
		[26.0, 30.5], [26, 31], [25, 31], 
		[16.5, 31.0], [8, 31], [7, 31], 
		[7, 32],[7.0, 32.5], ]);
}}}

module OpenDyslexicRegular_contour00x7a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 10], [14, 9], [14.5, 8.5],steps,height);
	BezConic([14.5, 8.5], [15, 8], [16, 8],steps,height);
	BezConic([5, 7], [5, 8], [5, 9],steps,height);
	BezConic([26, 29], [26, 30], [26.0, 30.5],steps,height);
	BezConic([26.0, 30.5], [26, 31], [25, 31],steps,height);
}
}

module OpenDyslexicRegular_contour00x7a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, 33], [7, 35], [8, 35],steps,height);
	BezConic([32, 35], [34, 35], [34, 33],steps,height);
	BezConic([34, 31], [34, 30], [33, 29],steps,height);
	BezConic([33, 8], [34, 8], [34, 6],steps,height);
	BezConic([34, 2], [34, 0], [33, 0],steps,height);
	BezConic([6, 0], [5, 0], [5, 2],steps,height);
	BezConic([8, 31], [7, 31], [7, 32],steps,height);
}
}

module OpenDyslexicRegular_contour00x7a(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x7a_skeleton(height);
			OpenDyslexicRegular_contour00x7a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x7a_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x7a(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x7a(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x7a=[[5, 0], [34, 35]];

module OpenDyslexicRegular_letter0x7a(steps=2, height) {
	OpenDyslexicRegular_chunk10x7a(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x7b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[26, 2], [27, 2], [27, 1], 
		[27.0, -2.0], [27, -5], [27, -6], 
		[26, -6], [25.5, -6.0], [25, -6], 
		[21, -6], [18.5, -5.5], [16, -5], 
		[14.5, -3.5], [13, -2], [12.0, 0.5], 
		[11, 3], [11, 6], [11, 11], 
		[11.0, 14.0], [11, 17], [10.5, 19.0], 
		[10, 21], [9.0, 21.5], [8, 22], 
		[7, 22], [6.5, 22.0], [6, 22], 
		[5, 22], [5, 23], [5.0, 25.5], 
		[5, 28], [5, 29], [6, 29], 
		[6.5, 29.0], [7, 29], [8, 29], 
		[9.5, 29.5], [11, 30], [11.5, 32.5], 
		[12, 35], [12.0, 39.5], [12, 44], 
		[13, 51], [13, 55], [13.5, 57.0], 
		[14, 59], [16.0, 60.0], [18, 61], 
		[20.5, 61.5], [23, 62], [27, 62], 
		[27.5, 62.0], [28, 62], [29, 62], 
		[29, 61], [29.0, 59.5], [29, 58], 
		[28, 57], [28, 58], [27.0, 58.0], 
		[26, 58], [24, 58], [22.5, 57.5], 
		[21, 57], [20.5, 56.5], [20, 56], 
		[19.5, 54.5], [19, 53], [19, 51], 
		[19, 42], [18.5, 37.5], [18, 33], 
		[17.5, 30.5], [17, 28], [16.0, 27.0], 
		[15, 26], [13, 26], [12, 25], 
		[13, 25], [15, 24], [16.0, 23.5], 
		[17, 23], [17.0, 21.0], [17, 19], 
		[17.5, 16.0], [18, 13], [18, 8], 
		[18, 6], [18.0, 5.0], [18, 4], 
		[19.0, 3.0], [20, 2], [21.0, 2.0], 
		[22, 2], [25, 2], [25.5, 2.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[26, 2], [27, 2], [27, 1], 
		[27.0, -2.0], [27, -5], [27, -6], 
		[26, -6], [25.5, -6.0], [25, -6], 
		[21, -6], [18.5, -5.5], [16, -5], 
		[14.5, -3.5], [13, -2], [12.0, 0.5], 
		[11, 3], [11, 6], [11, 11], 
		[11.0, 14.0], [11, 17], [10.5, 19.0], 
		[10, 21], [9.0, 21.5], [8, 22], 
		[7, 22], [6.5, 22.0], [6, 22], 
		[5, 22], [5, 23], [5.0, 25.5], 
		[5, 28], [5, 29], [6, 29], 
		[6.5, 29.0], [7, 29], [8, 29], 
		[9.5, 29.5], [11, 30], [11.5, 32.5], 
		[12, 35], [12.0, 39.5], [12, 44], 
		[13, 51], [13, 55], [13.5, 57.0], 
		[14, 59], [16.0, 60.0], [18, 61], 
		[20.5, 61.5], [23, 62], [27, 62], 
		[27.5, 62.0], [28, 62], [29, 62], 
		[29, 61], [29.0, 59.5], [29, 58], 
		[28, 57], [28, 58], [27.0, 58.0], 
		[26, 58], [24, 58], [22.5, 57.5], 
		[21, 57], [20.5, 56.5], [20, 56], 
		[19.5, 54.5], [19, 53], [19, 51], 
		[19, 42], [18.5, 37.5], [18, 33], 
		[17.5, 30.5], [17, 28], [16.0, 27.0], 
		[15, 26], [13, 26], [12, 25], 
		[13, 25], [15, 24], [16.0, 23.5], 
		[17, 23], [17.0, 21.0], [17, 19], 
		[17.5, 16.0], [18, 13], [18, 8], 
		[18, 6], [18.0, 5.0], [18, 4], 
		[19.0, 3.0], [20, 2], [21.0, 2.0], 
		[22, 2], [25, 2], [25.5, 2.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x7b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([11, 6], [11, 11], [11.0, 14.0],steps,height);
	BezConic([11.0, 14.0], [11, 17], [10.5, 19.0],steps,height);
	BezConic([10.5, 19.0], [10, 21], [9.0, 21.5],steps,height);
	BezConic([9.0, 21.5], [8, 22], [7, 22],steps,height);
	BezConic([7, 29], [8, 29], [9.5, 29.5],steps,height);
	BezConic([9.5, 29.5], [11, 30], [11.5, 32.5],steps,height);
	BezConic([11.5, 32.5], [12, 35], [12.0, 39.5],steps,height);
	BezConic([26, 58], [24, 58], [22.5, 57.5],steps,height);
	BezConic([22.5, 57.5], [21, 57], [20.5, 56.5],steps,height);
	BezConic([20.5, 56.5], [20, 56], [19.5, 54.5],steps,height);
	BezConic([19.5, 54.5], [19, 53], [19, 51],steps,height);
	BezConic([13, 26], [12, 25], [13, 25],steps,height);
	BezConic([17.0, 21.0], [17, 19], [17.5, 16.0],steps,height);
	BezConic([18, 8], [18, 6], [18.0, 5.0],steps,height);
	BezConic([18.0, 5.0], [18, 4], [19.0, 3.0],steps,height);
	BezConic([19.0, 3.0], [20, 2], [21.0, 2.0],steps,height);
	BezConic([21.0, 2.0], [22, 2], [25, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x7b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([26, 2], [27, 2], [27, 1],steps,height);
	BezConic([27, -5], [27, -6], [26, -6],steps,height);
	BezConic([25, -6], [21, -6], [18.5, -5.5],steps,height);
	BezConic([18.5, -5.5], [16, -5], [14.5, -3.5],steps,height);
	BezConic([14.5, -3.5], [13, -2], [12.0, 0.5],steps,height);
	BezConic([12.0, 0.5], [11, 3], [11, 6],steps,height);
	BezConic([6, 22], [5, 22], [5, 23],steps,height);
	BezConic([5, 28], [5, 29], [6, 29],steps,height);
	BezConic([12.0, 39.5], [12, 44], [13, 51],steps,height);
	BezConic([13, 51], [13, 55], [13.5, 57.0],steps,height);
	BezConic([13.5, 57.0], [14, 59], [16.0, 60.0],steps,height);
	BezConic([16.0, 60.0], [18, 61], [20.5, 61.5],steps,height);
	BezConic([20.5, 61.5], [23, 62], [27, 62],steps,height);
	BezConic([28, 62], [29, 62], [29, 61],steps,height);
	BezConic([29, 58], [28, 57], [28, 58],steps,height);
	BezConic([19, 51], [19, 42], [18.5, 37.5],steps,height);
	BezConic([18.5, 37.5], [18, 33], [17.5, 30.5],steps,height);
	BezConic([17.5, 30.5], [17, 28], [16.0, 27.0],steps,height);
	BezConic([16.0, 27.0], [15, 26], [13, 26],steps,height);
	BezConic([13, 25], [15, 24], [16.0, 23.5],steps,height);
	BezConic([16.0, 23.5], [17, 23], [17.0, 21.0],steps,height);
	BezConic([17.5, 16.0], [18, 13], [18, 8],steps,height);
}
}

module OpenDyslexicRegular_contour00x7b(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x7b_skeleton(height);
			OpenDyslexicRegular_contour00x7b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x7b_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x7b(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x7b(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x7b=[[5, -6], [29, 62]];

module OpenDyslexicRegular_letter0x7b(steps=2, height) {
	OpenDyslexicRegular_chunk10x7b(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x7c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[13, 22], [12.5, 4.0], [12, -14], 
		[12, -15], [11, -15], [8.5, -15.0], 
		[6, -15], [5, -15], [5, -14], 
		[6.0, 4.0], [7, 22], [7.5, 40.5], 
		[8, 59], [8, 60], [9, 60], 
		[11.0, 60.0], [13, 60], [14, 60], 
		[14, 59],[13.5, 40.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[13, 22], [12.5, 4.0], [12, -14], 
		[12, -15], [11, -15], [8.5, -15.0], 
		[6, -15], [5, -15], [5, -14], 
		[6.0, 4.0], [7, 22], [7.5, 40.5], 
		[8, 59], [8, 60], [9, 60], 
		[11.0, 60.0], [13, 60], [14, 60], 
		[14, 59],[13.5, 40.5], ]);
}}}

module OpenDyslexicRegular_contour00x7c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module OpenDyslexicRegular_contour00x7c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, -14], [12, -15], [11, -15],steps,height);
	BezConic([6, -15], [5, -15], [5, -14],steps,height);
	BezConic([8, 59], [8, 60], [9, 60],steps,height);
	BezConic([13, 60], [14, 60], [14, 59],steps,height);
}
}

module OpenDyslexicRegular_contour00x7c(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x7c_skeleton(height);
			OpenDyslexicRegular_contour00x7c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x7c_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x7c(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x7c(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x7c=[[5, -15], [14, 60]];

module OpenDyslexicRegular_letter0x7c(steps=2, height) {
	OpenDyslexicRegular_chunk10x7c(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x7d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[9, 2], [11, 2], [12.5, 2.0], 
		[14, 2], [15.0, 3.0], [16, 4], 
		[16.0, 5.0], [16, 6], [16, 8], 
		[16, 13], [16.0, 16.0], [16, 19], 
		[16.5, 21.0], [17, 23], [18.0, 23.5], 
		[19, 24], [21, 25], [22, 25], 
		[21, 26], [19, 26], [17.5, 27.0], 
		[16, 28], [15.5, 30.5], [15, 33], 
		[15.0, 37.5], [15, 42], [15, 51], 
		[15, 53], [14.5, 54.5], [14, 56], 
		[13.5, 56.5], [13, 57], [11.5, 57.5], 
		[10, 58], [7, 58], [6.5, 58.0], 
		[6, 58], [5, 57], [5, 58], 
		[5.0, 59.5], [5, 61], [5, 62], 
		[6, 62], [6.0, 62.0], [6, 62], 
		[10, 62], [13.0, 61.5], [16, 61], 
		[17.5, 60.0], [19, 59], [20.0, 57.0], 
		[21, 55], [21, 51], [21, 44], 
		[21.5, 39.5], [22, 35], [22.5, 32.5], 
		[23, 30], [24.0, 29.5], [25, 29], 
		[27, 29], [27.5, 29.0], [28, 29], 
		[29, 29], [29, 28], [29.0, 25.5], 
		[29, 23], [29, 22], [28, 22], 
		[27.5, 22.0], [27, 22], [26, 22], 
		[25.0, 21.5], [24, 21], [23.5, 19.0], 
		[23, 17], [23.0, 14.0], [23, 11], 
		[23, 6], [23, 3], [22.0, 0.5], 
		[21, -2], [19.5, -3.5], [18, -5], 
		[15.5, -5.5], [13, -6], [9, -6], 
		[8.5, -6.0], [8, -6], [7, -6], 
		[7, -5], [7.0, -2.0], [7, 1], 
		[7, 2], [8, 2], [8.5, 2.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[9, 2], [11, 2], [12.5, 2.0], 
		[14, 2], [15.0, 3.0], [16, 4], 
		[16.0, 5.0], [16, 6], [16, 8], 
		[16, 13], [16.0, 16.0], [16, 19], 
		[16.5, 21.0], [17, 23], [18.0, 23.5], 
		[19, 24], [21, 25], [22, 25], 
		[21, 26], [19, 26], [17.5, 27.0], 
		[16, 28], [15.5, 30.5], [15, 33], 
		[15.0, 37.5], [15, 42], [15, 51], 
		[15, 53], [14.5, 54.5], [14, 56], 
		[13.5, 56.5], [13, 57], [11.5, 57.5], 
		[10, 58], [7, 58], [6.5, 58.0], 
		[6, 58], [5, 57], [5, 58], 
		[5.0, 59.5], [5, 61], [5, 62], 
		[6, 62], [6.0, 62.0], [6, 62], 
		[10, 62], [13.0, 61.5], [16, 61], 
		[17.5, 60.0], [19, 59], [20.0, 57.0], 
		[21, 55], [21, 51], [21, 44], 
		[21.5, 39.5], [22, 35], [22.5, 32.5], 
		[23, 30], [24.0, 29.5], [25, 29], 
		[27, 29], [27.5, 29.0], [28, 29], 
		[29, 29], [29, 28], [29.0, 25.5], 
		[29, 23], [29, 22], [28, 22], 
		[27.5, 22.0], [27, 22], [26, 22], 
		[25.0, 21.5], [24, 21], [23.5, 19.0], 
		[23, 17], [23.0, 14.0], [23, 11], 
		[23, 6], [23, 3], [22.0, 0.5], 
		[21, -2], [19.5, -3.5], [18, -5], 
		[15.5, -5.5], [13, -6], [9, -6], 
		[8.5, -6.0], [8, -6], [7, -6], 
		[7, -5], [7.0, -2.0], [7, 1], 
		[7, 2], [8, 2], [8.5, 2.0], 
		 ]);
}}}

module OpenDyslexicRegular_contour00x7d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([9, 2], [11, 2], [12.5, 2.0],steps,height);
	BezConic([12.5, 2.0], [14, 2], [15.0, 3.0],steps,height);
	BezConic([15.0, 3.0], [16, 4], [16.0, 5.0],steps,height);
	BezConic([16.0, 5.0], [16, 6], [16, 8],steps,height);
	BezConic([16, 8], [16, 13], [16.0, 16.0],steps,height);
	BezConic([18.0, 23.5], [19, 24], [21, 25],steps,height);
	BezConic([21, 25], [22, 25], [21, 26],steps,height);
	BezConic([15.0, 37.5], [15, 42], [15, 51],steps,height);
	BezConic([15, 51], [15, 53], [14.5, 54.5],steps,height);
	BezConic([14.5, 54.5], [14, 56], [13.5, 56.5],steps,height);
	BezConic([13.5, 56.5], [13, 57], [11.5, 57.5],steps,height);
	BezConic([11.5, 57.5], [10, 58], [7, 58],steps,height);
	BezConic([21, 51], [21, 44], [21.5, 39.5],steps,height);
	BezConic([21.5, 39.5], [22, 35], [22.5, 32.5],steps,height);
	BezConic([22.5, 32.5], [23, 30], [24.0, 29.5],steps,height);
	BezConic([24.0, 29.5], [25, 29], [27, 29],steps,height);
	BezConic([27, 22], [26, 22], [25.0, 21.5],steps,height);
	BezConic([25.0, 21.5], [24, 21], [23.5, 19.0],steps,height);
	BezConic([23.5, 19.0], [23, 17], [23.0, 14.0],steps,height);
	BezConic([23.0, 14.0], [23, 11], [23, 6],steps,height);
}
}

module OpenDyslexicRegular_contour00x7d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([16.0, 16.0], [16, 19], [16.5, 21.0],steps,height);
	BezConic([16.5, 21.0], [17, 23], [18.0, 23.5],steps,height);
	BezConic([21, 26], [19, 26], [17.5, 27.0],steps,height);
	BezConic([17.5, 27.0], [16, 28], [15.5, 30.5],steps,height);
	BezConic([15.5, 30.5], [15, 33], [15.0, 37.5],steps,height);
	BezConic([6, 58], [5, 57], [5, 58],steps,height);
	BezConic([5, 61], [5, 62], [6, 62],steps,height);
	BezConic([6, 62], [10, 62], [13.0, 61.5],steps,height);
	BezConic([13.0, 61.5], [16, 61], [17.5, 60.0],steps,height);
	BezConic([17.5, 60.0], [19, 59], [20.0, 57.0],steps,height);
	BezConic([20.0, 57.0], [21, 55], [21, 51],steps,height);
	BezConic([28, 29], [29, 29], [29, 28],steps,height);
	BezConic([29, 23], [29, 22], [28, 22],steps,height);
	BezConic([23, 6], [23, 3], [22.0, 0.5],steps,height);
	BezConic([22.0, 0.5], [21, -2], [19.5, -3.5],steps,height);
	BezConic([19.5, -3.5], [18, -5], [15.5, -5.5],steps,height);
	BezConic([15.5, -5.5], [13, -6], [9, -6],steps,height);
	BezConic([8, -6], [7, -6], [7, -5],steps,height);
	BezConic([7, 1], [7, 2], [8, 2],steps,height);
}
}

module OpenDyslexicRegular_contour00x7d(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x7d_skeleton(height);
			OpenDyslexicRegular_contour00x7d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x7d_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x7d(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x7d(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x7d=[[5, -6], [29, 62]];

module OpenDyslexicRegular_letter0x7d(steps=2, height) {
	OpenDyslexicRegular_chunk10x7d(steps, height);
} //end skeleton

module OpenDyslexicRegular_contour00x7e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[51, 20], [51, 19], [51, 19], 
		[49, 17], [47.0, 16.0], [45, 15], 
		[43.5, 14.0], [42, 13], [40.0, 12.0], 
		[38, 11], [36, 11], [33, 11], 
		[30.5, 12.0], [28, 13], [26.0, 14.0], 
		[24, 15], [22.0, 15.5], [20, 16], 
		[18, 16], [16, 16], [15.0, 15.5], 
		[14, 15], [12.5, 14.0], [11, 13], 
		[9.5, 11.5], [8, 10], [6, 8], 
		[5, 7], [5.0, 7.5], [5, 8], 
		[5, 8], [5.0, 14.5], [5, 21], 
		[5, 22], [5, 22], [7, 24], 
		[8.5, 25.0], [10, 26], [11.5, 26.5], 
		[13, 27], [15.0, 27.5], [17, 28], 
		[20, 28], [22, 28], [24.0, 27.5], 
		[26, 27], [28.5, 26.0], [31, 25], 
		[33.0, 24.5], [35, 24], [37, 24], 
		[38, 24], [39.5, 24.5], [41, 25], 
		[42.5, 25.5], [44, 26], [45.5, 27.5], 
		[47, 29], [50, 32], [50, 32], 
		[50.5, 32.0], [51, 32], [51, 31], 
		[51.0, 25.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[51, 20], [51, 19], [51, 19], 
		[49, 17], [47.0, 16.0], [45, 15], 
		[43.5, 14.0], [42, 13], [40.0, 12.0], 
		[38, 11], [36, 11], [33, 11], 
		[30.5, 12.0], [28, 13], [26.0, 14.0], 
		[24, 15], [22.0, 15.5], [20, 16], 
		[18, 16], [16, 16], [15.0, 15.5], 
		[14, 15], [12.5, 14.0], [11, 13], 
		[9.5, 11.5], [8, 10], [6, 8], 
		[5, 7], [5.0, 7.5], [5, 8], 
		[5, 8], [5.0, 14.5], [5, 21], 
		[5, 22], [5, 22], [7, 24], 
		[8.5, 25.0], [10, 26], [11.5, 26.5], 
		[13, 27], [15.0, 27.5], [17, 28], 
		[20, 28], [22, 28], [24.0, 27.5], 
		[26, 27], [28.5, 26.0], [31, 25], 
		[33.0, 24.5], [35, 24], [37, 24], 
		[38, 24], [39.5, 24.5], [41, 25], 
		[42.5, 25.5], [44, 26], [45.5, 27.5], 
		[47, 29], [50, 32], [50, 32], 
		[50.5, 32.0], [51, 32], [51, 31], 
		[51.0, 25.5], ]);
}}}

module OpenDyslexicRegular_contour00x7e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([51, 20], [51, 19], [51, 19],steps,height);
	BezConic([47.0, 16.0], [45, 15], [43.5, 14.0],steps,height);
	BezConic([26.0, 14.0], [24, 15], [22.0, 15.5],steps,height);
	BezConic([22.0, 15.5], [20, 16], [18, 16],steps,height);
	BezConic([18, 16], [16, 16], [15.0, 15.5],steps,height);
	BezConic([15.0, 15.5], [14, 15], [12.5, 14.0],steps,height);
	BezConic([12.5, 14.0], [11, 13], [9.5, 11.5],steps,height);
	BezConic([9.5, 11.5], [8, 10], [6, 8],steps,height);
	BezConic([5.0, 7.5], [5, 8], [5, 8],steps,height);
	BezConic([5, 21], [5, 22], [5, 22],steps,height);
	BezConic([28.5, 26.0], [31, 25], [33.0, 24.5],steps,height);
	BezConic([33.0, 24.5], [35, 24], [37, 24],steps,height);
	BezConic([37, 24], [38, 24], [39.5, 24.5],steps,height);
	BezConic([39.5, 24.5], [41, 25], [42.5, 25.5],steps,height);
	BezConic([42.5, 25.5], [44, 26], [45.5, 27.5],steps,height);
	BezConic([45.5, 27.5], [47, 29], [50, 32],steps,height);
	BezConic([50, 32], [50, 32], [50.5, 32.0],steps,height);
}
}

module OpenDyslexicRegular_contour00x7e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([51, 19], [49, 17], [47.0, 16.0],steps,height);
	BezConic([43.5, 14.0], [42, 13], [40.0, 12.0],steps,height);
	BezConic([40.0, 12.0], [38, 11], [36, 11],steps,height);
	BezConic([36, 11], [33, 11], [30.5, 12.0],steps,height);
	BezConic([30.5, 12.0], [28, 13], [26.0, 14.0],steps,height);
	BezConic([6, 8], [5, 7], [5.0, 7.5],steps,height);
	BezConic([5, 22], [7, 24], [8.5, 25.0],steps,height);
	BezConic([8.5, 25.0], [10, 26], [11.5, 26.5],steps,height);
	BezConic([11.5, 26.5], [13, 27], [15.0, 27.5],steps,height);
	BezConic([15.0, 27.5], [17, 28], [20, 28],steps,height);
	BezConic([20, 28], [22, 28], [24.0, 27.5],steps,height);
	BezConic([24.0, 27.5], [26, 27], [28.5, 26.0],steps,height);
	BezConic([50.5, 32.0], [51, 32], [51, 31],steps,height);
}
}

module OpenDyslexicRegular_contour00x7e(steps=2, height) {
	difference() {
		union() {
			OpenDyslexicRegular_contour00x7e_skeleton(height);
			OpenDyslexicRegular_contour00x7e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) OpenDyslexicRegular_contour00x7e_subtractive_curves(steps, height);
	}
}

module OpenDyslexicRegular_chunk10x7e(steps=2, height) {
	difference() {
		OpenDyslexicRegular_contour00x7e(steps, height);
		
	}
}

OpenDyslexicRegular_bbox0x7e=[[5, 7], [51, 32]];

module OpenDyslexicRegular_letter0x7e(steps=2, height) {
	OpenDyslexicRegular_chunk10x7e(steps, height);
} //end skeleton



function OpenDyslexicRegular_letter_space(char, extra) =
	char == "!" ? (14 + extra) : 
	char == "\"" ? (25 + extra) : 
	char == "#" ? (46 + extra) : 
	char == "$" ? (41 + extra) : 
	char == "%" ? (46 + extra) : 
	char == "&" ? (51 + extra) : 
	char == "'" ? (12 + extra) : 
	char == "(" ? (25 + extra) : 
	char == ")" ? (21 + extra) : 
	char == "*" ? (35 + extra) : 
	char == "+" ? (45 + extra) : 
	char == "," ? (17 + extra) : 
	char == "-" ? (22 + extra) : 
	char == "." ? (14 + extra) : 
	char == "/" ? (35 + extra) : 
	char == "0" ? (43 + extra) : 
	char == "1" ? (36 + extra) : 
	char == "2" ? (40 + extra) : 
	char == "3" ? (42 + extra) : 
	char == "4" ? (44 + extra) : 
	char == "5" ? (40 + extra) : 
	char == "6" ? (43 + extra) : 
	char == "7" ? (40 + extra) : 
	char == "8" ? (44 + extra) : 
	char == "9" ? (37 + extra) : 
	char == ":" ? (14 + extra) : 
	char == ";" ? (15 + extra) : 
	char == "<" ? (46 + extra) : 
	char == "=" ? (45 + extra) : 
	char == ">" ? (46 + extra) : 
	char == "?" ? (34 + extra) : 
	char == "@" ? (60 + extra) : 
	char == "A" ? (54 + extra) : 
	char == "B" ? (44 + extra) : 
	char == "C" ? (49 + extra) : 
	char == "D" ? (51 + extra) : 
	char == "E" ? (40 + extra) : 
	char == "F" ? (37 + extra) : 
	char == "G" ? (53 + extra) : 
	char == "H" ? (47 + extra) : 
	char == "I" ? (19 + extra) : 
	char == "J" ? (29 + extra) : 
	char == "K" ? (48 + extra) : 
	char == "L" ? (41 + extra) : 
	char == "M" ? (56 + extra) : 
	char == "N" ? (48 + extra) : 
	char == "O" ? (55 + extra) : 
	char == "P" ? (43 + extra) : 
	char == "Q" ? (55 + extra) : 
	char == "R" ? (48 + extra) : 
	char == "S" ? (45 + extra) : 
	char == "T" ? (51 + extra) : 
	char == "U" ? (48 + extra) : 
	char == "V" ? (50 + extra) : 
	char == "W" ? (74 + extra) : 
	char == "X" ? (51 + extra) : 
	char == "Y" ? (50 + extra) : 
	char == "Z" ? (51 + extra) : 
	char == "[" ? (22 + extra) : 
	char == "\\" ? (36 + extra) : 
	char == "]" ? (22 + extra) : 
	char == "^" ? (43 + extra) : 
	char == "_" ? (38 + extra) : 
	char == "`" ? (19 + extra) : 
	char == "a" ? (34 + extra) : 
	char == "b" ? (35 + extra) : 
	char == "c" ? (32 + extra) : 
	char == "d" ? (37 + extra) : 
	char == "e" ? (36 + extra) : 
	char == "f" ? (32 + extra) : 
	char == "g" ? (37 + extra) : 
	char == "h" ? (36 + extra) : 
	char == "i" ? (14 + extra) : 
	char == "j" ? (27 + extra) : 
	char == "k" ? (35 + extra) : 
	char == "l" ? (20 + extra) : 
	char == "m" ? (57 + extra) : 
	char == "n" ? (38 + extra) : 
	char == "o" ? (37 + extra) : 
	char == "p" ? (38 + extra) : 
	char == "q" ? (42 + extra) : 
	char == "r" ? (26 + extra) : 
	char == "s" ? (31 + extra) : 
	char == "t" ? (24 + extra) : 
	char == "u" ? (33 + extra) : 
	char == "v" ? (39 + extra) : 
	char == "w" ? (51 + extra) : 
	char == "x" ? (39 + extra) : 
	char == "y" ? (39 + extra) : 
	char == "z" ? (34 + extra) : 
	char == "{" ? (29 + extra) : 
	char == "|" ? (14 + extra) : 
	char == "}" ? (29 + extra) : 
	(51 + extra);

module OpenDyslexicRegular_letter(char, steps, height) {
	if(char == "!") {
		OpenDyslexicRegular_letter0x21(steps, height);
	}
	if(char == "\"") {
		OpenDyslexicRegular_letter0x22(steps, height);
	}
	if(char == "#") {
		OpenDyslexicRegular_letter0x23(steps, height);
	}
	if(char == "$") {
		OpenDyslexicRegular_letter0x24(steps, height);
	}
	if(char == "%") {
		OpenDyslexicRegular_letter0x25(steps, height);
	}
	if(char == "&") {
		OpenDyslexicRegular_letter0x26(steps, height);
	}
	if(char == "'") {
		OpenDyslexicRegular_letter0x27(steps, height);
	}
	if(char == "(") {
		OpenDyslexicRegular_letter0x28(steps, height);
	}
	if(char == ")") {
		OpenDyslexicRegular_letter0x29(steps, height);
	}
	if(char == "*") {
		OpenDyslexicRegular_letter0x2a(steps, height);
	}
	if(char == "+") {
		OpenDyslexicRegular_letter0x2b(steps, height);
	}
	if(char == ",") {
		OpenDyslexicRegular_letter0x2c(steps, height);
	}
	if(char == "-") {
		OpenDyslexicRegular_letter0x2d(steps, height);
	}
	if(char == ".") {
		OpenDyslexicRegular_letter0x2e(steps, height);
	}
	if(char == "/") {
		OpenDyslexicRegular_letter0x2f(steps, height);
	}
	if(char == "0") {
		OpenDyslexicRegular_letter0x30(steps, height);
	}
	if(char == "1") {
		OpenDyslexicRegular_letter0x31(steps, height);
	}
	if(char == "2") {
		OpenDyslexicRegular_letter0x32(steps, height);
	}
	if(char == "3") {
		OpenDyslexicRegular_letter0x33(steps, height);
	}
	if(char == "4") {
		OpenDyslexicRegular_letter0x34(steps, height);
	}
	if(char == "5") {
		OpenDyslexicRegular_letter0x35(steps, height);
	}
	if(char == "6") {
		OpenDyslexicRegular_letter0x36(steps, height);
	}
	if(char == "7") {
		OpenDyslexicRegular_letter0x37(steps, height);
	}
	if(char == "8") {
		OpenDyslexicRegular_letter0x38(steps, height);
	}
	if(char == "9") {
		OpenDyslexicRegular_letter0x39(steps, height);
	}
	if(char == ":") {
		OpenDyslexicRegular_letter0x3a(steps, height);
	}
	if(char == ";") {
		OpenDyslexicRegular_letter0x3b(steps, height);
	}
	if(char == "<") {
		OpenDyslexicRegular_letter0x3c(steps, height);
	}
	if(char == "=") {
		OpenDyslexicRegular_letter0x3d(steps, height);
	}
	if(char == ">") {
		OpenDyslexicRegular_letter0x3e(steps, height);
	}
	if(char == "?") {
		OpenDyslexicRegular_letter0x3f(steps, height);
	}
	if(char == "@") {
		OpenDyslexicRegular_letter0x40(steps, height);
	}
	if(char == "A") {
		OpenDyslexicRegular_letter0x41(steps, height);
	}
	if(char == "B") {
		OpenDyslexicRegular_letter0x42(steps, height);
	}
	if(char == "C") {
		OpenDyslexicRegular_letter0x43(steps, height);
	}
	if(char == "D") {
		OpenDyslexicRegular_letter0x44(steps, height);
	}
	if(char == "E") {
		OpenDyslexicRegular_letter0x45(steps, height);
	}
	if(char == "F") {
		OpenDyslexicRegular_letter0x46(steps, height);
	}
	if(char == "G") {
		OpenDyslexicRegular_letter0x47(steps, height);
	}
	if(char == "H") {
		OpenDyslexicRegular_letter0x48(steps, height);
	}
	if(char == "I") {
		OpenDyslexicRegular_letter0x49(steps, height);
	}
	if(char == "J") {
		OpenDyslexicRegular_letter0x4a(steps, height);
	}
	if(char == "K") {
		OpenDyslexicRegular_letter0x4b(steps, height);
	}
	if(char == "L") {
		OpenDyslexicRegular_letter0x4c(steps, height);
	}
	if(char == "M") {
		OpenDyslexicRegular_letter0x4d(steps, height);
	}
	if(char == "N") {
		OpenDyslexicRegular_letter0x4e(steps, height);
	}
	if(char == "O") {
		OpenDyslexicRegular_letter0x4f(steps, height);
	}
	if(char == "P") {
		OpenDyslexicRegular_letter0x50(steps, height);
	}
	if(char == "Q") {
		OpenDyslexicRegular_letter0x51(steps, height);
	}
	if(char == "R") {
		OpenDyslexicRegular_letter0x52(steps, height);
	}
	if(char == "S") {
		OpenDyslexicRegular_letter0x53(steps, height);
	}
	if(char == "T") {
		OpenDyslexicRegular_letter0x54(steps, height);
	}
	if(char == "U") {
		OpenDyslexicRegular_letter0x55(steps, height);
	}
	if(char == "V") {
		OpenDyslexicRegular_letter0x56(steps, height);
	}
	if(char == "W") {
		OpenDyslexicRegular_letter0x57(steps, height);
	}
	if(char == "X") {
		OpenDyslexicRegular_letter0x58(steps, height);
	}
	if(char == "Y") {
		OpenDyslexicRegular_letter0x59(steps, height);
	}
	if(char == "Z") {
		OpenDyslexicRegular_letter0x5a(steps, height);
	}
	if(char == "[") {
		OpenDyslexicRegular_letter0x5b(steps, height);
	}
	if(char == "\\") {
		OpenDyslexicRegular_letter0x5c(steps, height);
	}
	if(char == "]") {
		OpenDyslexicRegular_letter0x5d(steps, height);
	}
	if(char == "^") {
		OpenDyslexicRegular_letter0x5e(steps, height);
	}
	if(char == "_") {
		OpenDyslexicRegular_letter0x5f(steps, height);
	}
	if(char == "`") {
		OpenDyslexicRegular_letter0x60(steps, height);
	}
	if(char == "a") {
		OpenDyslexicRegular_letter0x61(steps, height);
	}
	if(char == "b") {
		OpenDyslexicRegular_letter0x62(steps, height);
	}
	if(char == "c") {
		OpenDyslexicRegular_letter0x63(steps, height);
	}
	if(char == "d") {
		OpenDyslexicRegular_letter0x64(steps, height);
	}
	if(char == "e") {
		OpenDyslexicRegular_letter0x65(steps, height);
	}
	if(char == "f") {
		OpenDyslexicRegular_letter0x66(steps, height);
	}
	if(char == "g") {
		OpenDyslexicRegular_letter0x67(steps, height);
	}
	if(char == "h") {
		OpenDyslexicRegular_letter0x68(steps, height);
	}
	if(char == "i") {
		OpenDyslexicRegular_letter0x69(steps, height);
	}
	if(char == "j") {
		OpenDyslexicRegular_letter0x6a(steps, height);
	}
	if(char == "k") {
		OpenDyslexicRegular_letter0x6b(steps, height);
	}
	if(char == "l") {
		OpenDyslexicRegular_letter0x6c(steps, height);
	}
	if(char == "m") {
		OpenDyslexicRegular_letter0x6d(steps, height);
	}
	if(char == "n") {
		OpenDyslexicRegular_letter0x6e(steps, height);
	}
	if(char == "o") {
		OpenDyslexicRegular_letter0x6f(steps, height);
	}
	if(char == "p") {
		OpenDyslexicRegular_letter0x70(steps, height);
	}
	if(char == "q") {
		OpenDyslexicRegular_letter0x71(steps, height);
	}
	if(char == "r") {
		OpenDyslexicRegular_letter0x72(steps, height);
	}
	if(char == "s") {
		OpenDyslexicRegular_letter0x73(steps, height);
	}
	if(char == "t") {
		OpenDyslexicRegular_letter0x74(steps, height);
	}
	if(char == "u") {
		OpenDyslexicRegular_letter0x75(steps, height);
	}
	if(char == "v") {
		OpenDyslexicRegular_letter0x76(steps, height);
	}
	if(char == "w") {
		OpenDyslexicRegular_letter0x77(steps, height);
	}
	if(char == "x") {
		OpenDyslexicRegular_letter0x78(steps, height);
	}
	if(char == "y") {
		OpenDyslexicRegular_letter0x79(steps, height);
	}
	if(char == "z") {
		OpenDyslexicRegular_letter0x7a(steps, height);
	}
	if(char == "{") {
		OpenDyslexicRegular_letter0x7b(steps, height);
	}
	if(char == "|") {
		OpenDyslexicRegular_letter0x7c(steps, height);
	}
	if(char == "}") {
		OpenDyslexicRegular_letter0x7d(steps, height);
	}
	if(char == "~") {
		OpenDyslexicRegular_letter0x7e(steps, height);
	}
}

module OpenDyslexicRegular(strArr, steps=2, center=false, extra = 0, height = 10) {
	if(center) {
		translate([-OpenDyslexicRegular_width(strArr, extra)/2, 0, 0])
			OpenDyslexicRegular_str(strArr, steps, extra, height);
	}
	else {
		OpenDyslexicRegular_str(strArr, steps, extra, height);
	}
}

module OpenDyslexicRegular_str(strArr, steps=2, extra, height = 10) {
	for(i = [0:len(strArr)-1]) {
		assign(char = strArr[i]) {
			if(i == 0) {
				translate([0, 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 1) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 2) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 3) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 4) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 5) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 6) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 7) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 8) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 9) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 10) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 11) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 12) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 13) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 14) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 15) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 16) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 17) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 18) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 19) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 20) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 21) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 22) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 23) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 24) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 25) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 26) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 27) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 28) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 29) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 30) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 31) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 32) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 33) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 34) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 35) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 36) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 37) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 38) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 39) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 40) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 41) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 42) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 43) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 44) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 45) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 46) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 47) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 48) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 49) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 50) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 51) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 52) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 53) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 54) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 55) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 56) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 57) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 58) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 59) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 60) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 61) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 62) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 63) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 64) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 65) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 66) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 67) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 68) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 69) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 70) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 71) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 72) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 73) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 74) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 75) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 76) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 77) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 78) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 79) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 80) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 81) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 82) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 83) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 84) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 85) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 86) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 87) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 88) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 89) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 90) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 91) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 92) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 93) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 94) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra)+OpenDyslexicRegular_letter_space(strArr[93], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 95) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra)+OpenDyslexicRegular_letter_space(strArr[93], extra)+OpenDyslexicRegular_letter_space(strArr[94], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 96) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra)+OpenDyslexicRegular_letter_space(strArr[93], extra)+OpenDyslexicRegular_letter_space(strArr[94], extra)+OpenDyslexicRegular_letter_space(strArr[95], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 97) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra)+OpenDyslexicRegular_letter_space(strArr[93], extra)+OpenDyslexicRegular_letter_space(strArr[94], extra)+OpenDyslexicRegular_letter_space(strArr[95], extra)+OpenDyslexicRegular_letter_space(strArr[96], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 98) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra)+OpenDyslexicRegular_letter_space(strArr[93], extra)+OpenDyslexicRegular_letter_space(strArr[94], extra)+OpenDyslexicRegular_letter_space(strArr[95], extra)+OpenDyslexicRegular_letter_space(strArr[96], extra)+OpenDyslexicRegular_letter_space(strArr[97], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			else if(i == 99) {
				translate([OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra)+OpenDyslexicRegular_letter_space(strArr[93], extra)+OpenDyslexicRegular_letter_space(strArr[94], extra)+OpenDyslexicRegular_letter_space(strArr[95], extra)+OpenDyslexicRegular_letter_space(strArr[96], extra)+OpenDyslexicRegular_letter_space(strArr[97], extra)+OpenDyslexicRegular_letter_space(strArr[98], extra), 0, 0])
					OpenDyslexicRegular_letter(char, steps, height);
			}
			}
		}
	}

function OpenDyslexicRegular_width(strArr, extra = 0) =
	(len(strArr) == 0) ? (
		0) : (len(strArr) == 1) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)) : (len(strArr) == 2) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)) : (len(strArr) == 3) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)) : (len(strArr) == 4) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)) : (len(strArr) == 5) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)) : (len(strArr) == 6) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)) : (len(strArr) == 7) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)) : (len(strArr) == 8) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)) : (len(strArr) == 9) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)) : (len(strArr) == 10) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)) : (len(strArr) == 11) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)) : (len(strArr) == 12) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)) : (len(strArr) == 13) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)) : (len(strArr) == 14) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)) : (len(strArr) == 15) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)) : (len(strArr) == 16) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)) : (len(strArr) == 17) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)) : (len(strArr) == 18) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)) : (len(strArr) == 19) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)) : (len(strArr) == 20) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)) : (len(strArr) == 21) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)) : (len(strArr) == 22) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)) : (len(strArr) == 23) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)) : (len(strArr) == 24) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)) : (len(strArr) == 25) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)) : (len(strArr) == 26) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)) : (len(strArr) == 27) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)) : (len(strArr) == 28) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)) : (len(strArr) == 29) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)) : (len(strArr) == 30) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)) : (len(strArr) == 31) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)) : (len(strArr) == 32) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)) : (len(strArr) == 33) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)) : (len(strArr) == 34) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)) : (len(strArr) == 35) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)) : (len(strArr) == 36) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)) : (len(strArr) == 37) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)) : (len(strArr) == 38) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)) : (len(strArr) == 39) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)) : (len(strArr) == 40) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)) : (len(strArr) == 41) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)) : (len(strArr) == 42) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)) : (len(strArr) == 43) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)) : (len(strArr) == 44) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)) : (len(strArr) == 45) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)) : (len(strArr) == 46) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)) : (len(strArr) == 47) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)) : (len(strArr) == 48) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)) : (len(strArr) == 49) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)) : (len(strArr) == 50) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)) : (len(strArr) == 51) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)) : (len(strArr) == 52) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)) : (len(strArr) == 53) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)) : (len(strArr) == 54) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)) : (len(strArr) == 55) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)) : (len(strArr) == 56) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)) : (len(strArr) == 57) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)) : (len(strArr) == 58) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)) : (len(strArr) == 59) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)) : (len(strArr) == 60) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)) : (len(strArr) == 61) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)) : (len(strArr) == 62) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)) : (len(strArr) == 63) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)) : (len(strArr) == 64) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)) : (len(strArr) == 65) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)) : (len(strArr) == 66) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)) : (len(strArr) == 67) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)) : (len(strArr) == 68) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)) : (len(strArr) == 69) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)) : (len(strArr) == 70) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)) : (len(strArr) == 71) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)) : (len(strArr) == 72) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)) : (len(strArr) == 73) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)) : (len(strArr) == 74) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)) : (len(strArr) == 75) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)) : (len(strArr) == 76) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)) : (len(strArr) == 77) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)) : (len(strArr) == 78) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)) : (len(strArr) == 79) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)) : (len(strArr) == 80) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)) : (len(strArr) == 81) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)) : (len(strArr) == 82) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)) : (len(strArr) == 83) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)) : (len(strArr) == 84) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)) : (len(strArr) == 85) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)) : (len(strArr) == 86) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)) : (len(strArr) == 87) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)) : (len(strArr) == 88) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)) : (len(strArr) == 89) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)) : (len(strArr) == 90) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)) : (len(strArr) == 91) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)) : (len(strArr) == 92) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)) : (len(strArr) == 93) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra)) : (len(strArr) == 94) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra)+OpenDyslexicRegular_letter_space(strArr[93], extra)) : (len(strArr) == 95) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra)+OpenDyslexicRegular_letter_space(strArr[93], extra)+OpenDyslexicRegular_letter_space(strArr[94], extra)) : (len(strArr) == 96) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra)+OpenDyslexicRegular_letter_space(strArr[93], extra)+OpenDyslexicRegular_letter_space(strArr[94], extra)+OpenDyslexicRegular_letter_space(strArr[95], extra)) : (len(strArr) == 97) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra)+OpenDyslexicRegular_letter_space(strArr[93], extra)+OpenDyslexicRegular_letter_space(strArr[94], extra)+OpenDyslexicRegular_letter_space(strArr[95], extra)+OpenDyslexicRegular_letter_space(strArr[96], extra)) : (len(strArr) == 98) ? (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra)+OpenDyslexicRegular_letter_space(strArr[93], extra)+OpenDyslexicRegular_letter_space(strArr[94], extra)+OpenDyslexicRegular_letter_space(strArr[95], extra)+OpenDyslexicRegular_letter_space(strArr[96], extra)+OpenDyslexicRegular_letter_space(strArr[97], extra)) : (
		OpenDyslexicRegular_letter_space(strArr[0], extra)+OpenDyslexicRegular_letter_space(strArr[1], extra)+OpenDyslexicRegular_letter_space(strArr[2], extra)+OpenDyslexicRegular_letter_space(strArr[3], extra)+OpenDyslexicRegular_letter_space(strArr[4], extra)+OpenDyslexicRegular_letter_space(strArr[5], extra)+OpenDyslexicRegular_letter_space(strArr[6], extra)+OpenDyslexicRegular_letter_space(strArr[7], extra)+OpenDyslexicRegular_letter_space(strArr[8], extra)+OpenDyslexicRegular_letter_space(strArr[9], extra)+OpenDyslexicRegular_letter_space(strArr[10], extra)+OpenDyslexicRegular_letter_space(strArr[11], extra)+OpenDyslexicRegular_letter_space(strArr[12], extra)+OpenDyslexicRegular_letter_space(strArr[13], extra)+OpenDyslexicRegular_letter_space(strArr[14], extra)+OpenDyslexicRegular_letter_space(strArr[15], extra)+OpenDyslexicRegular_letter_space(strArr[16], extra)+OpenDyslexicRegular_letter_space(strArr[17], extra)+OpenDyslexicRegular_letter_space(strArr[18], extra)+OpenDyslexicRegular_letter_space(strArr[19], extra)+OpenDyslexicRegular_letter_space(strArr[20], extra)+OpenDyslexicRegular_letter_space(strArr[21], extra)+OpenDyslexicRegular_letter_space(strArr[22], extra)+OpenDyslexicRegular_letter_space(strArr[23], extra)+OpenDyslexicRegular_letter_space(strArr[24], extra)+OpenDyslexicRegular_letter_space(strArr[25], extra)+OpenDyslexicRegular_letter_space(strArr[26], extra)+OpenDyslexicRegular_letter_space(strArr[27], extra)+OpenDyslexicRegular_letter_space(strArr[28], extra)+OpenDyslexicRegular_letter_space(strArr[29], extra)+OpenDyslexicRegular_letter_space(strArr[30], extra)+OpenDyslexicRegular_letter_space(strArr[31], extra)+OpenDyslexicRegular_letter_space(strArr[32], extra)+OpenDyslexicRegular_letter_space(strArr[33], extra)+OpenDyslexicRegular_letter_space(strArr[34], extra)+OpenDyslexicRegular_letter_space(strArr[35], extra)+OpenDyslexicRegular_letter_space(strArr[36], extra)+OpenDyslexicRegular_letter_space(strArr[37], extra)+OpenDyslexicRegular_letter_space(strArr[38], extra)+OpenDyslexicRegular_letter_space(strArr[39], extra)+OpenDyslexicRegular_letter_space(strArr[40], extra)+OpenDyslexicRegular_letter_space(strArr[41], extra)+OpenDyslexicRegular_letter_space(strArr[42], extra)+OpenDyslexicRegular_letter_space(strArr[43], extra)+OpenDyslexicRegular_letter_space(strArr[44], extra)+OpenDyslexicRegular_letter_space(strArr[45], extra)+OpenDyslexicRegular_letter_space(strArr[46], extra)+OpenDyslexicRegular_letter_space(strArr[47], extra)+OpenDyslexicRegular_letter_space(strArr[48], extra)+OpenDyslexicRegular_letter_space(strArr[49], extra)+OpenDyslexicRegular_letter_space(strArr[50], extra)+OpenDyslexicRegular_letter_space(strArr[51], extra)+OpenDyslexicRegular_letter_space(strArr[52], extra)+OpenDyslexicRegular_letter_space(strArr[53], extra)+OpenDyslexicRegular_letter_space(strArr[54], extra)+OpenDyslexicRegular_letter_space(strArr[55], extra)+OpenDyslexicRegular_letter_space(strArr[56], extra)+OpenDyslexicRegular_letter_space(strArr[57], extra)+OpenDyslexicRegular_letter_space(strArr[58], extra)+OpenDyslexicRegular_letter_space(strArr[59], extra)+OpenDyslexicRegular_letter_space(strArr[60], extra)+OpenDyslexicRegular_letter_space(strArr[61], extra)+OpenDyslexicRegular_letter_space(strArr[62], extra)+OpenDyslexicRegular_letter_space(strArr[63], extra)+OpenDyslexicRegular_letter_space(strArr[64], extra)+OpenDyslexicRegular_letter_space(strArr[65], extra)+OpenDyslexicRegular_letter_space(strArr[66], extra)+OpenDyslexicRegular_letter_space(strArr[67], extra)+OpenDyslexicRegular_letter_space(strArr[68], extra)+OpenDyslexicRegular_letter_space(strArr[69], extra)+OpenDyslexicRegular_letter_space(strArr[70], extra)+OpenDyslexicRegular_letter_space(strArr[71], extra)+OpenDyslexicRegular_letter_space(strArr[72], extra)+OpenDyslexicRegular_letter_space(strArr[73], extra)+OpenDyslexicRegular_letter_space(strArr[74], extra)+OpenDyslexicRegular_letter_space(strArr[75], extra)+OpenDyslexicRegular_letter_space(strArr[76], extra)+OpenDyslexicRegular_letter_space(strArr[77], extra)+OpenDyslexicRegular_letter_space(strArr[78], extra)+OpenDyslexicRegular_letter_space(strArr[79], extra)+OpenDyslexicRegular_letter_space(strArr[80], extra)+OpenDyslexicRegular_letter_space(strArr[81], extra)+OpenDyslexicRegular_letter_space(strArr[82], extra)+OpenDyslexicRegular_letter_space(strArr[83], extra)+OpenDyslexicRegular_letter_space(strArr[84], extra)+OpenDyslexicRegular_letter_space(strArr[85], extra)+OpenDyslexicRegular_letter_space(strArr[86], extra)+OpenDyslexicRegular_letter_space(strArr[87], extra)+OpenDyslexicRegular_letter_space(strArr[88], extra)+OpenDyslexicRegular_letter_space(strArr[89], extra)+OpenDyslexicRegular_letter_space(strArr[90], extra)+OpenDyslexicRegular_letter_space(strArr[91], extra)+OpenDyslexicRegular_letter_space(strArr[92], extra)+OpenDyslexicRegular_letter_space(strArr[93], extra)+OpenDyslexicRegular_letter_space(strArr[94], extra)+OpenDyslexicRegular_letter_space(strArr[95], extra)+OpenDyslexicRegular_letter_space(strArr[96], extra)+OpenDyslexicRegular_letter_space(strArr[97], extra)+OpenDyslexicRegular_letter_space(strArr[98], extra));




module BezConic(p0,p1,p2,steps=5,h=10) {

	stepsize1 = (p1-p0)/steps;
	stepsize2 = (p2-p1)/steps;

	for (i=[0:steps-1]) {
		assign(point1 = p0+stepsize1*i) 
		assign(point2 = p1+stepsize2*i) 
		assign(point3 = p0+stepsize1*(i+1))
		assign(point4 = p1+stepsize2*(i+1))
		assign(bpoint1 = point1+(point2-point1)*(i/steps))
		assign(bpoint2 = point3+(point4-point3)*((i+1)/steps)) {
			if(h == 0) {
				polygon(points=[bpoint1,bpoint2,p1]);
			}
			else {
				linear_extrude(height=h) {
					polygon(points=[bpoint1,bpoint2,p1]);
				}
			}
		}
	}
}