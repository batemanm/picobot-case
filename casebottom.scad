use <roundCornersCube.scad>

$fn=100;

length = 70;
width = 55;
height=25;

axelXPos = -9.6;

difference (){
union (){
difference () {

union(){
  roundCornersCube (length,width,height,5);
    translate ([-11.5,0,0]){ 
    roundCornersCube (47,54+13,height,5);
  }
}

translate ([0,0,1]){
  union(){
    roundCornersCube (length-4,width-4,height,4);
    translate ([-11.5,0,0]){ 
      roundCornersCube (47-4,50+13,height,4);
    }
  }
}

//axel
translate ([axelXPos,70/2,-height/2+9]){
  rotate ([90,0,0]){
  cylinder (r=3,h=70);
  }
}

translate ([axelXPos-3,-70/2,-height/2+9]){
  cube ([6,70,20]);
}

// hole for the ball wheel
// to be refined.
//  translate ([(length/2)-16,0,-(height/2)]) {
//    roundCornersCube (17,24,20,4);
//  }

// ball wheel screw holes
translate ([(length/2)-15,(width/2) - 19.5,-(height/2)]) {
  cylinder(r=1, h=3);
}

translate ([(length/2)-15,-(width/2) + 19.5,-(height/2)]) {
  cylinder(r=1, h=3);
}


// Big hole for LDR
//translate ([length/2-10,-(10/2) + (width/2) - (10/2),-(height/2)+1]){
//cube ([10,10,30]);
//}

//translate ([length/2-10,+(10/2) - (width/2) - (10/2),-(height/2)+1]){
//cube ([10,10,30]);
//}


// ldr cut outs on bottom of case
translate ([length/2,+(10/2) - (width/2) - (10/2),-(height/2)]){
cylinder(r=7,h=10);
}

translate ([length/2,+(10/2) + (width/2) - (10/2),-(height/2)]){
cylinder(r=7,h=10);
}

// hole for ldr

//translate ([length/2,+(10/2) - (width/2) - (10/2),-(height/2)+1]){
//cylinder(r=10,h=10);
//}


// hole for power switch

translate ([-(length/2)-15,8/2,-(height/2)+10]) {
    cube ([(length/2), 8, 4]);
  }

// hole for rear LED
translate ([-(length/2)-2,-(5+4),-(height/2)+10]) {
//    cube ([(length/2), 8, 8]);
rotate ([0,90,0]){
cylinder(r=6,8);
}
  }

// RGB leds
translate ([(length/2)-14,20.5,-(height/2)]){
	cylinder (r=4, h = 10);
}

translate ([(length/2)-14,-20.5,-(height/2)]){
	cylinder (r=4, h = 10);
}

// line sensor
//translate ([(length/2)-15,9,-(height/2)]){
translate ([(length/2)-16,11,-(height/2)]){
  cube ([11,7,10]);
}
translate ([(length/2)-16,-18,-(height/2)]){
	cube ([11,7,3]);
}

// ping sensor

  translate ([(length/2)-3,12.5,-(height/2)+21]){
    rotate ([90,0,90]){
      cylinder (r=17.5/2,h=4);
    }
  }
  translate ([(length/2)-3,-12.5,-(height/2)+21]){
    rotate ([90,0,90]){
      cylinder (r=17.5/2,h=4);
    }
  }

}

// power switch mount
translate([-(length/2),8/2,-12]){
  difference() {
  cube([9,8,(height/2)-2]);
    translate([5,4,0]){
      cylinder(r=1.2,h=12);
    }
  }
}

// Battery pillars
translate([-(length/2)+1,(width/2)-4,-12]) {
  cube([9,8,height-6]);
}

translate([-(length/2)+1,-(width/2)-4,-12]) {
  cube([9,8,height-6]);
}

translate([2,-(width/2)-4,-12]) {
  cube([9,6,height-6]);
}

translate([2,(width/2)-2,-12]) {
  cube([9,6,height-6]);
}

// hole for rear LED
translate ([-(length/2),-(5+4),-(height/2)+10]) {
//    cube ([(length/2), 8, 8]);
rotate ([0,90,0]){
difference () {
union(){
cylinder(r1=6.5,r2=4,10);
translate([-9.5,-6,0]) {
cube([19,12,10]);
}
}
cylinder(r1=6,r2=3,10);
}
}
  }

}


}







