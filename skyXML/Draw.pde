Sky sky;
buildingLight light;
Mic wind;
Cloud cloud;

PImage bLight;
PImage buildings;

void settings() {
  size(500, 500);
  wind = new Mic();
}


void setup() {
  bLight = loadImage("Lights.png");
  buildings = loadImage("Buildings.png");
  bLight.loadPixels();
  loadPixels();
  light = new buildingLight();
  sky = new Sky();
  cloud = new Cloud();
  
}


void draw() {
  sky.paint();
  light.paint();
  cloud.paint(0,0);
  println(wind.in.left.level());
}