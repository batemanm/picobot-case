
$fn=100;

difference(){
union (){
  cube([40,52,10]);
}
translate ([1.5,1.5,0]){
cube([37,49,10]);
}
}


translate ([-6,0,0]) {
  difference () {
    cube([6,6,4]);
    translate ([3,3,0]) {
      cylinder (r=1.5,h=5);
    }
  }
}

translate ([40,52-6,0]) {
  difference () {
    cube([6,6,4]);
    translate ([3,3,0]) {
      cylinder (r=1.5,h=5);
    }
  }
}
