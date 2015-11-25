import lmu.*;

class buildingLight {
  
  float multi;
  int left;
  int r = 255;
  int g = 250;
  int b = 85;
  buildingLight() {
    

    // initial sensor values
    int[] lmu_start = LmuTracker.getLMUArray();
    left  = lmu_start[0];
    multi = 255.0 / (left);
  }

  void paint() {
    // get current sensor values
    int[] vals = LmuTracker.getLMUArray();
    int li = (int)(vals[0] * multi)%254;

    // left sensor
    fill(250-li, 244-li, 162-li);

    rect (0, 240, 140, 250);
    rect (140, 320, 105, 180);
    rect (250, 217, 130, 270);
    rect (380, 270, 117, 230);

    noStroke();
    image(buildings, 0, 0);

  }
}