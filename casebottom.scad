use <roundCornersCube.scad>

$fn=100;

length = 68;
width = 55;
height=25;

axelXPos = -10.6;

difference () {

union(){
  roundCornersCube (length,width,height,5);
  translate ([-15.5,0,0]){ 
    roundCornersCube (37,54+13,height,5);
  }
}

translate ([0,0,1]){
  union(){
    roundCornersCube (length-4,width-4,height,4);
    translate ([-15.5,0,0]){ 
      roundCornersCube (33,50+13,height,4);
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

// screw holes for the ball wheel
translate ([(length/2)-15,(width/2) - 19.5,-(height/2)]) {
  cylinder(r=1, h=3);
}

translate ([(length/2)-15,-(width/2) + 19.5,-(height/2)]) {
  cylinder(r=1, h=3);
}


// hole for LDR
translate ([length/2-10,-(10/2) + (width/2) - (10/2),-(height/2)+1]){
cube ([10,10,30]);
}
translate ([length/2-10,+(10/2) - (width/2) - (10/2),-(height/2)+1]){
cube ([10,10,30]);
}



// hole for the power 
  translate ([-(length/2)-15,-7,-(height/2)+1]) {
    cube ([(length/2), 12, 15]);
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









