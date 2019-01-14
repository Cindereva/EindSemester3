float theta;
float inCircR = 86.6;
float inCircR2 = 173.2;
float dist = 150;

void setup(){
    size(1000,1000);
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
  //rotate(PI/2);
 fill(255,255,255,80);
stroke(255);
//polygon(0,0,300);
 
//// de Grote
////midden 
//  polygon(0,0,100);
  
// //links 
//   polygon(-150,86.6,100);
//  polygon(-150,-86.6,100);
  
//  //onderboven
//  polygon(0, 173.2, 100);
//  polygon(0,-173.2, 100);
  
//  //rechts
//  polygon(150, 86.6, 100);
//  polygon(150, -86.6, 100);
  
//  Midden
   polygon(-150/3,86.6/3,100/3);
  polygon(-150/3,-86.6/3,100/3);
  polygon(0,0,100/3);
  polygon(0,173.2/3,100/3);
  polygon(0,-173.2/3,100/3);
  polygon(150/3,86.6/3,100/3);
  polygon(150/3,-86.6/3,100/3);
  
  
  //boven
  polygon(-150/3 ,86.6/3-173.2 ,100/3);
  polygon(-150/3 ,-86.6/3-173.2 ,100/3);
  polygon(0,0-173.2,100/3);
  polygon(0,173.2/3-173.2 ,100/3);
  polygon(0,-173.2/3-173.2 ,100/3);
  polygon(150/3 ,86.6/3-173.2 ,100/3);
  polygon(150/3 ,-86.6/3-173.2 ,100/3);
  
  //linksonder
  polygon(-150/3-150,86.6/3+86.6,100/3);
  polygon(-150/3-150,-86.6/3+86.6,100/3);
  polygon(-150,+86.6,100/3);
  polygon(0-150,173.2/3+86.6,100/3);
  polygon(0-150,-173.2/3+86.6,100/3);
  polygon(150/3-150,86.6/3+86.6,100/3);
  polygon(150/3-150,-86.6/3+86.6,100/3);
  
    //linksboven
  polygon(-150/3-150, 86.6/3-86.6, 100/3);
  polygon(-150/3-150, -86.6/3-86.6, 100/3);
  polygon(-150, -86.6, 100/3);
  polygon(0-150, 173.2/3-86.6, 100/3);
  polygon(0-150, -173.2/3-86.6, 100/3);
  polygon(150/3-150, 86.6/3-86.6, 100/3);
  polygon(150/3-150, -86.6/3-86.6, 100/3);
  
  
    //rechtsboven
  polygon(-150/3+150, 86.6/3-86.6, 100/3);
  polygon(-150/3+150, -86.6/3-86.6, 100/3);
  polygon(150, -86.6, 100/3);
  polygon(150, 173.2/3-86.6, 100/3);
  polygon(150, -173.2/3-86.6, 100/3);
  polygon(150/3+150, 86.6/3-86.6, 100/3);
  polygon(150/3+150, -86.6/3-86.6, 100/3);
  
     //rechtsonder
  polygon(-150/3+150, 86.6/3+86.6, 100/3);
  polygon(-150/3+150, -86.6/3+86.6, 100/3);
  polygon(150, 86.6, 100/3);
  polygon(150, 173.2/3+86.6, 100/3);
  polygon(150, -173.2/3+86.6, 100/3);
  polygon(150/3+150, 86.6/3+86.6, 100/3);
  polygon(150/3+150, -86.6/3+86.6, 100/3);
  
    //boven
  polygon(-150/3 ,86.6/3+173.2 ,100/3);
  polygon(-150/3 ,-86.6/3+173.2 ,100/3);
  polygon(0,173.2,100/3);
  polygon(0,173.2/3+173.2 ,100/3);
  polygon(0,-173.2/3+173.2 ,100/3);
  polygon(150/3 ,86.6/3+173.2 ,100/3);
  polygon(150/3 ,-86.6/3+173.2 ,100/3);
  
}
