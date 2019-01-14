float theta;
float inCircR = 86.6;
float inCircR2 = 173.2;
float dist = 150;
float r = 100;
float b = 1;
float c;
void setup(){
    size(1000,1000);
      background(0,153,153);
        translate(width/2,height/2);
callpol(3);
}
 void callpol(float c){       
fractal(0,0,100/c, 3);
fractal(-150/c, 86.2/c,100,2);
fractal(-150/c,-86.2/c ,100, 4);
fractal(0,173.2/c, 100, 5);
fractal( 0, -173.2/c, 100, 1);
fractal(150/c, 86.6/c,100, 1);
fractal(150/c,-86.6/c, 100, 4);

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

void fractal(float x, float y, float r, float n){
      
      if(n == 1){
 
         polygon(x,y,r);
  
      }
      else{
      
      float r2 = (r/3);

     fractal(x,y,r2,n-1);
     fractal(x+r/2,y+r/3.48,r2,n-1);
     fractal(x-r/2,y+r/3.48,r2,n-1);
     fractal(x+r/2,y-r/3.48,r2,n-1);
     fractal(x-r/2,y-r/3.48,r2,n-1);
     fractal(x,y+r/1.74,r2,n-1);
     fractal(x,y-r/1.74,r2,n-1);
  
  
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
  
