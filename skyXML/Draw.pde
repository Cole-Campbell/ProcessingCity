import ddf.minim.*;
Sky sky;
buildingLight light;
Mic wind;
Cloud cloud;
StatusBar status;

PImage tower;
PImage buildings;

void settings() {
  size(1200, 850);
  wind = new Mic();
}


void setup() {
  Minim minim;
  minim = new Minim(this);
  AudioPlayer player;
  player = minim.loadFile("takk.mp3");
  player.play();
  player.loop();
  tower = loadImage("tower.png");
  buildings = loadImage("Buildings.png");
  loadPixels();
  light = new buildingLight();
  sky = new Sky();
  cloud = new Cloud();
  status = new StatusBar();
  wind = new Mic();
}


void draw() {
  sky.paint();
  light.paint();
  cloud.paint(0, 0);
  status.paint();
  wind.paint();
}