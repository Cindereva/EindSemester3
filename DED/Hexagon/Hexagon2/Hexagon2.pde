float theta;
void setup(){
  background(0);
    size(540,675);
    branch(100);

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

   
    if(len > 4)    {
      pushMatrix();
      fill(random(90,255),random(90,255),random(90,255));
      noStroke();
       polygon(random(100,440), random(100,575), random(20,100), 8);
      popMatrix();
      branch(len*0.95);
     
    }
}
