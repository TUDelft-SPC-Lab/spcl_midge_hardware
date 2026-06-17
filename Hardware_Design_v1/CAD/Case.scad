length = 47; //47
width = 35; //35
height = 8.5; //8.5
thick = 1.6;

slit_height = 10.5;

rotate([0, -90, 0])
{
difference()
{
    cube([length+thick+slit_height, width+2*thick+1, height+2*thick]);
    translate([thick, thick+0.5, thick])
    {
        cube([length+20, width, height]);
        
    }
    // Side openning for USB, sliders
    translate([5+thick, 0, 4+thick]) cube([31, thick+0.5, 4.5]);
    translate([5+thick, 0, 4+thick]) cube([22, thick+0.5+6, height+2*thick]);
    translate([29, -0.4, 10]) cylinder(d=17, h=10, $fn=50);
//    translate([13, -0.4, 10]) cylinder(d=17, h=10, $fn=50);
    // gap for switches to slide down
    translate([5+thick, 0.5+thick-1.6, 6+thick]) cube([70, 1.6, 1.3]);
    
    // Slits for lanyard
    translate([length+thick, thick+0.5, 0]) cube([2, 12, 30]);
    translate([length+thick, thick+0.5+width-12, 0]) cube([2, 12, 30]);
    
    // Mic port - bottom one
    translate([thick+17, thick+0.5+28, height+thick]) cylinder(r=1, h=thick, $fn = 20);
    // led cutouts
    translate([thick+16, thick+0.5+width/2, height+thick]) cylinder(r=0.5, h=thick, $fn = 20);
    translate([thick+32, thick+0.5+9.5, height+thick]) cube([1,2,thick]);
    
}
// battery support
difference()
{
    cube([5+thick, width+2*thick, 5+thick]);
//    translate([thick, thick+5+0.5, thick]) cube([5, width-10, 5]);
}
}