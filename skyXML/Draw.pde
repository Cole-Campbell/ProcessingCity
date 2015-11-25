Sky sky;
buildingLight light;

PImage bLight;
PImage buildings;

void settings() {
  size(500, 500);
}

void setup(){
  bLight = loadImage("Lights.png");
  buildings = loadImage("Buildings.png");
  bLight.loadPixels();
  loadPixels();
  light = new buildingLight();
  sky = new Sky();
  println(bgColor);
}


void draw() {
  background (bgColor);
  light.paint();
}