use <roundCornersCube.scad>

$fn=100;

length = 70;
width = 55;
height=23;

axelXPos = -10.6;

difference () {

union(){
  translate ([0,0,0]) {
  roundCornersCube (length,width+6,height,5);
  translate ([-16.5,0,0]){ 
    roundCornersCube (37,54+13,height,5);
  }
  }
}

translate ([0,0,1]){
  union(){
    roundCornersCube (length-4,width-4,height,4);
    translate ([-16.5,0,0]){ 
      roundCornersCube (33,50+13,height,4);
    }
  }
}

translate ([0,0,12]){
  union(){
    roundCornersCube (length-10,width,height,4);
    translate ([-16.5,0,0]){ 
    roundCornersCube (37,54+13,height,5);
    }
  }

}

translate ([(length/2)-3,12.5,-(height/2)+20]){
  rotate ([90,0,90]){
    cylinder (r=17.5/2,h=4);
  }
}
translate ([(length/2)-3,-12.5,-(height/2)+20]){
  rotate ([90,0,90]){
    cylinder (r=17.5/2,h=4);
  }
}

}

// back clip
translate ([-(length/2)-2,-width/2,-(height/2)]){
cube([2.1,width,19]);
}

// front clip
//translate ([2,width/2-.1,-(height/2)]){
//cube ([27,2.1,15]);
//}
//translate ([2,-width/2-2,-(height/2)]){
//cube ([27,2.1,15]);
//}


