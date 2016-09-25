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
text_on_cube("V2",locn_vec=[0,0,0],cube_size=cube_locn,face="bottom",center=true);

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
    translate([breite/2 - abstand_zum_rand-0.2,0,-hoehe+wandstaerke]){
        difference(){
            union(){
                cylinder(h=hoehe_pin, r=3.5,center=true);
                translate([0,0,-5]){
                    sphere(r=5.4);           
                } 
            }
            cube([2, 10, 5], center=true);              
        } 
        
    }
}