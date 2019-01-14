float theta;
void setup(){
    size(540,675);
  

}
void draw(){
  branch(100);
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
  rotate(60/360);
  //polygon(0,0,250,6);
  
  for(int i =200; 1 < i; i--){
    i--;
    polygon(0,0,i);
  }
}
