//Imports libraries and classes.
import ddf.minim.*;
Sky sky;
buildingLight light;
Mic wind;
Cloud cloud;
StatusBar status;

//Image variables are created
PImage tower;
PImage buildings;

//Settings, giving the size of the canvas
void settings() {
  
  size(1200, 850);
  wind = new Mic();
  
}

//Calls the many different attributes used for this project, declaring the classes as part of the project so they may be used down below.
//Uses Minim here to pull in background music and play on loop. Loads in images to image variables.
void setup() {
  
  Minim minim;
  minim = new Minim(this);
  AudioPlayer player;
  AudioPlayer windPlayer;
  player = minim.loadFile("takk.mp3");
  windPlayer = minim.loadFile("wind.mp3");
  windPlayer.play(); 
  windPlayer.loop();
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

//Draws the different parts of the project created from the other classes
void draw() {
  
  sky.paint();
  light.paint();
  cloud.paint(0, 0);
  status.paint();
  wind.paint();
  
}