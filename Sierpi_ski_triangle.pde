boolean centered;
boolean isblack;

void setup(){
   size(1000,1000);
  centered = false;
  isblack = false;
}
void draw(){
  //Draw a traingel in the middle
  drawtriangle(500, 0, 0, 1000, 1000, 1000, 5);
}

void drawtriangle(int x1, int y1, int x2, int y2, int x3, int y3, int reps){ 
  if(reps != 0){
    if(isblack){
      fill(255);
      isblack = !isblack;
    }
    triangle(x1, y1, x2, y2, x3, y3);
    
    drawtriangle(
    (x1+x2)/2,
    (y1+y2)/2,
    (x2+x3)/2,
    (y2+y3)/2,
    (x3+x1)/2,
    (y3+y1)/2, 
    reps-1);
    
    drawtriangle(
    (x1+x2)/2,
    (y1+y2)/2,
    x2,
    y2,
    (x3+x2)/2,
    (y3+y2)/2,
    reps-1);
    
    drawtriangle(
    (x1+x2)/2,
    (y1+y2)/2,
    (x2+x3)/2,
    (y2+y3)/2,
    x3,
    y3,
    reps-1);
    
        drawtriangle(
    x1,
    y1,
    (x1+x2)/2,
    (y1+y2)/2,
    (x3+x1)/2,
    (y3+y1)/2,
    reps-1);
    

  }
}
