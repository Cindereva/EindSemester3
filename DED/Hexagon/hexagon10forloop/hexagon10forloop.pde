float theta;
float inCircR = 86.6;
float inCircR2 = 173.2;
float dist = 150;
float r = 100;
float b = 1;
void setup(){
    size(1000,1000);
      background(0,153,153);
branch(100);

 

}
void draw(){

}


void polygon(float x, float y, float radius) {
  float angle = TWO_PI / 6;
    fill(255,255,255,80);
stroke(255);
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
  //rotate(PI/2);
 
//polygon(0,0,300);
 

for(int i=0; i<5; i++){
  //midden 
  polygon(0,0,r);
  
 //links 
   polygon(-150/b,86.2/b,r);
  polygon(-150/b,-86.2/b,r);
  
  //onderboven
  polygon(0, 173.2/b, r);
  polygon(0,-173.2/b, r);
  
  //rechts
  polygon(150/b, 86.6/b, r);
  polygon(150/b, -86.6/b, r);
  
    r = r/3;
    b = b*3;

}
//  Midden
  // polygon(-150/3,86.6/3,100/3);
  //polygon(-150/3,-86.6/3,100/3);
  //polygon(0,0,100/3);
  //polygon(0,173.2/3,100/3);
  //polygon(0,-173.2/3,100/3);
  //polygon(150/3,86.6/3,100/3);
  //polygon(150/3,-86.6/3,100/3);
  
  
  ////boven
  //polygon(-150/3 ,86.6/3-173.2 ,100/3);
  //polygon(-150/3 ,-86.6/3-173.2 ,100/3);
  //polygon(0,0-173.2,100/3);
  //polygon(0,173.2/3-173.2 ,100/3);
  //polygon(0,-173.2/3-173.2 ,100/3);
  //polygon(150/3 ,86.6/3-173.2 ,100/3);
  //polygon(150/3 ,-86.6/3-173.2 ,100/3);
  
  ////linksonder
  //polygon(-150/3-150,86.6/3+86.6,100/3);
  //polygon(-150/3-150,-86.6/3+86.6,100/3);
  //polygon(-150,+86.6,100/3);
  //polygon(0-150,173.2/3+86.6,100/3);
  //polygon(0-150,-173.2/3+86.6,100/3);
  //polygon(150/3-150,86.6/3+86.6,100/3);
  //polygon(150/3-150,-86.6/3+86.6,100/3);
  
  //  //linksboven
  //polygon(-150/3-150, 86.6/3-86.6, 100/3);
  //polygon(-150/3-150, -86.6/3-86.6, 100/3);
  //polygon(-150, -86.6, 100/3);
  //polygon(0-150, 173.2/3-86.6, 100/3);
  //polygon(0-150, -173.2/3-86.6, 100/3);
  //polygon(150/3-150, 86.6/3-86.6, 100/3);
  //polygon(150/3-150, -86.6/3-86.6, 100/3);
  
  
  //  //rechtsboven
  //polygon(-150/3+150, 86.6/3-86.6, 100/3);
  //polygon(-150/3+150, -86.6/3-86.6, 100/3);
  //polygon(150, -86.6, 100/3);
  //polygon(150, 173.2/3-86.6, 100/3);
  //polygon(150, -173.2/3-86.6, 100/3);
  //polygon(150/3+150, 86.6/3-86.6, 100/3);
  //polygon(150/3+150, -86.6/3-86.6, 100/3);
  
  //   //rechtsonder
  //polygon(-150/3+150, 86.6/3+86.6, 100/3);
  //polygon(-150/3+150, -86.6/3+86.6, 100/3);
  //polygon(150, 86.6, 100/3);
  //polygon(150, 173.2/3+86.6, 100/3);
  //polygon(150, -173.2/3+86.6, 100/3);
  //polygon(150/3+150, 86.6/3+86.6, 100/3);
  //polygon(150/3+150, -86.6/3+86.6, 100/3);
  
  //  //boven
  //polygon(-150/3 ,86.6/3+173.2 ,100/3);
  //polygon(-150/3 ,-86.6/3+173.2 ,100/3);
  //polygon(0,173.2,100/3);
  //polygon(0,173.2/3+173.2 ,100/3);
  //polygon(0,-173.2/3+173.2 ,100/3);
  //polygon(150/3 ,86.6/3+173.2 ,100/3);
  //polygon(150/3 ,-86.6/3+173.2 ,100/3);
  
}
