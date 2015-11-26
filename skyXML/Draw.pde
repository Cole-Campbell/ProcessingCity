import ddf.minim.*;
Minim minim;
AudioInput in;

Sky sky;
buildingLight light;

PImage bLight;
PImage buildings;

void settings() {
  size(500, 500);
  minim = new Minim(this);
  in = minim.getLineIn();
}


void setup() {
  bLight = loadImage("Lights.png");
  buildings = loadImage("Buildings.png");
  bLight.loadPixels();
  loadPixels();
  light = new buildingLight();
  sky = new Sky();
}


void draw() {
  sky.paint();
  light.paint();
}