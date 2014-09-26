
wall_o = 2;
wall_i = 2;
spk_od = 77.1;
spk_id = 31.85;
depth = 25.4;

//Outter Hull
difference(){
	cylinder(h=depth,r=spk_od/2,center=true);
	cylinder(h=depth,r=(spk_od/2)-(2*wall_o),center=true);
}

//Support 
translate([0,0,(depth-8)/2])
	difference(){
		cylinder(h=8,r=spk_id/2,center=true);
		cylinder(h=8,r=(spk_id/2)-(2*wall_i),center=true);
	}

//Cap
translate([0,0,(depth+wall_o)/2])
	difference(){
		cylinder(h=wall_o, r=spk_od/2, center=true);
		translate([spk_od/4,0,0])
			cylinder(h=wall_o, r=3, center=true);
	}

