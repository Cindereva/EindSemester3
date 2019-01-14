float theta;
void setup(){
    size(540,675);
    background(0,153,153);

    branch(100);

}
void draw(){

}


void polygon(float x, float y, float radius) {
  float angle = TWO_PI / 6;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {

    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void branch(float len){
  fill(0,200,200);
  strokeWeight(1);
  stroke(255,255,255,200);
  translate(width/2,height/2);
  polygon(-153,-88,100);
  polygon(-153,88,100);
  polygon(0,0,100);
  polygon(0,175,100);
 polygon(0,-175,100);
   polygon(153,-88,100);
  polygon(153,88,100);
}


//void branch(float len){
  
//  translate(width/2,height/2);
//  polygon(-152,-87.5,100);
// // polygon(-147,75,100);
//  polygon(0,0,100);

// //  polygon(3,-12.5,100);
//}
