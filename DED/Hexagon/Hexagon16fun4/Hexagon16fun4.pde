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
       100, 4);

 

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
         
         
         
    float w1 = (x1+x2)/3;
    float h1 = (y1+y2)/3;
    float w2 = (x2+x3)/3;
    float h2 = (y2+y3)/3;
    float w3 = (x3+x4)/3;
    float h3 = (y3+y4)/3;
    float w4 = (x4+x5)/3;
    float h4 = (y4+y5)/3;
    float w5 = (x5+x6)/3;
    float h5 = (y5+y6)/3;
    float w6 = (x6+x7)/3;
    float h6 = (y6+y7)/3;
    float w7 = (x7+x1)/3;
    float h7 = (y7+y1)/3;
    float r2 = (r/3);
       
     fractal(w1, h1, w2,h2,w3,h3,w4,h4,w5,h5,w6,h6,w7,h7,r2,n-1);
    
     //fractal(w1-x2, h1+y2, w2-x2,h2+y2,w3-x2,h3+y2,w4-x2,h4+y2,w5-x2,h5+y2,w6-x2,h6+y2,w7-x2,h7+y2,r2,n-1);
     //fractal(w1+x2, h1-y2, w2+x2,h2-y2,w3+x2,h3-y2,w4+x2,h4-y2,w5+x2,h5-y2,w6+x2,h6-y2,w7+x2,h7-y2,r2,n-1);
     //fractal(w1+x2, h1+y2, w2+x2,h2+y2,w3+x2,h3+y2,w4+x2,h4+y2,w5+x2,h5+y2,w6+x2,h6+y2,w7+x2,h7+y2,r2,n-1);
     //fractal(w1, h1+y4, w2,h2+y4,w3,h3+y4,w4,h4+y4,w5,h5+y4,w6,h6+y4,w7,h7+y4,r2,n-1);
      
      // 1
      // 0,0, 
      // 2
      //-150, 86.2, 
      // 3
      //-150,-86.2, 
      // 4
      // 0,173.2, 
      // 5
      // 0, -173.2, 
      // 6
      // 150, 86.6, 
      // 7
      // 150,-86.6, 
      // 100, 5);
          
    }
}
  
