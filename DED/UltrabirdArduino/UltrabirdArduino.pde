import processing.serial.*;

Serial mySerial;

String myString = null;
int nl = 10;
float myVal;
PImage flap;
PImage bg;



void setup(){
  size(423,750);
  //String myPort = Serial.list()[1];
  mySerial = new Serial(this, "COM3", 9600);
    flap = loadImage("flap.png");
     bg = loadImage("backgrond.png");
     
}

void draw() {

  
  while (mySerial.available() > 0){
    myString = mySerial.readStringUntil(nl);
    
    if (myString != null) {
      background(bg);

      myVal = float(myString);
      myVal = myVal/20 * height;
      
      rectMode(CENTER);
       image(flap, width/2, height-(myVal/2)-100, 100, 100);
     
    }
  }
}
