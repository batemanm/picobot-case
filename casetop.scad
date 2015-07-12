use <casebottom.scad>
use <roundCornersCube.scad>

//module casebottom () {

//length = 70;
//width = 55;
//height=25;

//union(){
//  roundCornersCube (length,width,height,5);
//    translate ([-11.5,0,0]){
//    roundCornersCube (47,54+13,height,5);
//    }
//  }
//}


//$fn=100;

module casetop(){
length = 70;
width = 55;
height=23;

axelXPos = -10.6;

difference () {

union(){
  translate ([0,0,0]) {
    translate ([2,0,0]) {
  roundCornersCube (length+1,width+6,height,5);
}
  translate ([-16.5+5,0,0]){ 
    roundCornersCube (37+10,54+13,height,5);
  }
  }
}

translate ([0,0,1]){
  union(){
    translate ([2,0,0]) {
      roundCornersCube (length-2,width-4,height,4);
    }
    translate ([-16.5+(10/2),0,0]){ 
      roundCornersCube (33+11,50+13,height,4);
    }
  }
}

translate ([0,0,14]){
  union(){
    translate ([4,0,0]){
      roundCornersCube (length-6,width,height,4);
    }
    translate ([-16.5+(9/2),0]){ 
    roundCornersCube (37+11,54+13,height,5);
    }
  }

}

translate ([(length/2)-3+3,12.5,-(height/2)+20]){
  rotate ([90,0,90]){
    cylinder (r=17.5/2,h=6);
  }
}
translate ([(length/2)-3+3,-12.5,-(height/2)+20]){
  rotate ([90,0,90]){
    cylinder (r=17.5/2,h=6);
  }
}

//translate ([length/2-6,-42/2,0]){
//cube ([4,42,5]);
//}

}

translate ([-length/2-2,-42/2,-height/2]){
cube ([2,45,20]);
}
}

casetop();

//translate ([0,0,20]){
//  rotate([180,0,0]){
//    color ([1,0,0]) casebottom();
//  }
//}


//}
