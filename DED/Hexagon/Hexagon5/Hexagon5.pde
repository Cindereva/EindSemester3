float theta;
void setup(){
    size(500,500);
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
 
  translate(width/2,height/2);
  rotate(PI/2);
 fill(255,255,255,80);
  noStroke();
 polygon(0,0,250);
  noFill();
  strokeWeight(25);
  stroke(255,255,255,180);
 polygon(0,0,210);


}
