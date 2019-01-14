float theta;
void setup(){
    size(540,675);
}


void draw(){
background(102);

branch(20);
delay(500);

}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void branch(float len){
  //Remove these and translate to get same result
  //    line(200,height,200, height- len);
    line(0,0,0,- len);
    translate(0,- len);
   
    if(len > 4)    {
      pushMatrix();
      rotate(theta);
       polygon(random(100,440), random(100,575), random(20,100), 8);
      popMatrix();
      branch(len*0.5);
     
    }
}
