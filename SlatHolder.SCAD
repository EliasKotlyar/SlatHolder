module copy_mirror(vec=[0,1,0])
{
    children();
    mirror(vec) children();
}


wandstaerke=1.3;

breite=58;
laenge=28.3;
hoehe=12.2;
difference(){
    cube([breite, laenge, hoehe], center=true);
    translate([0, wandstaerke , 0]){
        cube([breite-wandstaerke*2, laenge, hoehe-wandstaerke*2], center=true);
    }
}

abstand_zum_rand = 8.3;
hoehe_pin = 15;
radius_pin = 3.5;


copy_mirror([1,0,0]){
    translate([breite/2 - abstand_zum_rand,0,-hoehe]){
        difference(){            
            cylinder(h=hoehe_pin, r=3.5,center=true);
            cube([2, 15, 5], center=true);              
        } 
        translate([0,0,-6]){
                sphere(r=4);           
        } 
    }
}