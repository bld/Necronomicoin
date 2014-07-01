// Necronomicoin!
// Printed for guests at a 2011 Halloween party
// Year symbol on back created using text2surface: http://www.thingiverse.com/thing:10404
// Necronomicon symbol created in QCad

module text () import_stl("2011-eufm10-reduced.stl");

module necronomicoin(){
	translate([0,0,3]) scale([5,5,1]) linear_extrude(file="necronomicoin.dxf",height=0.5);
	difference(){
		translate([0,0,2]) cylinder(r=17,h=4,center=true);
		translate([0,0,5]) cylinder(r=15.5,h=4,center=true);
		translate([0,0,-1]) cylinder(r=15.5,h=4,center=true);
	}
	difference(){
		translate([0,0,1]) cylinder(r=14,h=2,center=true);
		translate([1,-1,-.3]) scale([.19,.19,.2]) mirror([1,0,0]) rotate([0,0,180]) text();
	}
}

necronomicoin();
