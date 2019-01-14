size(600,400);
background(0);

PFont f = createFont("Georgia", 64);

String s = "To be or not to be.";

textFont(f);
textSize(64);
text(s,10,100);


float x = 10;
for(int i = 0; i < s.length(); i++){
  char c = s.charAt(i);
  fill(random(255));
  textSize(random(12,128));
 text(c,x,300); 
 x= x+ textWidth(c);
}
