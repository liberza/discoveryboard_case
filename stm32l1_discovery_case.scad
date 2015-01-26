module case(){
	difference(){
		cube([118, 60, 21], center=true);
		union(){
			translate([0,0,2]) cube([114, 56, 21], center=true);
			translate([58, 0, 6]) cube([5, 9, 11.5], center=true);
		}
	}

	translate([0,29,3]) {
		rotate(a=-75, v=[1,0,0]) {
			linear_extrude(height=1.5) square([10,5], center=true);
		}
	}

	translate([0,-29,3]) {
		rotate(a=75, v=[1,0,0]) {
			linear_extrude(height=1.5) square([10,5], center=true);
		}
	}
}

module lid(height){


	difference(){
		//outer box
		translate([0,0,height]) cube([122.2, 64.2, 7], center=true);
		union(){
			//inner box
			translate([0,0,height-2]) cube([118.4, 60.4, 8], center=true);
			//screen hole
			translate([19, 0, height+3]) cube([11.7, 37, 4], center=true);
			//button holes
			translate([-36, 8.9, height+3]) cylinder(r1=3.2, r2=5.5, h=4, center=true); 
			translate([-36, -8.5, height+3]) cylinder(r1=3.2, r2=5.5, h=4, center=true); 
			//usb hole
			translate([60, 0, height-2.5]) cube([5, 9, 5], center=true);
		}
	}

	//left hook
	translate([0, 32.2, height-2.5]) cube([10, 2, 12], center=true);
	translate([0, 31.6, height-8.4]) rotate(a=15, v=[1,0,0]) cube([10, 3, 1], center=true);
	//right hook
	translate([0, -32.2, height-2.5]) cube([10, 2, 12], center=true);
	translate([0, -31.6, height-8.4]) rotate(a=-15, v=[1,0,0]) cube([10, 3, 1], center=true);
}

case();
lid(8.9);
