//cylinder(h=5,r=20,$fn=80);

difference(){
union(){
	cylinder(r=20,h=4);
	difference(){
		translate([0,0,-1.3]) rotate([0,90,0])cylinder(r=3.5,h=20,center=true,$fn=15);	
		translate([0,0,-1.3]) rotate([0,90,0])cylinder(r=3.8,h=6,center=true,$fn=15);	
	}
}

//translate([0,0,-1.3]) rotate([0,90,0])cylinder(r=1.0,h=22,center=true,$fn=15);	

translate([2.6,3.5,2]) scale([0.48,0.48,0.48]) linear_extrude(height=5) union(){

	//middle cross
	translate([0,-1,0]) rotate([0,0,-10]) scale([7,2.2,1]) circle(r=1,$fn=20,center=trure);

	//midle triangle
	scale([0.7,1,1]){
		rotate([0,0,40]) scale([8,1.8,1]) translate([1,0,0]) circle(r=1,$fn=20,center=true);
		rotate([0,0,-180-40]) scale([8,1.8,1]) translate([1,0,0]) circle(r=1,$fn=20,center=true);
		translate([0,8*sqrt(2)-1,0]) scale([8*sqrt(2)+1,1.8,1]) circle(r=1,$fn=20,center=true);
	}

	//hat
	translate([0,8*sqrt(2)+7,0]) scale([1.7,12,1]) circle(r=1,$fn=20);
	translate([0,8*sqrt(2)+9,0]) scale([6,2.2,1]) difference(){
		circle(r=1,$fn=20);
		circle(r=0.5,$fn=20);
	}

	//bottom triangle
	translate([0,-3,0]) rotate([0,0,5]) scale([1.9,17,1]) translate([0,-1,0]) circle(r=1,$fn=20);
	translate([0,-3,0]) rotate([0,0,-20]) scale([1.9,21,1]) translate([0,-1,0]) circle(r=1,$fn=20);
	translate([-8.5,-38,0]) rotate([0,0,15.4]) scale([13,1.9,1]) translate([0,-1,0]) circle(r=1,$fn=20);

	//arrows
	translate([-12.5,-13,0]) scale([0.75,0.75,0.75]) rotate([0,0,-45])  union(){
		scale([2,8,1]) translate([0,1,0]) circle(r=1,$fn=20);
		rotate([0,0,28])  scale([2,3.5,1]) translate([0,1,0]) circle(r=1,$fn=20);
		rotate([0,0,-28])  scale([2,3.5,1]) translate([0,1,0]) circle(r=1,$fn=20);
	}
	translate([-20,-10,0]) scale([0.75,0.75,0.75]) rotate([0,0,-45])  union(){
		scale([2,8,1]) translate([0,1,0]) circle(r=1,$fn=20);
		rotate([0,0,28])  scale([2,3.5,1]) translate([0,1,0]) circle(r=1,$fn=20);
		rotate([0,0,-28])  scale([2,3.5,1]) translate([0,1,0]) circle(r=1,$fn=20);
	}

}
}