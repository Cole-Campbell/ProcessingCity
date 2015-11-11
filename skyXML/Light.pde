import lmu.*;
class Light{

PImage light;
PImage buildings;
int left;
float multi;
int r = 255;
int g = 250;
int b = 85;


void setup(){
 light = loadImage("Lights.png");
 buildings = loadImage("Buildings.png");
 light.loadPixels();
 loadPixels();
 
  // initial sensor values
  int[] lmu_start = LmuTracker.getLMUArray();
  left  = lmu_start[0];
  multi = 255.0 / (left);
}

public void paint(int xPos, int yPos){

 // get current sensor values
  int[] vals = LmuTracker.getLMUArray();
  int li = (int)(vals[0] * multi)%254;
 println(li);
  background(255);
 
  // left sensor
fill(250-li,244-li,162-li);

rect (0,240,140,250);
rect (140,320,105,180);
rect (250,217,130,270);
rect (380,270,117,230);

noStroke();
image(buildings,0,0);

}
}