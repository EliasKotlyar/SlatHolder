module copy_mirror(vec=[0,1,0])
{
    children();
    mirror(vec) children();
}

use <text_on.scad>
wandstaerke=1.3;

breite=58;
laenge=28.3;
hoehe=12.6;
cube_locn = [breite, laenge, hoehe];
text_on_cube("V3",locn_vec=[0,0,-0.1],cube_size=cube_locn,face="bottom",center=true,extrusion_height=1.6,size=10,updown=0);

difference(){
    cube(cube_locn, center=true);
    translate([0, wandstaerke , 0]){
        cube([breite-wandstaerke*2, laenge, hoehe-wandstaerke*2], center=true);
    }
}

abstand_zum_rand = 8.3;
hoehe_pin = 10;
radius_pin = 3.5;


copy_mirror([1,0,0]){
    translate([breite/2 - abstand_zum_rand-1.5,0,-hoehe+wandstaerke]){
        difference(){
            union(){
                cylinder(h=hoehe_pin, r=3.5,center=true);
                translate([0,0,-3]){
                    sphere(r=5);           
                } 
            }
            translate([0,0,-6]){
            cube([2, 15, 15], center=true);              
            }
        } 
        
    }
}