float theta;
float inCircR = 86.6;
float inCircR2 = 173.2;
float dist = 150;
float r = 100;
float b = 1;
void setup(){
    size(1000,1000);
      background(0,153,153);
        translate(width/2,height/2);
fractal(0,0, 
      -150, 86.2, 
      -150,-86.2, 
       0,173.2, 
       0, -173.2, 
       150, 86.6, 
       150,-86.6, 
       300, 5);

 

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

void fractal(float x1, float y1,float x2, float y2,float x3, float y3,float x4, float y4,float x5, float y5,float x6, float y6, float x7, float y7,float r, float n){
        
      if(n > 1){
         polygon(x1,y1,r);
         polygon(x2,y2,r);
         polygon(x3,y3,r);
         polygon(x4,y4,r);
         polygon(x5,y5,r);
         polygon(x6,y6,r);
          polygon(x7,y7,r);
         
         
         
  //  float x1 = (x)/3;
  //  float y1 = (y)/3;
  //  float r1 = (r)/3;

  //fractal(x1,y1,r1,n-1);

      
    }
}
  
 //  //midden 
 // polygon(0,0,r);
  
 ////links 
 // polygon(-150/b,86.2/b,r);
 // polygon(-150/b,-86.2/b,r);
  
 // //onderboven
 // polygon(0, 173.2/b, r);
 // polygon(0,-173.2/b, r);
  
 // //rechts
 // polygon(150/b, 86.6/b, r);
 // polygon(150/b, -86.6/b, r);
  
 //   r = r/3;
 //   b = b*3;


//void triangleSier(float x1, float y1, float x2, float y2, float x3, float y3, int n) {
//  // 'n' is the number of iteration.
//  if ( n > 0 ) {
//    fill(0, 128/n, 128);
//    triangle(x1, y1, x2, y2, x3, y3);
    
//    // Calculating the midpoints of all segments.
//    float h1 = (x1+x2)/2.0;
//    float w1 = (y1+y2)/2.0;
//    float h2 = (x2+x3)/2.0;
//    float w2 = (y2+y3)/2.0;
//    float h3 = (x3+x1)/2.0;
//    float w3 = (y3+y1)/2.0;
    
//    // Trace the triangle with the new coordinates.
//    triangleSier(x1, y1, h1, w1, h3, w3, n-1);
//    triangleSier(h1, w1, x2, y2, h2, w2, n-1);
//    triangleSier(h3, w3, h2, w2, x3, y3, n-1);
//  }
//}
