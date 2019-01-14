float theta;
void setup(){
    size(540,675);

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
  
  translate(width/2,height/2);
  polygon(-100,-100,100);
  polygon(-100,75,100);
   polygon(-100,75,100);
 
}
